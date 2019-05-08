--[[---------------------------------------------------------------------------
    Addon:  CursorTrail
    File:   CursorTrail.lua
    Desc:   This file contains the core implementation for this addon.
-----------------------------------------------------------------------------]]
              
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Saved (Persistent) Variables                      ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

CursorTrail_PlayerConfig = CursorTrail_PlayerConfig or {}

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Aliases to Globals                                ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local Globals = _G
local assert = _G.assert
local print = _G.print
local CreateFrame = _G.CreateFrame
local floor = _G.floor
local CopyTable = _G.CopyTable
local pairs = _G.pairs
local ipairs = _G.ipairs
local next = _G.next
local DEFAULT_CHAT_FRAME = _G.DEFAULT_CHAT_FRAME
local GetAddOnMetadata = _G.GetAddOnMetadata
local string = _G.string
local tonumber = _G.tonumber
local GetCursorPosition = _G.GetCursorPosition
local IsMouselooking = _G.IsMouselooking
local IsMouseButtonDown = _G.IsMouseButtonDown
local UnitAffectingCombat = _G.UnitAffectingCombat

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Declare Namespace                                 ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local CursorTrail = _G.CursorTrail or {}
if (not _G.CursorTrail) then _G.CursorTrail = CursorTrail end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Remap Global Environment                          ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

setfenv(1, _G.CursorTrail)  -- Everything after this uses our namespace rather than _G.


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Constants                                         ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

kTheTitle = ...  -- (i.e.  "CursorTrail")
kTheVersion = GetAddOnMetadata(kTheTitle, "Version"):match("^([%d.]+)")
kBaseMult = 0.0001  -- A mulitplier applied to base values to reduce the # of decimal positions needed.

kDefaultConfig = 
{
    Version = kTheVersion,
    Path = "spells\\lightningboltivus_missile.mdx", 
    BaseScale = 0.05,
    BaseOfsX = -0.3, BaseOfsY = 4.3,
    BaseStepX = 471, BaseStepY = 471,  -- To increase range, decrease #s.  To decrease range, increase #s.
    UserScale = 1.0,
    UserAlpha = 1.00,  -- (Solid = 1.0.  Transparent = 0.0)
    UserOfsX = 0, UserOfsY = 0,
    UserShowOnlyInCombat = false
}

kDefaultConfig2 = CopyTable(kDefaultConfig)
kDefaultConfig2.UserScale = 1.33
kDefaultConfig2.UserOfsX = 2.8
kDefaultConfig2.UserOfsY = -2.0
kDefaultConfig2.UserAlpha = 0.50

kDefaultConfig3 = CopyTable(kDefaultConfig)
kDefaultConfig3.UserScale = 0.50
kDefaultConfig3.UserOfsX = 2.7
kDefaultConfig3.UserOfsY = -2.2
kDefaultConfig3.UserAlpha = 1.0

kDefaultConfig4 = CopyTable(kDefaultConfig)
kDefaultConfig4.UserScale = 0.10
kDefaultConfig4.UserOfsX = 0
kDefaultConfig4.UserOfsY = 0
kDefaultConfig4.UserAlpha = 1.0

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Switches                                          ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

kAlwaysUseDefaults = false  -- Set to true to prevent using saved settings.

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Variables                                         ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

LButtonDownCount = 0

-- Timer variables:
Timer1 = 0
kTimer1Interval = 0.250 -- seconds

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Helper Functions                                  ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
function PlayerConfig_Save()
    assert(PlayerConfig)
    Globals.CursorTrail_PlayerConfig = PlayerConfig
end

-------------------------------------------------------------------------------
function PlayerConfig_Load()
    PlayerConfig = Globals.CursorTrail_PlayerConfig
    if ( isEmpty(PlayerConfig) 
        or PlayerConfig.Version == nil
        ----or PlayerConfig.Version ~= kTheVersion
       ) then
        PlayerConfig_SetDefaults()
    end
    
    ----HandleToolSwitches("test1")  -- EXPERIMENT
end

