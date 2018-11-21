ChatFrame_RemoveMessageGroup(ChatFrame1, "CHANNEL")


--------------------------
--------聊天框定位--------
--------------------------


local Event = CreateFrame("Frame")
--[[Event:RegisterEvent("PLAYER_ENTERING_WORLD")
Event:SetScript("OnEvent", function(self)
   Event:UnregisterEvent("PLAYER_ENTERING_WORLD")
   if not UnitAffectingCombat("player") then
      FCF_SetLocked(ChatFrame1, nil)
      FCF_SetChatWindowFontSize(self, ChatFrame1, 17) 
      ChatFrame1:ClearAllPoints()
      ChatFrame1:SetPoint("BOTTOMLEFT", 16, 23)
      ChatFrame1:SetWidth(380)
      ChatFrame1:SetHeight(156)
      ChatFrame1:SetUserPlaced(true)
      for i = 1,10 do FCF_SetWindowAlpha(_G["ChatFrame"..i], 0) end
      FCF_SavePositionAndDimensions(ChatFrame1)
      FCF_SetLocked(ChatFrame1, 1)
   end
end)--]]

--  SetCVar("chatBubbles", 0)
--[[
-------------美化-------------
local line = CreateFrame("Frame", nil, UIParent) 
   line:SetFrameLevel(0) 
   line:SetFrameStrata("BACKGROUND")
   line:SetHeight(3)
   line:SetWidth(390)
   line:SetPoint("BOTTOM", ChatFrame1, "BOTTOM", 0, -7) 
   line:SetBackdrop({bgFile = "Interface\\AddOns\\ElvUI_Enhance\\chat\\line"}) 
   local ClassColor = RAID_CLASS_COLORS[select(2, UnitClass("player"))] 
   line:SetBackdropColor(ClassColor.r, ClassColor.g, ClassColor.b, .8)

local line = CreateFrame("Frame", nil, UIParent) 
   line:SetFrameLevel(0) 
   line:SetFrameStrata("BACKGROUND")
   line:SetHeight(2)
   line:SetWidth(390)
   line:SetPoint("TOP", ChatFrame1, "TOP", 0, 6) 
   line:SetBackdrop({bgFile = "Interface\\AddOns\\ElvUI_Enhance\\chat\\line"}) 
   local ClassColor = RAID_CLASS_COLORS[select(2, UnitClass("player"))] 
   line:SetBackdropColor(ClassColor.r, ClassColor.g, ClassColor.b, .8)


local line = CreateFrame("Frame", nil, UIParent) 
   line:SetFrameLevel(0)
   line:SetFrameStrata("BACKGROUND")
   line:SetPoint("TOPLEFT", ChatFrame1, "TOPLEFT", -2, 4) 
   line:SetPoint("BOTTOMRIGHT", ChatFrame1, "BOTTOMRIGHT", 2, -6)
   --line:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 0, 0) 
   line:SetBackdrop({bgFile = "Interface\\AddOns\\ElvUI_Enhance\\chat\\chat"}) 
   line:SetBackdropColor( 0, 0, 0, .3) 
]]--

-----------------------------------------------
-- config
-----------------------------------------------
-- 显示聊天时间戳(true/false) (显示/不显示) 点击时间复制聊天内容, 不显示时间点 ★ 复制聊天内容 
local showtime = false

-- 隐藏聊天框背景 (true/false) (隐藏/显示)
local hide_chatframe_backgrounds = true

-- 隐藏聊天标签背景 (true/false) (隐藏/显示)
local hide_chattab_backgrounds = true

-- 输入框置顶 (true/false) (顶/底)
local editboxtop = true

-- 输入框背景颜色/透明度 (a是透明度)
local BackdropColor = {r=0, g=0, b=0, a=0.42}

-- 输入框边框颜色/透明度 (a是透明度,白色请改成 {r=1, g=1, b=1, a=0.8})
local BorderColor = {r=0, g=0, b=0, a=0.42}

-- 输入框字体大小
fontsize = 14

