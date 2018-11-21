local E, L, V, P, G = unpack(ElvUI);
----------------------------------------------------------
-- 自定义函数 --
----------------------------------------------------------
-- 属性通报 --
-- 本地化专精
function Talent()
	local Spec = GetSpecialization()
	local SpecName = Spec and select(2, GetSpecializationInfo(Spec)) or "无"
	return SpecName
end
-- 格式化血量
function HealText()
local HP = UnitHealthMax("player");
	if HP > 1e4 then
		return format('%.2f万',HP/1e4)
	else
		return HP
	end
end
-- 基础属性
function BaseInfo()
	local BaseStat = ""
		BaseStat = BaseStat..("[%s] "):format(UnitClass("player"))
		BaseStat = BaseStat..("[%s] "):format(Talent())
		BaseStat = BaseStat..("最高装等:%.1f 当前:%.1f "):format(GetAverageItemLevel())
		BaseStat = BaseStat..("血量:%s "):format(HealText())
	return BaseStat
end
-- 输出属性(9 = 暴击 12 = 溅射 17 = 吸血 18 = 急速 21 = 闪避 26 = 精通 29 = 装备+自身全能 31 = 装备全能)
-- by图图
function DpsInfo()
    local DpsStat={"", "", ""}
    local specAttr={
        --纯力敏智属性职业
        WARRIOR={1,1,1},
        DEATHKNIGHT={1,1,1},
        ROGUE={2,2,2},
        HUNTER={2,2,2},
        MAGE={3,3,3},
        WARLOCK={3,3,3},
        PRIEST={3,3,3},
        --混合力敏智属性职业
        SHAMAN={3,2,3},
        MONK={2,3,2},
        DRUID={3,2,2,3},
        PALADIN={3,1,1}
    }
	local specId = GetSpecialization()
--    print("specId = "..specId)
	local classCN,classEnName = UnitClass("player")
    local classSpecArr = specAttr[classEnName]
    DpsStat[1] = ("力量:%s "):format(UnitStat("player", 1))
    DpsStat[2] = ("敏捷:%s "):format(UnitStat("player", 2))
    DpsStat[3] = ("智力:%s "):format(UnitStat("player", 4))
	return DpsStat[classSpecArr[specId]]
end
-- 坦克属性
function TankInfo()
	local TankStat = ""
		TankStat = TankStat..("耐力:%s "):format(UnitStat("player", 3))
		TankStat = TankStat..("护甲:%s "):format(UnitArmor("player"))
		TankStat = TankStat..("闪避:%.2f%% "):format(GetDodgeChance())
		TankStat = TankStat..("招架:%.2f%% "):format(GetParryChance())
		TankStat = TankStat..("格挡:%.2f%% "):format(GetBlockChance())
	return TankStat
end
-- 治疗属性
function HealInfo()
	local HealStat = ""
		HealStat = HealStat..("法力回复:%d "):format(GetManaRegen()*5)
	return HealStat
end
-- 增强属性
function MoreInfo()
	local MoreStat = ""
		MoreStat = MoreStat..("急速:%.2f%% "):format(GetMeleeHaste())
		MoreStat = MoreStat..("爆击:%.2f%% "):format(GetCritChance())
		MoreStat = MoreStat..("精通:%.2f%% "):format(GetMasteryEffect())
	return MoreStat
end
-- 属性收集
function StatReport()
	if UnitLevel("player") < 10 then
		return BaseInfo()
	end
	local StatInfo = ""
	local Role = GetSpecializationRole(GetSpecialization())
	if Role == "HEALER" then
		StatInfo = StatInfo..BaseInfo()..DpsInfo()..HealInfo()..MoreInfo()
	elseif Role == "TANK" then
		StatInfo = StatInfo..BaseInfo()..DpsInfo()..TankInfo()..MoreInfo()
	else
		StatInfo = StatInfo..BaseInfo()..DpsInfo()..MoreInfo()
	end
	return StatInfo
end


-- Nevo_Chatbar主框体 --
local chatFrame = SELECTED_DOCK_FRAME
local editBox = chatFrame.editBox
COLORSCHEME_BORDER   = { 0.3,0.3,0.3,1 }

local chatbar = CreateFrame("Frame", "chatbar", UIParent)
chatbar:SetWidth(E.db.chat.panelWidth ) -- 主框体宽度
chatbar:SetHeight(21) -- 主框体高度
chatbar:SetPoint("TOP" ,ChatFrame1, 0, 26+21) 
E:CreateMover(chatbar,"ChatbarMover",L["Chat Bar"])

