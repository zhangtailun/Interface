local candy = LibStub('LibCandyBar-3.0')
local media = LibStub('LibSharedMedia-3.0')
local L = LibStub('AceLocale-3.0'):GetLocale('IcyDemonsIndicator')
local IDI = IcyDemonsIndicator


local UnitGUID = UnitGUID
local UnitClass = UnitClass
local GetSpecialization = GetSpecialization
local GetSpellTexture = GetSpellTexture
local UnitSpellHaste = UnitSpellHaste
local CreateFrame = CreateFrame
local InCombatLockdown = InCombatLockdown
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo


local IcyDemonsIndicatorDefaultSettings = {
    -- Addon Related
    version = IcyDemonsIndicator.version,
    -- Pool Related
    poolPoint = 'TOPLEFT',
    poolRelativeTo = 'UIParent',
    poolRelativePoint = 'TOPLEFT',
    offsetX = 0,
    offsetY = -80,
    -- Bar Related
    barPoint = 'TOPLEFT',
    barRelativeTo = 'IcyDemonsIndicatorBarPoolFrame',
    barRelativePoint = 'TOPLEFT',
    barTexture = 'Blizzard',
    barWidth = 200,
    barHeight = 20,
    barColor = {r=1, g=0, b=0, a=1},
    barGrow = -1,  -- -1 for growing down, 1 for growing up
    barMaxCount = 20,
    -- Demons Related
    trackedDemons = {
        ['Creature-55659'] = {
            icon=GetSpellTexture(205145), 
            base_duration=10,
            name='imp',
            display_name=L['Wild Imps'],
        },
        ['Creature-143622'] = {  -- imps from Inner Demons(talent)
            icon=GetSpellTexture(205145), 
            base_duration=10,
            name='imp',
            display_name=L['Wild Imps'],
        },
        -- TODO: other demons from Inner Demons(talent)
        ['Vehicle-98035'] = {
            icon=GetSpellTexture(104316), 
            duration=12,
            name='dreadstalker',
            display_name=L['Dreadstalkers'],
        },
        ['Creature-135002'] = {
            icon=GetSpellTexture(265187), 
            duration=15,
            name='tyrant',
            display_name=L['Demonic Tyrant'],
        },
        ['Creature-17252'] = {
            icon=GetSpellTexture(111898), 
            duration=15,
            name='grimoire',
            display_name=L['Grimoire: Felguard']
        },
        ['Creature-135816'] = {
            icon=GetSpellTexture(264119), 
            duration=15,
            name='vilefiend',
            display_name=L['Vilefiend']
        },
    }
}


function IcyDemonsIndicator:OnEnable()
    self:RegisterEvent('PLAYER_ENTERING_WORLD', 'UpdateStatus')
    self:RegisterEvent('ACTIVE_TALENT_GROUP_CHANGED', 'UpdateStatus')  -- When specialization changed
    self:RegisterEvent('PLAYER_EQUIPMENT_CHANGED', 'UpdateStatus')  -- When equipment changed, for example, trinkets.
    self:RegisterEvent('PLAYER_REGEN_DISABLED', function() 
        if IcyDemonsIndicatorBarPoolFrame and IcyDemonsIndicatorBarPoolFrame:IsShown() then 
            self:LockAllAnchors() 
        end
    end)
end


function IcyDemonsIndicator:OnDisable()
    self:UnRegisterAllEvents()
end


function IcyDemonsIndicator:OnInitialize()
    -- Initialize settings
    if IcyDemonsIndicatorSettings == nil or type(IcyDemonsIndicatorSettings) ~= 'table' then
        reset = true
    elseif IcyDemonsIndicatorSettings.version == nil or IcyDemonsIndicatorSettings.version.major < IcyDemonsIndicatorDefaultSettings.version.major then
        DEFAULT_CHAT_FRAME:AddMessage(L['Outdated IcyDemonsIndicator found, settings will be RESET.'])
        reset = true
    end

    if reset then
        IcyDemonsIndicatorSettings = {}
    end

    for k, v in pairs(IcyDemonsIndicatorDefaultSettings) do
        if IcyDemonsIndicatorSettings[k] == nil then
            IcyDemonsIndicatorSettings[k] = v
        end
    end
end