-- 打开输入框回到上次对话 (1/0 = On/Off)
ChatTypeInfo["SAY"].sticky  = 1; -- 说
ChatTypeInfo["PARTY"].sticky 	= 1; -- 小队
ChatTypeInfo["GUILD"].sticky 	= 1; -- 公会
ChatTypeInfo["WHISPER"].sticky 	= 0; -- 密语 
ChatTypeInfo["RAID"].sticky 	= 1; -- 团队
ChatTypeInfo["OFFICER"].sticky 	= 1; -- 官员
ChatTypeInfo["CHANNEL"].sticky 	= 0; -- 频道

-- 聊天标签
CHAT_FRAME_FADE_OUT_TIME = 0 -- 聊天窗口褪色时间
CHAT_TAB_HIDE_DELAY = 0      -- 聊天标签弹出延时
CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA = 0.7   -- 鼠标停留时,标签透明度
CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = 0       -- 鼠标离开时,标签透明度 (修改这里能一直显示)
CHAT_FRAME_TAB_SELECTED_MOUSEOVER_ALPHA = 1   -- 鼠标停留时,选择标签时透明度
CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = 0     -- 鼠标离开时,选择标签时透明度
CHAT_FRAME_TAB_ALERTING_MOUSEOVER_ALPHA = 0.7 -- 鼠标停留时,标签闪动时透明度
CHAT_FRAME_TAB_ALERTING_NOMOUSE_ALPHA = 0     -- 鼠标离开时,标签闪动时透明度

-- 阴影/轮廓
outline = false
dropshadow = true

-- 字体
font = ChatFontNormal:GetFont()

-----------------------------------------------------------------------------
BNToastFrame:SetClampedToScreen(true)

--=========================================================================--
btexture = 'Interface\\Buttons\\WHITE8x8'
etexture = 'Interface\\Tooltips\\UI-Tooltip-Border'

local tabs = {"Left", "Middle", "Right", "SelectedLeft", "SelectedRight",
    "SelectedMiddle", "Glow",}

for i = 1, NUM_CHAT_WINDOWS do
    local editbox = _G['ChatFrame'..i..'EditBox']
    local editboxLanguage = _G['ChatFrame'..i..'EditBoxLanguage']
    local tex=({_G["ChatFrame"..i.."EditBox"]:GetRegions()})
    local resize = _G["ChatFrame"..i.."ResizeButton"]
    local cf = _G['ChatFrame'..i];

-- 隐藏翻页按钮----以下代码已屏蔽
    --local f = _G["ChatFrame"..i.."ButtonFrame"]
    --f.Show = f.Hide 
    --f:Hide()

    
-- 输入框
    editbox:SetAltArrowKeyMode(false)
    editbox:ClearAllPoints()
    editboxLanguage:SetPoint('LEFT', editbox, 'RIGHT', -5, 0) --输入框语言按钮位置

    if editboxtop==true then
        editbox:SetPoint('BOTTOMLEFT', _G.ChatFrame1, 'TOPLEFT', -3, 2)
        editbox:SetPoint('BOTTOMRIGHT', _G.ChatFrame1, 'TOPRIGHT', 3, 2)
        editbox:SetPoint('TOPLEFT', _G.ChatFrame1, 'TOPLEFT', -3, 26)
        editbox:SetPoint('TOPRIGHT', _G.ChatFrame1, 'TOPRIGHT', 3, 26)
    else
        editbox:SetPoint('TOPLEFT', _G.ChatFrame1, 'BOTTOMLEFT', -3, -2)
        editbox:SetPoint('TOPRIGHT', _G.ChatFrame1, 'BOTTOMRIGHT', 3, -2)
        editbox:SetPoint('BOTTOMLEFT', _G.ChatFrame1, 'BOTTOMLEFT', -3, -26)
        editbox:SetPoint('BOTTOMRIGHT', _G.ChatFrame1, 'BOTTOMRIGHT', 3, -26)
    end

    editbox:SetShadowOffset(0, 0)
    editbox:SetFont(font, fontsize)
    editbox:SetBackdrop({bgFile = btexture, edgeFile = etexture, edgeSize = 17, insets = {top = 2, left = 2, bottom = 2, right = 2}})
    editbox:SetBackdropColor(BackdropColor.r,BackdropColor.g,BackdropColor.b,BackdropColor.a)
    editbox:SetBackdropBorderColor(BorderColor.r,BorderColor.g,BorderColor.b,BorderColor.a)
    tex[6]:SetAlpha(0) tex[7]:SetAlpha(0) tex[8]:SetAlpha(0) tex[9]:SetAlpha(0) tex[10]:SetAlpha(0)
    cf:SetMinResize(0,0)
	cf:SetMaxResize(0,0)
    cf:SetFading(show)					
	cf:SetClampRectInsets(0,0,0,0)
      cf:SetClampedToScreen(nil)
    cf:SetFrameStrata("LOW")