local function ChannelButton_OnClick(channel)
	local text = ''
	if ChatFrame1EditBox:IsShown() then
		text = ChatFrame1EditBox:GetText()
	end
	if not channel:find(' ') then channel = channel..' ' end
	ChatFrame_OpenChat(channel..text, chatFrame)
end


-- "说(/s)" --
local ChannelSay = CreateFrame("Button", "ChannelSay", UIParent)
ChannelSay:SetWidth(24)  -- 按钮宽度
ChannelSay:SetHeight(20)  -- 按钮高度
ChannelSay:SetPoint("LEFT",chatbar,"LEFT",5,0) 
ChannelSay:RegisterForClicks("AnyUp")
ChannelSay:SetScript("OnClick", function() ChannelButton_OnClick('/s ') end)
local ChannelSayText = ChannelSay:CreateFontString("ChannelSayText", "OVERLAY")
ChannelSayText:SetFont("fonts\\1.ttf", 15)
ChannelSayText:SetJustifyH("CENTER")
ChannelSayText:SetWidth(25)
ChannelSayText:SetHeight(25)
ChannelSayText:SetText("说") -- 显示的文字
ChannelSayText:SetPoint("CENTER", 0, 0)
ChannelSayText:SetTextColor(1,1,1,0.75) -- 颜色


-- "喊(/y)" --
local ChannelYell = CreateFrame("Button", "ChannelYell", UIParent)
ChannelYell:SetWidth(24) 
ChannelYell:SetHeight(20) 
ChannelYell:SetPoint("LEFT",ChannelSay,"RIGHT",10,0)   -- 锚点
ChannelYell:RegisterForClicks("AnyUp")
ChannelYell:SetScript("OnClick", function() ChannelButton_OnClick('/y ') end)
local ChannelYellText = ChannelYell:CreateFontString("ChannelYellText", "OVERLAY")
ChannelYellText:SetFont("fonts\\1.ttf", 15)
ChannelYellText:SetJustifyH("CENTER")
ChannelYellText:SetWidth(25)
ChannelYellText:SetHeight(25)
ChannelYellText:SetText("喊")
ChannelYellText:SetPoint("CENTER", 0, 0)
ChannelYellText:SetTextColor(1,1,1,0.75)


-- "队伍(/p)" --
local ChannelParty = CreateFrame("Button", "ChannelParty", UIParent)
ChannelParty:SetWidth(24) 
ChannelParty:SetHeight(20) 
ChannelParty:SetPoint("LEFT",ChannelYell,"RIGHT",10,0) 
ChannelParty:RegisterForClicks("AnyUp")
ChannelParty:SetScript("OnClick", function() ChannelButton_OnClick('/p ') end)
local ChannelPartyText = ChannelParty:CreateFontString("ChannelPartyText", "OVERLAY")
ChannelPartyText:SetFont("fonts\\1.ttf", 15)
ChannelPartyText:SetJustifyH("CENTER")
ChannelPartyText:SetWidth(25)
ChannelPartyText:SetHeight(25)
ChannelPartyText:SetText("队")
ChannelPartyText:SetPoint("CENTER", 0, 0)
ChannelPartyText:SetTextColor(1,1,1,0.75)


-- "团队通告(/rw)" --
local ChannelRaidWarns = CreateFrame("Button", "ChannelRaidWarns", UIParent)
ChannelRaidWarns:SetWidth(24) 
ChannelRaidWarns:SetHeight(20) 
ChannelRaidWarns:SetPoint("LEFT",ChannelParty,"RIGHT",10,0) 
ChannelRaidWarns:RegisterForClicks("AnyUp")
ChannelRaidWarns:SetScript("OnClick", function() ChannelButton_OnClick('/rw ') end)
local ChannelRaidWarnsText = ChannelRaidWarns:CreateFontString("ChannelRaidWarnsText", "OVERLAY")
ChannelRaidWarnsText:SetFont("fonts\\1.ttf", 15)
ChannelRaidWarnsText:SetJustifyH("CENTER")
ChannelRaidWarnsText:SetWidth(25)
ChannelRaidWarnsText:SetHeight(25)
ChannelRaidWarnsText:SetText("通")
ChannelRaidWarnsText:SetPoint("CENTER", 0, 0)
ChannelRaidWarnsText:SetTextColor(1,1,1,0.75) 