-------------------------------------------------------------------------------
function isEmpty(var)  -- Returns true if the variable is nil, or is an empty table {}.
    if (var == nil or next(var) == nil) then return true else return false end
end

-------------------------------------------------------------------------------
function setGameFrame()
    local w1, h1 = Globals.WorldFrame:GetSize()
    local scale1 = Globals.WorldFrame:GetEffectiveScale()
    w1, h1 = floor(w1*scale1), floor(h1*scale1)

    local w2, h2 = Globals.UIParent:GetSize()
    local scale2 = Globals.UIParent:GetEffectiveScale()
    w2, h2 = floor(w2*scale2), floor(h2*scale2)

    if (w1 ~= w2 or h1 ~= h2) then 
        -- Use UIParent to be compatible with addons that change game's view port size.
        kGameFrame = Globals.UIParent
        ----print(kTheTitle.." using UIParent.")
    else
        -- Use WorldFrame so fullscreen world map doesn't break this addon.
        kGameFrame = Globals.WorldFrame  
        ----print(kTheTitle.." using WorldFrame.")
    end
end
setGameFrame() -- Sets kGameFrame.
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - --
function getScreenSize()        return kGameFrame:GetSize()           end
function getScreenScale()       return kGameFrame:GetEffectiveScale() end
function getScreenScaledSize()
    local uiScale = getScreenScale()
    local w, h =  getScreenSize()
    w = w * uiScale
    h = h * uiScale
    local midX = w / 2
    local midY = h / 2
    local hypotenuse = (w^2 + h^2) ^ 0.5
    return w, h, midX, midY, uiScale, hypotenuse
end


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                    Register for Slash Commands                          ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
Globals.SLASH_CursorTrail1 = "/"..kTheTitle
Globals.SLASH_CursorTrail2 = "/ct"
Globals.SlashCmdList["CursorTrail"] = function (params)
    local usageMsg = kTheTitle.." "..kTheVersion.." Commands:\n"
                    .. "  /ct reload - Reloads the current cursor settings.\n"
                    .. "  /ct reset - Reset cursor to original settings.\n"
                    .. "  /ct combat - Toggles the 'show only in combat' mode.\n"
                    ----.. "  /ct screen - Print screen info in chat window.\n"
                    ----.. "  /ct camera - Print camera info in chat window.\n"
                    ----.. "  /ct config - Print configuration info in chat window.\n"
                    ----.. "  /ct model - Print model info in chat window.\n"
                    ----.. "  /ct cal - Calibrate cursor effect to your mouse.\n"
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (params == nil or params == "") then
        if OptionsFrame:IsShown() then OptionsFrame:Hide() else OptionsFrame:Show() end
        ----print(usageMsg)
        return 
    end
    
    params = string.lower(params)
    paramAsNum = tonumber(params)
    
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (params == "help" or params == "?") then
        print(usageMsg)
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (params == "reset") then
        PlayerConfig_SetDefaults()
        CursorModel_Load()
        print(kTheTitle.." reset to original settings.")
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (params == "reload") then
        CursorModel_Load()
        print(kTheTitle.." settings reloaded.")
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (params == "combat") then
        if (PlayerConfig.UserShowOnlyInCombat == true) then
            PlayerConfig.UserShowOnlyInCombat = false
            print(kTheTitle.." mode = Always Show")
        else
            PlayerConfig.UserShowOnlyInCombat = true
            print(kTheTitle.." mode = Show Only in Combat")
        end
        PlayerConfig_Save()
        CursorModel_Load(PlayerConfig)
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (HandleToolSwitches(params) ~= true) then
        print(kTheTitle..": Invalid slash command ("..params..").")
    end
    -- - - - - - - - - - - - - - - - - - - - - - - - - - -
end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Event Handlers                                    ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local EventFrame = CreateFrame("Frame")

