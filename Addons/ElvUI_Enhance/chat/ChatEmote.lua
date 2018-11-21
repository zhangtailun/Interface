local _, ns = ...
local CurEB = "ChatFrame1EditBox"

local Config = {
	iconSize = 18,
	enableEmoteInput = true,
	enableBubbleEmote = true,
}

local customEmoteStartIndex = 9

local emotes = {
	{"{rt1}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_1]=]},
	{"{rt2}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_2]=]},
	{"{rt3}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_3]=]},
	{"{rt4}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_4]=]},
	{"{rt5}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_5]=]},
	{"{rt6}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_6]=]},
	{"{rt7}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_7]=]},
	{"{rt8}",	[=[Interface\TargetingFrame\UI-RaidTargetingIcon_8]=]},
	{"{天使}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Angel]=]},
	{"{生气}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Angry]=]},

	{"{大笑}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Biglaugh]=]},
	{"{鼓掌}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Clap]=]},
	{"{酷}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Cool]=]},
	{"{哭}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Cry]=]},
	{"{可爱}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Cutie]=]},
	{"{鄙视}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Despise]=]},
	{"{美梦}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Dreamsmile]=]},
	{"{尴尬}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Embarrass]=]},
	{"{邪恶}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Evil]=]},
	{"{兴奋}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Excited]=]},

	{"{晕}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Faint]=]},
	{"{打架}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Fight]=]},
	{"{流感}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Flu]=]},
	{"{呆}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Freeze]=]},
	{"{皱眉}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Frown]=]},
	{"{致敬}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Greet]=]},
	{"{鬼脸}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Grimace]=]},
	{"{龇牙}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Growl]=]},
	{"{开心}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Happy]=]},
	{"{心}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Heart]=]},

	{"{恐惧}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Horror]=]},
	{"{生病}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Ill]=]},
	{"{无辜}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Innocent]=]},
	{"{功夫}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Kongfu]=]},
	{"{花痴}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Love]=]},
	{"{邮件}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Mail]=]},
	{"{化妆}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Makeup]=]},
	{"{马里奥}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Mario]=]},
	{"{沉思}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Meditate]=]},
	{"{可怜}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Miserable]=]},

	{"{好}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Okay]=]},
	{"{漂亮}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Pretty]=]},
	{"{吐}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Puke]=]},
	{"{握手}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Shake]=]},
	{"{喊}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Shout]=]},
	{"{闭嘴}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Shuuuu]=]},
	{"{害羞}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Shy]=]},
	{"{睡觉}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Sleep]=]},
	{"{微笑}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Smile]=]},
	{"{吃惊}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Suprise]=]},

	{"{失败}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Surrender]=]},
	{"{流汗}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Sweat]=]},
	{"{流泪}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Tear]=]},
	{"{悲剧}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Tears]=]},
	{"{想}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Think]=]},
	{"{偷笑}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Titter]=]},
	{"{猥琐}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Ugly]=]},
	{"{胜利}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Victory]=]},
	{"{雷锋}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Volunteer]=]},
	{"{委屈}",	[=[Interface\Addons\ElvUI_Enhance\chat\icon\Wronged]=]},
}

local fmtstring = format("\124T%%s:%d\124t",max(floor(select(2,SELECTED_CHAT_FRAME:GetFont())),Config.iconSize))

local function myChatFilter(self, event, msg, ...)
	for i = customEmoteStartIndex, #emotes do
		if msg:find(emotes[i][1]) then
			msg = msg:gsub(emotes[i][1],format(fmtstring,emotes[i][2]))
			--break
		end
	end
	return false, msg, ...
end

local ShowEmoteTableButton
local EmoteTableFrame

function EmoteIconMouseUp(frame, button)
	if (button == "LeftButton") then
		local ChatFrameEditBox = ChatEdit_ChooseBoxForSend()
		if (not ChatFrameEditBox:IsShown()) then
			ChatEdit_ActivateChat(ChatFrameEditBox)
		end
		ChatFrameEditBox:Insert(frame.text)
	end
	ToggleEmoteTable()
end

function CreateEmoteTableFrame()
	EmoteTableFrame = CreateFrame("Frame", "EmoteTableFrame", UIParent)

	EmoteTableFrame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", 
		tile = true, tileSize = 16, edgeSize = 16, 
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	})
	EmoteTableFrame:SetBackdropColor(0.05, 0.05, 0.05)
	EmoteTableFrame:SetBackdropBorderColor(0.3, 0.3, 0.3)
	EmoteTableFrame:SetWidth((Config.iconSize+4) * 12+10)
	EmoteTableFrame:SetHeight((Config.iconSize+4) * 5+10)
	EmoteTableFrame:SetPoint("BOTTOM", ChatFrame1EditBox, -65, 225)
	EmoteTableFrame:Hide()
	EmoteTableFrame:SetFrameStrata("DIALOG")

	local icon, row, col
	row = 1
	col = 1
	for i=1,#emotes do 
		text = emotes[i][1]
		texture = emotes[i][2]
		icon = CreateFrame("Frame", format("IconButton%d",i), EmoteTableFrame)
		icon:SetWidth(Config.iconSize+4)
		icon:SetHeight(Config.iconSize+4)
		icon.text = text
		icon.texture = icon:CreateTexture(nil,"ARTWORK")
		icon.texture:SetTexture(texture)
		icon.texture:SetAllPoints(icon)
		icon:Show()
		icon:SetPoint("TOPLEFT", 5+(col-1)*(Config.iconSize+4), -5-(row-1)*(Config.iconSize+4))
		icon:SetScript("OnMouseUp", EmoteIconMouseUp)
		icon:EnableMouse(true)
		col = col + 1 
		if (col>12) then
			row = row + 1
			col = 1
		end
	end
end

function ToggleEmoteTable()
	if (not EmoteTableFrame) then CreateEmoteTableFrame() end
	if (EmoteTableFrame:IsShown()) then
		EmoteTableFrame:Hide()
	else
		EmoteTableFrame:Show()
	end

end

function EmoteTable_Button_OnUpdate(self)
	local CheckEB = "";
	local ShowButton = false;
	if (not EmoteTableFrame) then CreateEmoteTableFrame() end
	--[[for i = 1, NUM_CHAT_WINDOWS do
		CheckEB = format("%s%d%s", "ChatFrame", i, "EditBox");
		if _G[CheckEB]:GetAlpha() ==1 and _G[CheckEB]:IsShown() then
			CurEB = CheckEB;
			ShowButton = true;
		end
	end
	if ShowButton then
		EmoteTable_Button:Show();
	else
		EmoteTable_Button:Hide();
		EmoteTableFrame:Hide();
	end]]
	EmoteTable_Button:Show();
end

function ChatEmoteButtons()
	local cf = _G["ChatFrame1"]
	local button = CreateFrame("Button", format("ShowEmoteTableButton"), UIParent)
	local bg = button:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture("Interface\\Buttons\\WHITE8x8")
	bg:SetAllPoints(button)
	bg:SetVertexColor(0.05, 0.05, 0.05)
	button:SetPoint("BOTTOMRIGHT", ChatFrame1 , 0, 0)
	button:SetHeight(20)
	button:SetWidth(20)
	button:SetAlpha(0)
	--TukuiDB.SetTemplate(button)

	local buttontext = button:CreateFontString(nil,"OVERLAY",nil)
	buttontext:SetFont("fonts\\ARIALN.TTF",12,"OUTLINE")
	buttontext:SetText("E")
	buttontext:SetPoint("CENTER")
	buttontext:SetJustifyH("CENTER")
	buttontext:SetJustifyV("CENTER")

	button:SetScript("OnMouseUp", function(self, btn)
		ToggleEmoteTable()
	end)
	button:SetScript("OnEnter", function() 
		button:SetAlpha(1) 
	end)
	button:SetScript("OnLeave", function() button:SetAlpha(0) end)
	button:Show()
	ShowEmoteTableButton = button
end




ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_AFK", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_DND", myChatFilter)

if (Config.enableEmoteInput) then
	CreateEmoteTableFrame()
end