-- 隐藏聊天标签选择时背景
   _G["ChatFrame"..i.."TabSelectedMiddle"]:SetTexture(nil)
   _G["ChatFrame"..i.."TabSelectedRight"]:SetTexture(nil)
   _G["ChatFrame"..i.."TabSelectedLeft"]:SetTexture(nil)

-- 聊天框缩放按钮
    resize:SetPoint("BOTTOMRIGHT", cf, "BOTTOMRIGHT", 5,-9) 
    resize:SetScale(.7)  --大小
    resize:SetAlpha(.8)  --透明度

-- 聊天标签背景
if hide_chattab_backgrounds then
    for index, value in pairs(tabs) do
        local texture = _G['ChatFrame'..i..'Tab'..value]
        texture:SetTexture(nil)
    end
end

-- 聊天框背景
if hide_chatframe_backgrounds then
    for g = 1, #CHAT_FRAME_TEXTURES do
     _G["ChatFrame"..i..CHAT_FRAME_TEXTURES[g]]:SetTexture(nil)
     end
end

-- 轮廓/阴影
    if (outline==true) then
        cf:SetFont(font, fontsize, "OUTLINE")
        cf:SetShadowOffset(0, 0)
   elseif (dropshadow==true) then
        cf:SetFont(font, fontsize)
        cf:SetShadowOffset(1, -1)
   else
        cf:SetFont(font, fontsize)
        cf:SetShadowOffset(0, 0)
    end
end

----------------------按住CTRL翻页 顶/底-按住SHFIT 翻3行------------------------------
FloatingChatFrame_OnMouseScroll = function(self, dir)
  if(dir > 0) then
    if(IsControlKeyDown()) then
      self:ScrollToTop()
    elseif IsShiftKeyDown() then
      self:ScrollUp()
      self:ScrollUp()
      self:ScrollUp()
    else
     self:ScrollUp()
    end
else
    if(IsControlKeyDown()) then
      self:ScrollToBottom()
    elseif IsShiftKeyDown() then
      self:ScrollDown()
      self:ScrollDown()
      self:ScrollDown()
    else
      self:ScrollDown()
    end
  end
end


-----------------------------------------------聊天复制------------------------------------
local _AddMessage = ChatFrame1.AddMessage
local _SetItemRef = SetItemRef
local blacklist = {
	[ChatFrame2] = true,
}

local ts = '|cff68ccef|HyCopy|h%s|h|r %s'
local AddMessage = function(self, text, ...)
	if(type(text) == 'string') then
        if showtime then
          text = format(ts, date'%H:%M', text)  --text = format(ts, date'%H:%M:%S', text)
       end
end

	return _AddMessage(self, text, ...)
end

for i=1, NUM_CHAT_WINDOWS do
	local cf = _G['ChatFrame'..i]
	if(not blacklist[cf]) then
		cf.AddMessage = AddMessage
	end
end

