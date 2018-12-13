local SLE, T, E, L, V, P, G = unpack(select(2, ...))
local CLOSE = CLOSE
local ACCEPT = ACCEPT
local CANCEL = CANCEL
local _G = _G
local ReloadUI = ReloadUI

--Version check
E.PopupDialogs["VERSION_MISMATCH"] = {
	text = SLE:MismatchText(),
	button1 = CLOSE,
	timeout = 0,
	whileDead = 1,
	preferredIndex = 3,
}

--Chat stuff
E.PopupDialogs["SLE_CHAT_HISTORY_CLEAR"] = {
	text = L["This will clear your chat history and reload your UI.\nContinue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self) if _G["ElvCharacterDB"].ChatHistoryLog then T.twipe(_G["ElvCharacterDB"].ChatHistoryLog); ReloadUI() end end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}

E.PopupDialogs["SLE_EDIT_HISTORY_CLEAR"] = {
	text = L["This will clear your editbox history and reload your UI.\nContinue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self) if _G["ElvCharacterDB"].ChatEditHistory then T.twipe(_G["ElvCharacterDB"].ChatEditHistory); ReloadUI() end end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}
--Do you sware you are not an idiot
E.PopupDialogs["SLE_ADVANCED_POPUP"] = {
	text = L["SLE_ADVANCED_POPUP_TEXT"],
	button1 = L["I Swear"],
	button2 = DECLINE,
	OnAccept = function() 
		E.global.sle.advanced.confirmed = true
		E.global.sle.advanced.general = true
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}

--Gold clear popup
E.PopupDialogs['SLE_CONFIRM_DELETE_CURRENCY_CHARACTER'] = {
	button1 = YES,
	button2 = NO,
	OnCancel = E.noop;
}

--Incompatibility messages
E.PopupDialogs["ENHANCED_SLE_INCOMPATIBLE"] = {
	text = L["Oh lord, you have got ElvUI Enhanced and Shadow & Light both enabled at the same time. Select an addon to disable."],
	OnAccept = function() T.DisableAddOn("ElvUI_Enhanced"); ReloadUI() end,
	OnCancel = function() T.DisableAddOn("ElvUI_SLE"); ReloadUI() end,
	button1 = 'ElvUI Enhanced',
	button2 = 'Shadow & Light',
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}

E.PopupDialogs["LOOTCONFIRM_SLE_INCOMPATIBLE"] = {
	text = L["You have got Loot Confirm and Shadow & Light both enabled at the same time. Select an addon to disable."],
	OnAccept = function() T.DisableAddOn("LootConfirm"); ReloadUI() end,
	OnCancel = function() T.DisableAddOn("ElvUI_SLE"); ReloadUI() end,
	button1 = 'Loot Confirm',
	button2 = 'Shadow & Light',
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}

E.PopupDialogs["TRANSAB_SLE_INCOMPATIBLE"] = {
	text = L["You have got ElvUI Transparent Actionbar Backdrops and Shadow & Light both enabled at the same time. Select an addon to disable."],
	OnAccept = function() T.DisableAddOn("ElvUITransparentActionbars"); ReloadUI() end,
	OnCancel = function() T.DisableAddOn("ElvUI_SLE"); ReloadUI() end,
	button1 = 'Transparent Actionbar Backdrops',
	button2 = 'Shadow & Light',
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}

E.PopupDialogs["SLE_INCOMPATIBLE_ADDON"] = {
	text = T.gsub(L["INCOMPATIBLE_ADDON"], "ElvUI", "Shadow & Light"),
	OnAccept = function(self) T.DisableAddOn(E.PopupDialogs["SLE_INCOMPATIBLE_ADDON"].addon); ReloadUI(); end,
	OnCancel = function(self) E.PopupDialogs["SLE_INCOMPATIBLE_ADDON"].optiontable[E.PopupDialogs["SLE_INCOMPATIBLE_ADDON"].value] = false; ReloadUI(); end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}

E.PopupDialogs["SLE_APPLY_FONT_WARNING"] = {
	text = L["Are you sure you want to apply this font to all ElvUI elements?"],
	OnAccept = function()
		-- local font = E.db.general.font
		-- local fontSize = E.db.general.fontSize
		local font = E.PopupDialogs["SLE_APPLY_FONT_WARNING"].allFont
		local fontSize = E.PopupDialogs["SLE_APPLY_FONT_WARNING"].allSize
		local fontOutline = E.PopupDialogs["SLE_APPLY_FONT_WARNING"].allOutline

		E.db.sle.bags.petLevel.fonts.font = font
		E.db.sle.bags.petLevel.fonts.size = fontSize
		E.db.sle.bags.petLevel.fonts.outline = fontOutline

		E.db.sle.media.fonts.zone.font = font
		-- E.db.sle.media.fonts.zone.size = fontSize
		E.db.sle.media.fonts.zone.outline = fontOutline

		E.db.sle.media.fonts.subzone.font = font
		-- E.db.sle.media.fonts.subzone.size = fontSize
		E.db.sle.media.fonts.subzone.outline = fontOutline

		E.db.sle.media.fonts.pvp.font = font
		-- E.db.sle.media.fonts.pvp.size = fontSize
		E.db.sle.media.fonts.pvp.outline = fontOutline

		E.db.sle.media.fonts.mail.font = font
		E.db.sle.media.fonts.mail.size = fontSize
		E.db.sle.media.fonts.mail.outline = fontOutline

		E.db.sle.media.fonts.editbox.font = font
		E.db.sle.media.fonts.editbox.size = fontSize
		E.db.sle.media.fonts.editbox.outline = fontOutline

		E.db.sle.media.fonts.gossip.font = font
		E.db.sle.media.fonts.gossip.size = fontSize
		E.db.sle.media.fonts.gossip.outline = fontOutline

		E.db.sle.media.fonts.objective.font = font
		E.db.sle.media.fonts.objective.size = fontSize
		E.db.sle.media.fonts.objective.outline = fontOutline

		E.db.sle.media.fonts.objectiveHeader.font = font
		E.db.sle.media.fonts.objectiveHeader.size = fontSize
		E.db.sle.media.fonts.objectiveHeader.outline = fontOutline

		E.db.sle.media.fonts.questFontSuperHuge.font = font
		-- E.db.sle.media.fonts.questFontSuperHuge.size = fontSize
		E.db.sle.media.fonts.questFontSuperHuge.outline = fontOutline

		E.db.sle.minimap.coords.font = font
		E.db.sle.minimap.coords.fontSize = fontSize
		E.db.sle.minimap.coords.fontOutline = fontOutline

		E.db.sle.minimap.instance.font = font
		E.db.sle.minimap.instance.fontSize = fontSize
		E.db.sle.minimap.instance.fontOutline = fontOutline

		E.db.sle.minimap.locPanel.font = font
		E.db.sle.minimap.locPanel.fontSize = fontSize
		E.db.sle.minimap.locPanel.fontOutline = fontOutline

		E.db.sle.nameplates.threat.font = font
		E.db.sle.nameplates.threat.size = fontSize
		E.db.sle.nameplates.threat.fontOutline = fontOutline

		E.db.sle.nameplates.targetcount.font = font
		E.db.sle.nameplates.targetcount.size = fontSize
		E.db.sle.nameplates.targetcount.fontOutline = fontOutline

		E.db.sle.screensaver.title.font = font
		-- E.db.sle.screensaver.title.size = fontSize
		E.db.sle.screensaver.title.outline = fontOutline

		E.db.sle.screensaver.subtitle.font = font
		-- E.db.sle.screensaver.subtitle.size = fontSize
		E.db.sle.screensaver.subtitle.outline = fontOutline

		E.db.sle.screensaver.date.font = font
		-- E.db.sle.screensaver.date.size = fontSize
		E.db.sle.screensaver.date.outline = fontOutline

		E.db.sle.screensaver.player.font = font
		-- E.db.sle.screensaver.player.size = fontSize
		E.db.sle.screensaver.player.outline = fontOutline

		E.db.sle.screensaver.tips.font = font
		-- E.db.sle.screensaver.tips.size = fontSize
		E.db.sle.screensaver.tips.outline = fontOutline

		E.db.sle.skins.merchant.list.nameFont = font
		E.db.sle.skins.merchant.list.nameSize = fontSize
		E.db.sle.skins.merchant.list.nameOutline = fontOutline

		E.db.sle.skins.merchant.list.subFont = font
		E.db.sle.skins.merchant.list.subSize = fontSize
		E.db.sle.skins.merchant.list.subOutline = fontOutline

		E.db.sle.skins.merchant.list.nameFont = font
		E.db.sle.skins.merchant.list.nameSize = fontSize
		E.db.sle.skins.merchant.list.nameOutline = fontOutline

		E.db.sle.Armory.Character.Level.Font = font
		E.db.sle.Armory.Character.Level.FontSize = fontSize
		E.db.sle.Armory.Character.Level.FontStyle = fontOutline

		E.db.sle.Armory.Character.Enchant.Font = font
		-- E.db.sle.Armory.Character.Enchant.FontSize = fontSize
		E.db.sle.Armory.Character.Enchant.FontStyle = fontOutline

		E.db.sle.Armory.Character.Stats.ItemLevel.font = font
		E.db.sle.Armory.Character.Stats.ItemLevel.size = fontSize
		E.db.sle.Armory.Character.Stats.ItemLevel.outline = fontOutline

		E.db.sle.Armory.Character.Stats.statFonts.font = font
		E.db.sle.Armory.Character.Stats.statFonts.size = fontSize
		E.db.sle.Armory.Character.Stats.statFonts.outline = fontOutline

		E.db.sle.Armory.Character.Stats.catFonts.font = font
		E.db.sle.Armory.Character.Stats.catFonts.size = fontSize
		E.db.sle.Armory.Character.Stats.catFonts.outline = fontOutline

		E.db.sle.Armory.Inspect.Level.Font = font
		E.db.sle.Armory.Inspect.Level.FontSize = fontSize
		E.db.sle.Armory.Inspect.Level.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.Enchant.Font = font
		-- E.db.sle.Armory.Inspect.Enchant.FontSize = fontSize
		E.db.sle.Armory.Inspect.Enchant.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.tabsText.Font = font
		-- E.db.sle.Armory.Inspect.tabsText.FontSize = fontSize
		E.db.sle.Armory.Inspect.tabsText.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.Name.Font = font
		-- E.db.sle.Armory.Inspect.Name.FontSize = fontSize
		E.db.sle.Armory.Inspect.Name.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.Title.Font = font
		-- E.db.sle.Armory.Inspect.Title.FontSize = fontSize
		E.db.sle.Armory.Inspect.Title.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.LevelRace.Font = font
		-- E.db.sle.Armory.Inspect.LevelRace.FontSize = fontSize
		E.db.sle.Armory.Inspect.LevelRace.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.Guild.Font = font
		-- E.db.sle.Armory.Inspect.Guild.FontSize = fontSize
		E.db.sle.Armory.Inspect.Guild.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.infoTabs.Font = font
		-- E.db.sle.Armory.Inspect.infoTabs.FontSize = fontSize
		E.db.sle.Armory.Inspect.infoTabs.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.pvpText.Font = font
		-- E.db.sle.Armory.Inspect.pvpText.FontSize = fontSize
		E.db.sle.Armory.Inspect.pvpText.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.pvpType.Font = font
		-- E.db.sle.Armory.Inspect.pvpType.FontSize = fontSize
		E.db.sle.Armory.Inspect.pvpType.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.pvpRating.Font = font
		-- E.db.sle.Armory.Inspect.pvpRating.FontSize = fontSize
		E.db.sle.Armory.Inspect.pvpRating.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.pvpRecord.Font = font
		-- E.db.sle.Armory.Inspect.pvpRecord.FontSize = fontSize
		E.db.sle.Armory.Inspect.pvpRecord.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.guildName.Font = font
		-- E.db.sle.Armory.Inspect.guildName.FontSize = fontSize
		E.db.sle.Armory.Inspect.guildName.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.guildMembers.Font = font
		-- E.db.sle.Armory.Inspect.guildMembers.FontSize = fontSize
		E.db.sle.Armory.Inspect.guildMembers.FontStyle = fontOutline

		E.db.sle.Armory.Inspect.Spec.Font = font
		-- E.db.sle.Armory.Inspect.Spec.FontSize = fontSize
		E.db.sle.Armory.Inspect.Spec.FontStyle = fontOutline

		E:UpdateAll(true)
	end,
	OnCancel = function() E:StaticPopup_Hide("SLE_APPLY_FONT_WARNING"); end,
	button1 = YES,
	button2 = CANCEL,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
}