-- "团队(/raid)" --
local ChannelRaid = CreateFrame("Button", "ChannelRaid", UIParent)
ChannelRaid:SetWidth(24) 
ChannelRaid:SetHeight(20) 
ChannelRaid:SetPoint("LEFT",ChannelRaidWarns,"RIGHT",10,0) 
ChannelRaid:RegisterForClicks("AnyUp")
ChannelRaid:SetScript("OnClick", function() ChannelButton_OnClick('/raid ') end)
local ChannelRaidText = ChannelRaid:CreateFontString("ChannelRaidText", "OVERLAY")
ChannelRaidText:SetFont("fonts\\1.ttf", 15)
ChannelRaidText:SetJustifyH("CENTER")
ChannelRaidText:SetWidth(25)
ChannelRaidText:SetHeight(25)
ChannelRaidText:SetText("团")
ChannelRaidText:SetPoint("CENTER", 0, 0)
ChannelRaidText:SetTextColor(1,1,1,0.75)

-- "副本(/i)" --
local Channel_i = CreateFrame("Button", "ChannelBattleGround", UIParent)
ChannelBattleGround:SetWidth(24) 
ChannelBattleGround:SetHeight(20) 
ChannelBattleGround:SetPoint("LEFT",ChannelRaid,"RIGHT",10,0) 
ChannelBattleGround:RegisterForClicks("AnyUp")
ChannelBattleGround:SetScript("OnClick", function() ChannelButton_OnClick('/i ') end)
local ChannelBattleGroundText = ChannelBattleGround:CreateFontString("ChannelBattleGroundText", "OVERLAY")
ChannelBattleGroundText:SetFont("fonts\\1.ttf", 15)
ChannelBattleGroundText:SetJustifyH("CENTER")
ChannelBattleGroundText:SetWidth(25)
ChannelBattleGroundText:SetHeight(25)
ChannelBattleGroundText:SetText("副")
ChannelBattleGroundText:SetPoint("CENTER", 0, 0)
ChannelBattleGroundText:SetTextColor(1,1,1,0.75)


-- "公会(/g)" --
local ChannelGuild = CreateFrame("Button", "ChannelGuild", UIParent)
ChannelGuild:SetWidth(24) 
ChannelGuild:SetHeight(20) 
ChannelGuild:SetPoint("LEFT",ChannelBattleGround,"RIGHT",10,0) 
ChannelGuild:RegisterForClicks("AnyUp")
ChannelGuild:SetScript("OnClick", function() ChannelButton_OnClick('/g ') end)
local ChannelGuildText = ChannelGuild:CreateFontString("ChannelGuildText", "OVERLAY")
ChannelGuildText:SetFont("fonts\\1.ttf", 15)
ChannelGuildText:SetJustifyH("CENTER")
ChannelGuildText:SetWidth(25)
ChannelGuildText:SetHeight(25)
ChannelGuildText:SetText("公")
ChannelGuildText:SetPoint("CENTER", 0, 0)
ChannelGuildText:SetTextColor(1,1,1,0.75)


-- 加入/离开大脚世界频道
local BF = CreateFrame("Button", "BF", UIParent)
BF:SetWidth(24) 
BF:SetHeight(20) 
BF:SetPoint("LEFT",ChannelGuild,"RIGHT",10,0) 
BF:RegisterForClicks("AnyUp")
BF:SetScript("OnMouseUp", function(self, button) 
     local channels = {GetChannelList()} 
      local isInCustomChannel = false 
      local customChannelName = "大脚世界频道" 
      for i =1, #channels do 
         if channels[i] == customChannelName then 
            isInCustomChannel = true 
         end 
      end 
      if button == "LeftButton" then
            local _, channelName, _  =  GetChannelName("大脚世界频道")
           	if channelName == nil then
		           JoinPermanentChannel("大脚世界频道", nil, 1, 1)
		           ChatFrame_RemoveMessageGroup(ChatFrame1, "CHANNEL")
		           ChatFrame_AddChannel(ChatFrame1,"大脚世界频道")
	          else
		           local channel, _, _  = GetChannelName("大脚世界频道")
				   ChannelButton_OnClick('/'..channel..' ')
	          end
      elseif button == "RightButton" then
            if isInCustomChannel then 
		           msg = ">>>退出世界频道<<<" 
               LeaveChannelByName(customChannelName) 
            else 
               JoinPermanentChannel(customChannelName,nil,1) 
               msg = ">>>加入世界频道<<<" 
               ChatFrame_AddChannel(ChatFrame1,customChannelName) 
               ChatFrame_RemoveMessageGroup(ChatFrame1,"CHANNEL") 
            end print(msg)
      end
   end)
local BFText = BF:CreateFontString("BFText", "OVERLAY")
BFText:SetFont("fonts\\1.ttf", 15)
BFText:SetJustifyH("CENTER")
BFText:SetWidth(25)
BFText:SetHeight(25)
BFText:SetText("世")
BFText:SetPoint("CENTER", 0, 0)
BFText:SetTextColor(1,1,1,0.75)
	