local MouseIsOver = function(frame)
	local s = frame:GetParent():GetEffectiveScale()
	local x, y = GetCursorPosition()
	x = x / s
	y = y / s

	local left = frame:GetLeft()
	local right = frame:GetRight()
	local top = frame:GetTop()
	local bottom = frame:GetBottom()

	if(not left) then
		return
	end

	if((x > left and x < right) and (y > bottom and y < top)) then
		return 1
	else
		return
	end
end

local borderManipulation = function(...)
	for l = 1, select('#', ...) do
		local obj = select(l, ...)
		if(obj:GetObjectType() == 'FontString' and MouseIsOver(obj)) then
			return obj:GetText()
		end
	end
end

local eb = ChatFrame1EditBox
SetItemRef = function(link, text, button, ...)
	if(link:sub(1, 5) ~= 'yCopy') then return _SetItemRef(link, text, button, ...) end

	local text = borderManipulation(SELECTED_CHAT_FRAME.FontStringContainer:GetRegions())
	if(text) then
		text = text:gsub('|c%x%x%x%x%x%x%x%x(.-)|r', '%1')
		text = text:gsub('|H.-|h(.-)|h', '%1')

		eb:Insert(text)
		eb:Show()
		eb:HighlightText()
		eb:SetFocus()
	end
end

----------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
local hooks = {}
local blacklist = {
	SPELL_FAILED_NO_COMBO_POINTS,   -- That ability requires combo points
	SPELL_FAILED_TARGETS_DEAD,      -- Your target is dead
	SPELL_FAILED_SPELL_IN_PROGRESS, -- Another action is in progress
	SPELL_FAILED_TARGET_AURASTATE,  -- You can't do that yet. (TargetAura)
	SPELL_FAILED_CASTER_AURASTATE,  -- You can't do that yet. (CasterAura)
	SPELL_FAILED_NO_ENDURANCE,      -- Not enough endurance
	SPELL_FAILED_BAD_TARGETS,       -- Invalid target
	SPELL_FAILED_NOT_MOUNTED,       -- You are mounted
	SPELL_FAILED_NOT_ON_TAXI,       -- You are in flight
	SPELL_FAILED_NOT_INFRONT,       -- You must be in front of your target
	SPELL_FAILED_NOT_IN_CONTROL,    -- You are not in control of your actions
	SPELL_FAILED_MOVING,            -- Can't do that while moving
	ERR_ATTACK_FLEEING,				-- Can't attack while fleeing.
	ERR_ITEM_COOLDOWN,				-- Item is not ready yet.
	ERR_GENERIC_NO_TARGET,          -- You have no target.
	ERR_ABILITY_COOLDOWN,           -- Ability is not ready yet.
	ERR_OUT_OF_ENERGY,              -- Not enough energy
	ERR_NO_ATTACK_TARGET,           -- There is nothing to attack.
	ERR_SPELL_COOLDOWN,             -- Spell is not ready yet. (Spell)
	ERR_OUT_OF_RAGE,                -- Not enough rage.
	ERR_INVALID_ATTACK_TARGET,      -- You cannot attack that target.
	ERR_OUT_OF_MANA,                -- Not enough mana
	ERR_NOEMOTEWHILERUNNING,        -- You can't do that while moving!
	OUT_OF_ENERGY,                  -- Not enough energy.
}

hooks["UIErrorsFrame_AddMessage"] = UIErrorsFrame.AddMessage
UIErrorsFrame.AddMessage = function(...)
	for k,v in ipairs(blacklist) do
		if v==arg1 then return end
	end
	hooks["UIErrorsFrame_AddMessage"](...)
end





-----------====================自定义频道可在(95行-183行)修改==================------------

--精简公共频道 (true/false) (精简/不精简)
local ShortChannel = true

