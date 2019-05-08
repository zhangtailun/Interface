-- 取消显示头像的伤害和治疗数字
--PlayerHitIndicator:SetText(nil) 
--PlayerHitIndicator.SetText = function() end 

--PetHitIndicator:SetText(nil) 
--PetHitIndicator.SetText = function() end

--连击点设置
--CastingBarFrame:ClearAllPoints()
--CastingBarFrame:SetPoint("CENTER",UIParent,"CENTER",0,-100)
--CastingBarFrame.SetPoint = function() end
--CastingBarFrame:SetScale("1.2")
--ComboPointPlayerFrame.Background:Hide()
--ComboPointPlayerFrame:ClearAllPoints() 
--ComboPointPlayerFrame:SetPoint("TOP", CastingBarFrame, "BOTTOM", 0, 0) 
--ComboPointPlayerFrame.SetPoint = function() end
--ComboPointPlayerFrame:SetScale(1.5)

--各种参数设置
local function defaultcvar()
   --名條堆疊的水平百分比，預設是0.8 
   --SetCVar("nameplateOverlapH",  0.5) 
   --名條堆疊的垂直百分比，預設是1.1 
   --SetCVar("nameplateOverlapV",  0.7)
   --姓名板大小1.39是宽，2.7是高 
   --SetCVar("NamePlateHorizontalScale", 1.1) 
   --SetCVar("NamePlateVerticalScale", 1.3)
   --不讓名條隨距離而變小，預設minscale是0.8 
   --SetCVar("namePlateMinScale", 1) 
   --SetCVar("namePlateMaxScale", 1)
   --當前(選中目標)姓名板的縮放 
   --SetCVar("nameplateSelectedScale", 1.4)
   --重要NPC(如首領)的名條縮放 
   --SetCVar("nameplateLargerScale", 1.2)
   --固定：預設topinset是0.5，bottominset是0.2 
   --SetCVar("nameplateSelfTopInset", .5) 
   --SetCVar("nameplateSelfBottomInset", .2)
   --總是顯示個人資源，預設是1開 
   --SetCVar("nameplatePersonalShowAlways", 1)
   --縮放，預設1 
   --SetCVar("nameplateSelfScale", 1.0)
   --10碼外的非當前目標透明度，預設是0.6 
   --SetCVar("nameplateMinAlpha", 0.6) 
   --7.2後的聰明tab，1開；預設就是開啟，一般來說不用管 
   --SetCVar("TargetNearestUseNew", 1)
   --顯示名條的最遠距離：legion預設是60，以前是40；60太遠了，容易干擾畫面。建議遠程職業設定為你的最遠射程+5碼 
   --SetCVar("nameplateMaxDistance", 55)
   --障礙物後的名條透名度，預設0.4、隔著牆、柱子後面、樓上樓下等等 
   --SetCVar("nameplateOccludedAlphaMult", 0)
end 

local frame = CreateFrame("FRAME", "defaultcvar") 
   frame:RegisterEvent("PLAYER_ENTERING_WORLD") 
      local function eventHandler(self, event, ...) 
         defaultcvar() 
end 
frame:SetScript("OnEvent", eventHandler)

--进入战斗显示
local locale = GetLocale()
local L = { 
    enterCombat = { default = "Enter Combat", zhTW = "進入戰鬥", zhCN = "进入战斗" },
    leaveCombat = { default = "Leave Combat", zhTW = "離開戰鬥", zhCN = "离开战斗" },
}
local alertFrame = CreateFrame("Frame")
alertFrame:SetSize(310, 46)
alertFrame:SetPoint("TOP", 0, -280)
alertFrame:SetScale(0.7)
alertFrame:Hide()
alertFrame.Bg = alertFrame:CreateTexture(nil, "BACKGROUND")
alertFrame.Bg:SetTexture("Interface\\LevelUp\\MinorTalents")
alertFrame.Bg:SetPoint("TOP")
alertFrame.Bg:SetSize(300, 46)
alertFrame.Bg:SetTexCoord(0, 400/512, 341/512, 407/512)
alertFrame.Bg:SetVertexColor(1, 1, 1, 0.4)
alertFrame.text = alertFrame:CreateFontString(nil, "ARTWORK", "GameFont_Gigantic")
alertFrame.text:SetPoint("CENTER")
alertFrame:SetScript("OnUpdate", function(self, elapsed)
    self.timer = self.timer + elapsed
    if (self.timer > self.totalTime) then self:Hide() end
    if (self.timer <= 0.5) then
        self:SetAlpha(self.timer * 2)
    elseif (self.timer > 2) then
        self:SetAlpha(1-self.timer/self.totalTime)
    end
end)
alertFrame:SetScript("OnShow", function(self)
    self.totalTime = 3.2
    self.timer = 0
end)
alertFrame:SetScript("OnEvent", function(self, event, ...)
    self:Hide()
    if (event == "PLAYER_REGEN_DISABLED") then
        self.text:SetText(L.enterCombat[locale] or L.enterCombat.default)
    elseif (event == "PLAYER_REGEN_ENABLED") then
        self.text:SetText(L.leaveCombat[locale] or L.leaveCombat.default)
    end
    self:Show()
end)
alertFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
alertFrame:RegisterEvent("PLAYER_REGEN_DISABLED")