-------------------------------------------------------------------------------
EventFrame:SetScript("OnEvent", function(self, event, ...)
	-- This calls a method named after the event, passing in all the relevant args.
    -- Example:  MyAddon.frame:RegisterEvent("XYZ") calls function MyAddon.frame:XYZ()
    --           with arguments named arg1, arg2, etc.
	self[event](self, ...)
end)

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("VARIABLES_LOADED")
function       EventFrame:VARIABLES_LOADED()
    print("|c7f7f7fff".. kTheTitle .." ".. kTheVersion .." loaded.  For options, type /ct or /CursorTrail.|r") -- Color format = xRGB.
    Addon_Initialize()
end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
function       EventFrame:PLAYER_ENTERING_WORLD()
    CursorModel_Load()
end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("UI_SCALE_CHANGED")
function       EventFrame:UI_SCALE_CHANGED()
    ScreenW, ScreenH, ScreenMidX, ScreenMidY, ScreenScale, ScreenHypotenuse = getScreenScaledSize()
    if CursorModel then
        -- Reload the cursor model to apply the new UI scale.
        CursorModel_Load() 
    end
end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("PLAYER_LOGOUT")
function       EventFrame:PLAYER_LOGOUT()
    PlayerConfig_Save()
end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("CINEMATIC_START")
function       EventFrame:CINEMATIC_START() CursorModel_Hide() end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("CINEMATIC_STOP")
function       EventFrame:CINEMATIC_STOP() CursorModel_Show() end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("PLAYER_REGEN_DISABLED")  -- Combat started.
function       EventFrame:PLAYER_REGEN_DISABLED() 
    if (PlayerConfig.UserShowOnlyInCombat == true) then CursorModel_Show() end
end

-------------------------------------------------------------------------------
EventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")  -- Combat ended.
function       EventFrame:PLAYER_REGEN_ENABLED()  
    if (PlayerConfig.UserShowOnlyInCombat == true) then CursorModel_Hide() end
end

-------------------------------------------------------------------------------
EventFrame:SetScript("OnUpdate", function(self, elapsedSeconds)
    Timer1 = Timer1 + elapsedSeconds
    if (not CursorModel) then return end

    local cursorX, cursorY = GetCursorPosition()
    if (cursorX ~= PreviousX or cursorY ~= PreviousY) then
        -- Cursor position changed.  Keep model position in sync with it.
        PreviousX, PreviousY = cursorX, cursorY

        if (Calibrating ~= true) then
            ----cursorX, cursorY = Unrotate(cursorX, cursorY)  -- EXPERIMENT
            
            local modelX = ((cursorX - ScreenMidX) / CursorModel.StepX) + CursorModel.OfsX
            local modelY = ((cursorY - ScreenMidY) / CursorModel.StepY) + CursorModel.OfsY
            CursorModel:SetPosition(0, modelX, modelY)
        end
    end
    
    -- Hide cursor effect during "mouse look" mode.
    if (Calibrating == true) then return end
    if (Timer1 >= kTimer1Interval) then
        Timer1 = 0

        if IsMouseButtonDown("LeftButton") then
            LButtonDownCount = LButtonDownCount + 1
        else
            LButtonDownCount = 0
        end
        
        local bHide = (IsMouselooking() or (IsMouseButtonDown("LeftButton") and LButtonDownCount > 1))
        if bHide then
            if (CursorModel.IsHidden ~= true) then CursorModel_Hide() end
        else
            if (CursorModel.IsHidden == true) then CursorModel_Show() end
        end
    end    
end)


--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                            Hooks                                        ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
-- Hide during movies.
Globals.MovieFrame:HookScript("OnShow", function() CursorModel_Hide() end)
Globals.MovieFrame:HookScript("OnHide", function() CursorModel_Show() end)

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                            Functions                                    ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
function Addon_Initialize()
    -- Initialize persistent variables.
    if (kAlwaysUseDefaults == true) then
        PlayerConfig_SetDefaults()
    elseif (not PlayerConfig) then 
        PlayerConfig_Load() 
    end

    CursorModel_Load()
end

-------------------------------------------------------------------------------
function PlayerConfig_SetDefaults()
    PlayerConfig = {}  -- Must clear all existing fields first!
    PlayerConfig = CopyTable(kDefaultConfig)
    PlayerConfig_Save()