----==============================精简聊天频道,可修改汉字自定义==========================----
if (GetLocale() == "zhTW") then 
 --公会
  CHAT_GUILD_GET = "|Hchannel:GUILD|h[公會]|h %s: "
  CHAT_OFFICER_GET = "|Hchannel:OFFICER|h[官員]|h %s: "
    
  --团队
  CHAT_RAID_GET = "|Hchannel:RAID|h[團隊]|h %s: "
  CHAT_RAID_WARNING_GET = "[通知] %s: "
  CHAT_RAID_LEADER_GET = "|Hchannel:RAID|h[團長]|h %s: "
  
  --队伍
  CHAT_PARTY_GET = "|Hchannel:PARTY|h[隊伍]|h %s: "
  CHAT_PARTY_LEADER_GET =  "|Hchannel:PARTY|h[隊長]|h %s: "
  CHAT_PARTY_GUIDE_GET =  "|Hchannel:PARTY|h[向導]|h %s: "

  --战场
  CHAT_BATTLEGROUND_GET = "|Hchannel:BATTLEGROUND|h[戰場]|h %s: "
  CHAT_BATTLEGROUND_LEADER_GET = "|Hchannel:BATTLEGROUND|h[領袖]|h %s: "
  
  --说 / 喊
  CHAT_SAY_GET = "%s: "
  CHAT_YELL_GET = "%s: "  

  --密语
  CHAT_WHISPER_INFORM_GET = "發送給%s: "
  CHAT_WHISPER_GET = "%s悄悄話: "

  CHAT_FLAG_AFK = "[暫離] "
  CHAT_FLAG_DND = "[勿擾] "
  CHAT_FLAG_GM = "[GM] "

elseif (GetLocale() == "zhCN") then

 --公会
  CHAT_GUILD_GET = "|Hchannel:GUILD|h[公]|h %s: "
  CHAT_OFFICER_GET = "|Hchannel:OFFICER|h[官]|h %s: "
    
  --团队
  CHAT_RAID_GET = "|Hchannel:RAID|h[团]|h %s: "
  CHAT_RAID_WARNING_GET = "[通] %s: "
  CHAT_RAID_LEADER_GET = "|Hchannel:RAID|h[团长]|h %s: "
  
  --队伍
  CHAT_PARTY_GET = "|Hchannel:PARTY|h[队]|h %s: "
  CHAT_PARTY_LEADER_GET =  "|Hchannel:PARTY|h[队长]|h %s: "
  CHAT_PARTY_GUIDE_GET =  "|Hchannel:PARTY|h[向导]:|h %s: "

  --战场
  CHAT_BATTLEGROUND_GET = "|Hchannel:BATTLEGROUND|h[战]|h %s: "
  CHAT_BATTLEGROUND_LEADER_GET = "|Hchannel:BATTLEGROUND|h[领袖]|h %s: "
  
  --密语  
  CHAT_WHISPER_INFORM_GET = "发送给%s: "
  CHAT_WHISPER_GET = "%s悄悄话: "
  CHAT_BN_WHISPER_INFORM_GET = "发送给%s "
  CHAT_BN_WHISPER_GET = "悄悄话%s "
  
  --说 / 喊
  CHAT_SAY_GET = "%s: "
  CHAT_YELL_GET = "%s: "  

  --flags
  CHAT_FLAG_AFK = "[暂] "
  CHAT_FLAG_DND = "[勿] "
  CHAT_FLAG_GM = "[GM] "

else
  CHAT_GUILD_GET = "|Hchannel:GUILD|hG|h %s "
  CHAT_OFFICER_GET = "|Hchannel:OFFICER|hO|h %s "
  CHAT_RAID_GET = "|Hchannel:RAID|hR|h %s "
  CHAT_RAID_WARNING_GET = "RW %s "
  CHAT_RAID_LEADER_GET = "|Hchannel:RAID|hRL|h %s "
  CHAT_PARTY_GET = "|Hchannel:PARTY|hP|h %s "
  CHAT_PARTY_LEADER_GET =  "|Hchannel:PARTY|hPL|h %s "
  CHAT_PARTY_GUIDE_GET =  "|Hchannel:PARTY|hPG|h %s "
  CHAT_BATTLEGROUND_GET = "|Hchannel:BATTLEGROUND|hB|h %s "
  CHAT_BATTLEGROUND_LEADER_GET = "|Hchannel:BATTLEGROUND|hBL|h %s "  
  CHAT_WHISPER_INFORM_GET = "to %s "
  CHAT_WHISPER_GET = "from %s "
  CHAT_BN_WHISPER_INFORM_GET = "to %s "
  CHAT_BN_WHISPER_GET = "from %s "
  CHAT_SAY_GET = "%s "
  CHAT_YELL_GET = "%s "
  CHAT_FLAG_AFK = "[AFK] "
  CHAT_FLAG_DND = "[DND] "
  CHAT_FLAG_GM = "[GM] "