function IcyDemonsIndicator:GetNewDimensions()
    IcyDemonsIndicatorSettings.poolPoint, IcyDemonsIndicatorSettings.poolRelativeTo, IcyDemonsIndicatorSettings.poolRelativePoint, IcyDemonsIndicatorSettings.offsetX, IcyDemonsIndicatorSettings.offsetY = IcyDemonsIndicatorBarPoolFrame:GetPoint()
end


function IcyDemonsIndicator:UpdateBarPoolPoints()
    local S = IcyDemonsIndicatorSettings
    local frame = IcyDemonsIndicatorBarPoolFrame

    frame:SetWidth(S.barWidth)
    frame:SetHeight(S.barMaxCount * S.barHeight)
    frame:SetPoint(S.poolPoint, S.poolRelativeTo, S.poolRelativePoint, S.offsetX, S.offsetY)
end


function IcyDemonsIndicator:UnlockAllAnchors()
    IcyDemonsIndicatorBarPoolFrame:Show()
    IcyDemonsIndicatorBarPoolFrame:EnableMouse(true)
end


function IcyDemonsIndicator:LockAllAnchors()
    IcyDemonsIndicatorBarPoolFrame:Hide()
    IcyDemonsIndicatorBarPoolFrame:EnableMouse(false)
    IcyDemonsIndicator:GetNewDimensions()
    IcyDemonsIndicator:UpdateBarPoolPoints()
end


function IcyDemonsIndicator:UpdateStatus()
    local classDisplayName, class, classID = UnitClass('player')
    local specialization = GetSpecialization()
    local isDemonology = (classID == 9 and specialization == 2)

    if isDemonology then
        self:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED')
        
        -- Initialize bar frame
        if IcyDemonsIndicatorBarPoolFrame == nil then
            local frameBarPool = CreateFrame('Frame', 'IcyDemonsIndicatorBarPoolFrame', UIParent)
            frameBarPool:SetMovable(true)
            frameBarPool:RegisterForDrag('LeftButton')
            frameBarPool:SetScript('OnDragStart', frameBarPool.StartMoving)
            frameBarPool:SetScript('OnDragStop', frameBarPool.StopMovingOrSizing)
            self.UpdateBarPoolPoints()
            frameBarPool:Hide()
    
            local texture = IcyDemonsIndicatorBarPoolFrame:CreateTexture('ARTWORK')
            texture:SetColorTexture(0, 0, 0)
            texture:SetAlpha(0.5)
            texture:SetAllPoints()
        end
        
        -- Initialize bar pool
        self.barPool = {}
        self.demonicTyrantUp = false
    
        -- Initialize player
        self.playerGUID = UnitGUID('player')
    else
        self:UnregisterEvent('COMBAT_LOG_EVENT_UNFILTERED')
    end
end