local roll = CreateFrame("Button", "rollMacro", UIParent, "SecureActionButtonTemplate")
roll:SetAttribute("*type*", "macro")
roll:SetAttribute("macrotext", "/roll")
roll:SetWidth(24)
roll:SetHeight(20)
roll:SetPoint("LEFT",BF,"RIGHT",78,0);
local rollText = roll:CreateFontString("rollText", "OVERLAY")
rollText:SetFont("fonts\\1.ttf", 15)
rollText:SetJustifyH("CENTER")
rollText:SetWidth(25)
rollText:SetHeight(25)
rollText:SetText("骰")
rollText:SetPoint("CENTER", 0, 0)
rollText:SetTextColor(1,1,1,0.75)
roll:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, 'ANCHOR_TOP', 0, 6)
	GameTooltip:AddLine("投骰子")
	GameTooltip:Show()
end)
roll:SetScript("OnLeave", function(self)
	GameTooltip:Hide()
end)

local Lock = CreateFrame("Button", nil, UIParent)
	Lock:SetWidth(24) 
	Lock:SetHeight(20) 
	Lock:SetPoint("LEFT",BF,"RIGHT",44,0)
	Lock:RegisterForClicks('AnyDown')
	local LockText = Lock:CreateFontString("LockText", "OVERLAY")
	LockText:SetFont("fonts\\1.ttf", 15)
	LockText:SetJustifyH("CENTER")
	LockText:SetWidth(25)
	LockText:SetHeight(25)
	LockText:SetText("解")
	LockText:SetPoint("CENTER", 0, 0)
	LockText:SetTextColor(1,1,1,0.75)
	Lock:SetScript("OnClick", function(self)
		if ElvUIMoverPopupWindow and ElvUIMoverPopupWindow:IsShown() then
			E:ToggleConfigMode(false)
		else
			E:ToggleConfigMode()
		end
	end)
	Lock:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, 'ANCHOR_TOP', 0, 6)
		GameTooltip:AddLine("解锁ElvUI框架")
		GameTooltip:Show()
	end)
	Lock:SetScript("OnLeave", function(self)
		GameTooltip:Hide()
	end)
do
	local emote = EmoteTable_Button
	if emote then
		emote:SetPoint("LEFT",BF,"RIGHT",10,0)
			buttontext = emote:CreateFontString(nil,"OVERLAY",nil);
			buttontext:SetWidth(24) 
			buttontext:SetHeight(20) 
			buttontext:SetFont("fonts\\1.ttf", 15)
			buttontext:SetText("表");
			buttontext:SetPoint("CENTER",0,0);
			buttontext:SetTextColor(1,1,1,0.75)
			buttontext:SetJustifyH("CENTER");
			buttontext:SetJustifyV("CENTER");
		emote:SetScript("OnEnter", function(self)
			buttontext:SetTextColor(1,1,1,0.75)
			GameTooltip:SetOwner(self, 'ANCHOR_TOP', 0, 6)
			GameTooltip:AddLine("表情")
			GameTooltip:Show()
		end)
		emote:SetScript("OnLeave", function(self)
			buttontext:SetTextColor(1,1,1,0.75)
			GameTooltip:Hide()
		end)
	end
end

-- StatReport --
local StatReportOut = CreateFrame("Button", "StatReportOutMacro", UIParent, "SecureActionButtonTemplate")
StatReportOut:SetAttribute("*type*", "macro")
StatReportOut:SetAttribute("macrotext", "/run ChatFrame_OpenChat(StatReport())")
StatReportOut:SetWidth(24)
StatReportOut:SetHeight(20)
StatReportOut:SetPoint("LEFT",roll,"RIGHT",10,0)
StatReportOutText = StatReportOut:CreateFontString("StatReportOut", "OVERLAY")
StatReportOutText:SetFont("fonts\\1.ttf", 15)
StatReportOutText:SetJustifyH("CENTER")
StatReportOutText:SetWidth(25)
StatReportOutText:SetHeight(25)
StatReportOutText:SetText("报")
StatReportOutText:SetPoint("CENTER", 0, 0)
StatReportOutText:SetTextColor(1,1,1,0.75)


ChatTypeInfo["SAY"].sticky         = 1; -- 说 
ChatTypeInfo["PARTY"].sticky         = 1; -- 队 
ChatTypeInfo["GUILD"].sticky         = 1; -- 会 
ChatTypeInfo["WHISPER"].sticky      = 1; -- 密语 
ChatTypeInfo["BN_WHISPER"].sticky   = 1; -- BN实名密语 
ChatTypeInfo["RAID"].sticky         = 1; -- 团 
ChatTypeInfo["OFFICER"].sticky      = 1; -- 官 
ChatTypeInfo["CHANNEL"].sticky      = 1; -- 频道