end

--================================公共频道和自定义频道精简================================--
local gsub = _G.string.gsub
local newAddMsg = {}
local chn, rplc
  if (GetLocale() == "zhCN") then  ---国服
	rplc = {
		"[%1综]",  
		"[%1贸]",   
		"[%1防]",   
		"[%1组]",   
		"[%1世]",   
		"[%1招]",
                "[%1世]", 
                "[%1自定义]",    -- 自定义频道缩写请自行修改
	}

   elseif (GetLocale() == "zhTW") then  ---台服
       rplc = {
		"[%1綜合]",          
		"[%1貿易]",             
		"[%1防務]",             
		"[%1組隊]",            
		"[%1世防]",           
		"[%1招募]",
                "[%1世]",  
                "[%1自定义]",   -- 自定义频道缩写请自行修改
        }
        else
        
	rplc = {
		"[GEN]", 
		"[TR]", 
		"[WD]", 
		"[LD]", 
		"[LFG]", 
		"[GR]",
                "[BFC]", 
                "[CL]",      -- 英文缩写
	}
        end

	chn = {
		"%[%d+%. General.-%]",
		"%[%d+%. Trade.-%]",
		"%[%d+%. LocalDefense.-%]",
		"%[%d+%. LookingForGroup%]",
		"%[%d+%. WorldDefense%]",
		"%[%d+%. GuildRecruitment.-%]",
                "%[%d+%. BigFootChannel.-%]",
                "%[%d+%. CustomChannel.-%]",       -- 自定义频道英文名随便填写
	}

---------------------------------------- 国服 ---------------------------------------------
	local L = GetLocale()
	if L == "zhCN" then
		chn[1] = "%[%d+%. 综合.-%]"
		chn[2] = "%[%d+%. 交易.-%]"
		chn[3] = "%[%d+%. 本地防务.-%]"
		chn[4] = "%[%d+%. 寻求组队%]"
                chn[5] = "%[%d+%. 世界防务%]"	
		chn[6] = "%[%d+%. 公会招募.-%]"
                chn[7] = "%[%d+%. 大脚世界频道.-%]"
                chn[8] = "%[%d+%. 自定义频道.-%]"   -- 请修改频道名对应你游戏里的频道

---------------------------------------- 台服 ---------------------------------------------
        elseif L == "zhTW" then
		chn[1] = "%[%d+%. 綜合.-%]"
		chn[2] = "%[%d+%. 貿易.-%]"
	        chn[3] = "%[%d+%. 本地防務.-%]"
		chn[4] = "%[%d+%. 尋求組隊%]"
		chn[5] = "%[%d+%. 世界防務%]"
		chn[6] = "%[%d+%. 公會招募.-%]"
                chn[7] = "%[%d+%. 大脚世界频道.-%]"
                chn[8] = "%[%d+%. 自定义频道.-%]"   -- 请修改频道名对应你游戏里的频道
	else 
---------------------------------------- 英文 ----------------------------------------------- 
		chn[1] = "%[%d+%. General.-%]"
		chn[2] = "%[%d+%. Trade.-%]"
		chn[3] = "%[%d+%. LocalDefense.-%]"
		chn[4] = "%[%d+%. LookingForGroup%]"
		chn[5] = "%[%d+%. WorldDefense%]"
		chn[6] = "%[%d+%. GuildRecruitment.-%]"
                chn[7] = "%[%d+%. BigFootChannel.-%]"
                chn[8] = "%[%d+%. CustomChannel.-%]"   -- 自定义频道英文名随便填写

	end