function IcyDemonsIndicator:COMBAT_LOG_EVENT_UNFILTERED(event, ...)
    --[[
        Main Handler.

        For demon commander, SPELL_AURA_APPLIED fires first, then SPELL_CAST_SUCCESS, SPELL_SUMMON.
        When handling SPELL_SUMMON, we should check demon commander individually.
    ]]
    local timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId = CombatLogGetCurrentEventInfo()
    if sourceGUID ~= self.playerGUID then
        return
    end

    if event == 'SPELL_SUMMON' then
        -- Handle: Hand of Gul'dan, Call Dreadstalkers, Summon Vilefiend, Grimoire: Felguard
        local _, _, unitType, zero, serverID, instanceID, zoneID, ID, spawnUID = destGUID:find('(%S+)-(%d+)-(%d+)-(%d+)-(%d+)-(%d+)-(%S+)')
        local summonedDemonID = unitType..'-'..ID  -- something I created
        
        local db = IcyDemonsIndicatorSettings.trackedDemons[summonedDemonID]
        if db ~= nil then
            local duration = 0
            if db.base_duration ~= nil then  -- snapshot
                if InCombatLockdown() then
                    local haste = UnitSpellHaste('player')
                    duration = db.base_duration / (1 + haste / 100)
                else
                    duration = db.base_duration * 2
                end
            else
                duration = db.duration
            end
            local bar = self:CreateBar(db.icon, duration, db.name, destGUID)

            table.insert(self.barPool, bar)
            self:SortAllBars()
            bar:Start()
            if self.demonicTyrantUp and db.name ~= 'tyrant' then
                bar:Pause()
            end
        end
    elseif event == 'SPELL_CAST_SUCCESS' and spellId == 196277 then
        -- Handle: Implosion
        for _, bar in pairs(self.barPool) do
            if bar:Get('name') == 'imp' then
                bar:Stop()
            end
        end
        -- TODO: cant remove all bars in one iteration, I dont know why
        for _, bar in pairs(self.barPool) do
            if bar:Get('name') == 'imp' then
                bar:Stop()
            end
        end
    elseif event == 'SPELL_CAST_SUCCESS' and spellId == 264130 then
        -- Handle: Power Siphon
        -- TODO: enhance logic from https://github.com/simulationcraft/simc/blob/95ef0fb19fe79d396fc3cd0966871e72c63fdf3c/engine/class_modules/warlock/sc_warlock_demonology.cpp#L651
        local count = 0
        for _, bar in pairs(self.barPool) do
            if bar:Get('name') == 'imp' then
                bar:Stop()
                count = count + 1
            end
            if count == 2 then
                break
            end
        end
    elseif event == 'SPELL_AURA_APPLIED' and spellId == 265273 then
        -- Handle: Demonic Tyrant Up
        self.demonicTyrantUp = true
        for _, bar in pairs(self.barPool) do
            if bar:Get('name') ~= 'tyrant' then
                bar:Pause()
            end
        end
    elseif event == 'SPELL_AURA_REMOVED' and spellId == 265273 then
        -- Handle: Demonic Tyrant Down
        self.demonicTyrantUp = false
        for _, bar in pairs(self.barPool) do
            bar:Resume()
        end
    end
end


function IcyDemonsIndicator:CreateBar(icon, duration, name, GUID)
    --[[
        Create new demon bar.

        Parameters
        --------
        icon: object
        duration: float
        name: string
            Used to determine demon type.
        GUID: string
            Used as UNIQUE ID.
    ]]
    local texture = media:Fetch('statusbar', IcyDemonsIndicatorSettings.barTexture)
    local bar = candy:New(texture, IcyDemonsIndicatorSettings.barWidth, IcyDemonsIndicatorSettings.barHeight)
    local barCount = #self.barPool

    bar:SetIcon(icon)
    bar:SetDuration(duration)
    bar:SetPoint(IcyDemonsIndicatorSettings.barPoint, IcyDemonsIndicatorSettings.barRelativeTo, IcyDemonsIndicatorSettings.barRelativePoint, 0, barCount*IcyDemonsIndicatorSettings.barHeight*IcyDemonsIndicatorSettings.barGrow)
    bar:SetColor(IcyDemonsIndicatorSettings.barColor.r, IcyDemonsIndicatorSettings.barColor.g, IcyDemonsIndicatorSettings.barColor.b, IcyDemonsIndicatorSettings.barColor.a)
    bar.updater:SetScript(
        'OnStop', 
        function() 
            self:RemoveBar(bar) 
        end
    )
    bar:Set('name', name)
    bar:Set('GUID', GUID)

    return bar
end


function IcyDemonsIndicator:RemoveBar(targetBar)
    for index, bar in pairs(self.barPool) do
        if bar:Get('GUID') == targetBar:Get('GUID') then
            table.remove(self.barPool, index)
            self:SetPointAllBars()
            break
        end
    end
end


function IcyDemonsIndicator:SortAllBars()
    -- theoretically O(nlogn), no need to optimized to O(logn)
    table.sort(
        self.barPool, 
        function(a, b)
            if a:Get('name') == 'tyrant' then
                return true
            elseif b:Get('name') == 'tyrant' then
                return false
            else
                return a.remaining < b.remaining
            end
        end
    )  -- demonic tyrant always first
    self:SetPointAllBars()
end


function IcyDemonsIndicator:SetPointAllBars()
    local currentY = 0
    for _, bar in pairs(self.barPool) do
        bar:ClearAllPoints()
        bar:SetPoint(IcyDemonsIndicatorSettings.barPoint, IcyDemonsIndicatorSettings.barRelativeTo, IcyDemonsIndicatorSettings.barRelativePoint, 0, currentY)
        currentY = currentY + IcyDemonsIndicatorSettings.barHeight*IcyDemonsIndicatorSettings.barGrow
    end
end