end

-------------------------------------------------------------------------------
function CursorModel_Init()
    if CursorModel then
        CursorModel:ClearModel()
        CursorModel:SetScale(1)  -- Very important!
        CursorModel:SetPosition(0, 0, 0)  -- Very Important!
        CursorModel:SetAlpha(1.0)

        CursorModel.Config = nil
        CursorModel.OfsX = nil
        CursorModel.OfsY = nil
        CursorModel.StepX = nil
        CursorModel.StepY = nil
        CursorModel.IsHidden = nil
    end        
end

-------------------------------------------------------------------------------
function CursorModel_Load(config)
    -- Handle nil parameter.
    if (not config) then 
        if (not PlayerConfig) then PlayerConfig_Load() end
        config = PlayerConfig 
    end
    config.UserScale = config.UserScale or 1

    if not CursorModel then
        CursorModel = CreateFrame("PlayerModel", nil, kGameFrame)
        CursorModel:SetAllPoints()
        CursorModel:SetFrameStrata("TOOLTIP")
        ----CursorModel:SetFrameLevel(128)
    end

    CursorModel_Init()
    CursorModel:SetModel(config.Path)
    CursorModel:SetCustomCamera(1)  -- Very important! (CursorModel:SetCamera(1) doesn't work here.)
    
    CursorModel.Config = CopyTable(config)
    CursorModel_ApplyUserSettings(config.UserScale, config.UserOfsX, config.UserOfsY, config.UserAlpha)
    CursorModel_Show()
end

-------------------------------------------------------------------------------
function CursorModel_ApplyUserSettings(userScale, userOfsX, userOfsY, userAlpha)
    ----print("userScale="..(userScale or "NIL")..", userOfs=("..(userOfsX or "NIL")..", "..(userOfsY or "NIL")..")")
    local config = CursorModel.Config
    assert(config)

    if (userScale == nil or userScale <= 0) then 
        userScale = PlayerConfig.UserScale
    end
    userOfsX = userOfsX or PlayerConfig.UserOfsX
    userOfsY = userOfsY or PlayerConfig.UserOfsY
    if (userAlpha == nil or userAlpha <= 0) then
        userAlpha = PlayerConfig.UserAlpha or 1.0
    end

    -- Compute step size and offset.
    local finalScale = userScale * config.BaseScale
    CursorModel:SetScale(finalScale)
    CursorModel.StepX = config.BaseStepX * kBaseMult * finalScale * ScreenHypotenuse
    CursorModel.StepY = config.BaseStepY * kBaseMult * finalScale * ScreenHypotenuse

    CursorModel.OfsX = ((config.BaseOfsX * kBaseMult * ScreenHypotenuse) + userOfsX) / userScale
    CursorModel.OfsY = ((config.BaseOfsY * kBaseMult * ScreenHypotenuse) + userOfsY) / userScale

    CursorModel:SetAlpha(userAlpha)

    PreviousX = nil  -- Forces model to refresh during the next OnUpdate().
end

-------------------------------------------------------------------------------
function CursorModel_Show(bForceShow)
    if (bForceShow ~= true
        and PlayerConfig.UserShowOnlyInCombat == true
        and not UnitAffectingCombat("player")
       ) then
        -- Player not in combat, so don't show the cursor.  (Only show it during combat.)
        return CursorModel_Hide()  
    end

    -- Note: The normal Show() and Hide() don't work right (reason unknown).
    if (CursorModel and CursorModel.IsHidden ~= false) then
        local alpha = CursorModel.Config.UserAlpha or 1.0
        CursorModel:SetAlpha(alpha)
        CursorModel.IsHidden = false
    end
end

-------------------------------------------------------------------------------
function CursorModel_Hide()
    -- Note: The normal Show() and Hide() don't work right (reason unknown).
    if (CursorModel and CursorModel.IsHidden ~= true) then
        CursorModel:SetAlpha(0)
        CursorModel.IsHidden = true
    end
end

--- End of File ---