local function AddMessage(frame, text, ...)
	for i = 1, 8 do	 -- 对应上面几个频道(如果有9个频道就for i = 1, 9 do)
		text = gsub(text, chn[i], rplc[i])
	end

	text = gsub(text, "%[(%d0?)%. .-%]", "%1.") 
	return newAddMsg[frame:GetName()](frame, text, ...)
end

if ShortChannel then
	for i = 1, 5 do
		if i ~= 2 then 
			local f = _G[format("%s%d", "ChatFrame", i)]
			newAddMsg[format("%s%d", "ChatFrame", i)] = f.AddMessage
			f.AddMessage = AddMessage
		end
	end
end


-- 隐藏聊天菜单按钮(鼠标划过右上角显示)
 ChatFrameMenuButton:SetScale(.7)  --按钮缩放
 ChatFrameMenuButton:SetAlpha(0)  --刚进游戏时按钮透明度(鼠标经过1次后显示鼠标离开时透明度)
 ChatFrameMenuButton:ClearAllPoints()
 ChatFrameMenuButton:SetPoint('TOPRIGHT', ChatFrame1, 'TOPRIGHT', 5, 5) --位置
 ChatFrameMenuButton:SetScript('OnEnter', function(self) self:SetAlpha(1) end) --鼠标进入时透明度
 ChatFrameMenuButton:SetScript('OnLeave', function(self) self:SetAlpha(0) end) --鼠标离开时透明度
-- 社交按钮(鼠标划过左上角显示)
 QuickJoinToastButton:SetScale(.7) --按钮缩放
 QuickJoinToastButton:SetAlpha(0) --刚进游戏时按钮透明度(鼠标经过1次后显示鼠标离开时透明度)
 QuickJoinToastButton:ClearAllPoints()
 QuickJoinToastButton:SetPoint('TOPLEFT', ChatFrame1, 'TOPLEFT', -5, 5) --位置
 QuickJoinToastButton:SetScript('OnEnter', function(self) self:SetAlpha(1) end) --鼠标进入时透明度
 QuickJoinToastButton:SetScript('OnLeave', function(self) self:SetAlpha(0) end) --鼠标离开时透明度

-- 隐藏翻页按钮(不在最后一行右下角显示翻页至底按钮)
local updateBottomButton = function(frame)
	local button = frame.buttonFrame.bottomButton
	if frame:AtBottom() then
		button:Hide()
	else
		button:Show()
	end
end
local bottomButtonClick = function(button)
	local frame = button:GetParent()
	frame:ScrollToBottom()
	updateBottomButton(frame)
end
	for i = 1, NUM_CHAT_WINDOWS do
		local frame = _G["ChatFrame" .. i]
		frame:HookScript("OnShow", updateBottomButton)
		frame.buttonFrame:Hide()
		local up = frame.buttonFrame.upButton
                local down = frame.buttonFrame.downButton
                local minimize = frame.buttonFrame.minimizeButton
		local bottom = frame.buttonFrame.bottomButton
		bottom:SetParent(frame)
		bottom:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 5, 5)
		bottom:SetScript("OnClick", bottomButtonClick)
		bottom:SetAlpha(0.8)
                bottom:SetScale(0.7)
		updateBottomButton(frame)
                up.Show = up.Hide 
                up:Hide()
                down.Show = down.Hide 
                down:Hide()
                minimize:SetScale(.7)   
                minimize:ClearAllPoints()
                minimize:SetPoint('TOPRIGHT', frame, 'TOPRIGHT', 5, 5)
                minimize:SetScript('OnEnter', function(self) self:SetAlpha(1) end)
                minimize:SetScript('OnLeave', function(self) self:SetAlpha(0) end)             	end
	hooksecurefunc("FloatingChatFrame_OnMouseScroll", updateBottomButton)
