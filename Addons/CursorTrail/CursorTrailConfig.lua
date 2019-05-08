--[[---------------------------------------------------------------------------
    Addon:  CursorTrail
    File:   CursorTrailConfig.lua
    Desc:   Functions and variables for showing this addon's configuration options.
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
local CopyTable = _G.CopyTable
local DEFAULT_CHAT_FRAME = _G.DEFAULT_CHAT_FRAME
local pairs = _G.pairs
local PlaySound = _G.PlaySound
local SOUNDKIT = _G.SOUNDKIT
local string = _G.string
local table = _G.table
local tostring = _G.tostring
local tonumber = _G.tonumber
local UIParent = _G.UIParent
local UnitAffectingCombat = _G.UnitAffectingCombat
local IsShiftKeyDown = _G.IsShiftKeyDown

local GameMenuFrame = _G.GameMenuFrame
local HideUIPanel = _G.HideUIPanel
local InterfaceOptions_AddCategory = _G.InterfaceOptions_AddCategory
local InterfaceOptionsFrame_OpenToCategory = _G.InterfaceOptionsFrame_OpenToCategory
local InterfaceOptionsFrameCancel_OnClick = _G.InterfaceOptionsFrameCancel_OnClick
local InterfaceOptionsFrame = _G.InterfaceOptionsFrame

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

kFrameWidth = 365
kFrameHeaderWidth = 350
kFrameHeaderHeight = 56
kFrameMargin = 18
kTopMargin = 26
kRowHeight = 16
kRowSpacing = 16
kColumnWidth1 = 76  -- Width of the labels column.

kBtnWidth = 96
kBtnHeight = 22
kButtonSpacing = 4

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Event Handlers                                    ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local EventFrame = CreateFrame("frame")

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
    StandardPanel_Create("/"..kTheTitle)
    OptionsFrame_Create()
end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                     StandardPanel Functions                             ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
function StandardPanel_Create(buttonText, buttonW, buttonH)
    if StandardPanel then return end  -- Return now if it already exists.

    assert(buttonText)
    buttonW = buttonW or 150
    buttonH = buttonH or 28

    -- Create a simple frame with a single button that opens the addon's options.
    -- Use this frame in the standard WoW UI.
    -- NOTE: This addon's options were not implemented in the standard UI because
    --       Blizzard has some bugs preventing editboxes from showing their values
    --       the first time.
    StandardPanel = CreateFrame("frame", kTheTitle.."StandardPanel", UIParent)
    StandardPanel.name = kTheTitle  -- The addon name that appears in the standard WoW UI.

    local headingText = StandardPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    headingText:SetPoint("TOPLEFT", 16, -16)
    headingText:SetText(kTheTitle.."  "..kTheVersion)

    local optionsBtn = CreateFrame("Button", nil, StandardPanel, "UIPanelButtonTemplate")
    optionsBtn:SetPoint("CENTER")
    optionsBtn:SetSize(buttonW, buttonH)
    optionsBtn:SetText(buttonText)

    optionsBtn:SetScript("OnClick", function(self)
        InterfaceOptionsFrameCancel_OnClick()  -- Close the standard WoW addons UI.
        HideUIPanel(GameMenuFrame)  -- Close the main WoW menu.
        OptionsFrame:Show()  -- Show this addon's config UI.
    end)

    -- Adds this top level panel to the Interface Options.
    InterfaceOptions_AddCategory(StandardPanel)
end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                     OptionsFrame Functions                              ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
function OptionsFrame_Create()
    if OptionsFrame then return end  -- Return now if it already exists.

    local frameName = kTheTitle.."OptionsFrame"
    OptionsFrame = CreateFrame("frame", frameName, UIParent)
    Globals.tinsert(Globals.UISpecialFrames, frameName) -- Allow options frame to close via ESCAPE key.

    -- - - - Frame Setup - - - --

    OptionsFrame:Hide()
    ----OptionsFrame:SetScale(0.9)
    OptionsFrame:SetFrameStrata("DIALOG")
    OptionsFrame:SetToplevel(true)
    OptionsFrame:SetPoint("CENTER")
    OptionsFrame:SetBackdrop({
        bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true, tileSize = 32, edgeSize = 24,
        insets = { left = 7, right = 8, top = 8, bottom = 7 }
    })
    OptionsFrame:SetBackdropColor(0,0,0, 1)
    OptionsFrame:EnableKeyboard(true)
    OptionsFrame.modified = false
    OptionsFrame.OriginalConfig = nil

    -- WINDOW HEADER BOX:
    OptionsFrame.HeaderTexture = OptionsFrame:CreateTexture(nil, "ARTWORK")
    OptionsFrame.HeaderTexture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header")
    OptionsFrame.HeaderTexture:SetWidth(kFrameHeaderWidth)
    OptionsFrame.HeaderTexture:SetHeight(kFrameHeaderHeight)
    OptionsFrame.HeaderTexture:SetPoint("TOP", OptionsFrame, "TOP", 0, 12)

    OptionsFrame.HeaderText = OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    OptionsFrame.HeaderText:SetPoint("TOP", OptionsFrame.HeaderTexture, "TOP", 0, -11)
    OptionsFrame.HeaderText:SetText(kTheTitle.."  "..kTheVersion)

    -- Allow moving the options window.
    OptionsFrame:EnableMouse(true)
    OptionsFrame:SetMovable(true)
    OptionsFrame:SetClampedToScreen(true)
    OptionsFrame:SetClampRectInsets(250, -250, -350, 350)
    OptionsFrame:RegisterForDrag("LeftButton")

    -- - - - EVENTS - - - --
    OptionsFrame:SetScript("OnShow", OptionsFrame_OnShow)
    OptionsFrame:SetScript("OnHide", OptionsFrame_OnHide)
    OptionsFrame:SetScript("OnDragStart", function() OptionsFrame:StartMoving() end)
    OptionsFrame:SetScript("OnDragStop", function() OptionsFrame:StopMovingOrSizing() end)
    ----OptionsFrame:SetScript("OnKeyDown", OptionsFrame_OnKeyDown)

    -- - - - WIDGETS - - - --
    local xPos = kFrameMargin
    local yPos = -kFrameMargin - kTopMargin

    -- DEFAULT BUTTON 1 --
    OptionsFrame.DefaultsBtn1 = CreateFrame("Button", "DefaultsBtn1", OptionsFrame, "OptionsButtonTemplate")
    OptionsFrame.DefaultsBtn1:SetText("Defaults 1")
    OptionsFrame.DefaultsBtn1:SetWidth(kBtnWidth)
    OptionsFrame.DefaultsBtn1:SetHeight(kBtnHeight-2)
    OptionsFrame.DefaultsBtn1:SetPoint("TOPRIGHT", OptionsFrame, "TOPRIGHT", -kFrameMargin, -kTopMargin-kButtonSpacing)
    OptionsFrame.DefaultsBtn1:SetScript("OnClick", OptionsFrame_OnDefaults)

    -- DEFAULT BUTTON 2 --
    OptionsFrame.DefaultsBtn2 = CreateFrame("Button", "DefaultsBtn2", OptionsFrame, "OptionsButtonTemplate")
    OptionsFrame.DefaultsBtn2:SetText("Defaults 2")
    OptionsFrame.DefaultsBtn2:SetWidth(kBtnWidth)
    OptionsFrame.DefaultsBtn2:SetHeight(kBtnHeight-2)
    OptionsFrame.DefaultsBtn2:SetPoint("TOP", OptionsFrame.DefaultsBtn1, "BOTTOM", 0, -kButtonSpacing)
    OptionsFrame.DefaultsBtn2:SetScript("OnClick", OptionsFrame_OnDefaults)

    -- DEFAULT BUTTON 3 --
    OptionsFrame.DefaultsBtn3 = CreateFrame("Button", "DefaultsBtn3", OptionsFrame, "OptionsButtonTemplate")
    OptionsFrame.DefaultsBtn3:SetText("Defaults 3")
    OptionsFrame.DefaultsBtn3:SetWidth(kBtnWidth)
    OptionsFrame.DefaultsBtn3:SetHeight(kBtnHeight-2)
    OptionsFrame.DefaultsBtn3:SetPoint("TOP", OptionsFrame.DefaultsBtn2, "BOTTOM", 0, -kButtonSpacing)
    OptionsFrame.DefaultsBtn3:SetScript("OnClick", OptionsFrame_OnDefaults)

    -- DEFAULT BUTTON 4 --
    OptionsFrame.DefaultsBtn4 = CreateFrame("Button", "DefaultsBtn4", OptionsFrame, "OptionsButtonTemplate")
    OptionsFrame.DefaultsBtn4:SetText("Defaults 4")
    OptionsFrame.DefaultsBtn4:SetWidth(kBtnWidth)
    OptionsFrame.DefaultsBtn4:SetHeight(kBtnHeight-2)
    OptionsFrame.DefaultsBtn4:SetPoint("TOP", OptionsFrame.DefaultsBtn3, "BOTTOM", 0, -kButtonSpacing)
    OptionsFrame.DefaultsBtn4:SetScript("OnClick", OptionsFrame_OnDefaults)
    
    -- CANCEL BUTTON --
    OptionsFrame.CancelBtn = CreateFrame("Button", "CancelBtn", OptionsFrame, "OptionsButtonTemplate")
    OptionsFrame.CancelBtn:SetText("Cancel")
    OptionsFrame.CancelBtn:SetWidth(kBtnWidth)
    OptionsFrame.CancelBtn:SetHeight(kBtnHeight+2)
    OptionsFrame.CancelBtn:SetPoint("BOTTOMRIGHT", OptionsFrame, "BOTTOMRIGHT", -kFrameMargin, kFrameMargin)
    OptionsFrame.CancelBtn:SetScript("OnClick", OptionsFrame_OnCancel)

    -- OKAY BUTTON --
    OptionsFrame.OkayBtn = CreateFrame("Button", "OkayBtn", OptionsFrame, "OptionsButtonTemplate")
    OptionsFrame.OkayBtn:SetText("Okay")
    OptionsFrame.OkayBtn:SetWidth(kBtnWidth)
    OptionsFrame.OkayBtn:SetHeight(kBtnHeight+2)
    OptionsFrame.OkayBtn:SetPoint("RIGHT", OptionsFrame.CancelBtn, "LEFT", -kButtonSpacing, 0)
    OptionsFrame.OkayBtn:SetScript("OnClick", OptionsFrame_OnOK)

    -- SCALE --
    OptionsFrame.ScaleLabel = OptionsFrame_CreateLabel("Scale (%):", xPos, yPos)
    xPos = xPos + kColumnWidth1  -- Next column.
    OptionsFrame.ScaleEditBox = OptionsFrame_CreateEditBox(xPos, yPos, nil, 3, true)
    OptionsFrame.ScaleEditBox:SetScript("OnTextChanged", OptionsFrame_OnValueChanged)
    
    -- Next row.
    xPos = kFrameMargin
    yPos = yPos - kRowHeight - kRowSpacing

    -- OFFSET --
    OptionsFrame.OffsetLabel = OptionsFrame_CreateLabel("Offset:", xPos, yPos)
    xPos = xPos + kColumnWidth1  -- Next column.
    -- X
    OptionsFrame.OfsXEditBox = OptionsFrame_CreateEditBox(xPos, yPos, 42)
    OptionsFrame.OfsXEditBox:SetScript("OnTextChanged", OptionsFrame_OnValueChanged)
    xPos = xPos + OptionsFrame.OfsXEditBox:GetWidth() + 12  -- Next column.
    -- Y
    OptionsFrame.OfsYEditBox = OptionsFrame_CreateEditBox(xPos, yPos, 42)
    OptionsFrame.OfsYEditBox:SetScript("OnTextChanged", OptionsFrame_OnValueChanged)
    
    -- Next row.
    xPos = kFrameMargin
    yPos = yPos - kRowHeight - kRowSpacing
    
    -- ALPHA LEVEL --
    OptionsFrame.AlphaLabel = OptionsFrame_CreateLabel("Opacity (%):", xPos, yPos)
    xPos = xPos + kColumnWidth1  -- Next column.
    OptionsFrame.AlphaEditBox = OptionsFrame_CreateEditBox(xPos, yPos, nil, 3, true)
    OptionsFrame.AlphaEditBox:SetScript("OnTextChanged", OptionsFrame_OnAlphaChanged)
    
    OptionsFrame_TabOrder = { OptionsFrame.ScaleEditBox, OptionsFrame.OfsXEditBox,
                              OptionsFrame.OfsYEditBox, OptionsFrame.AlphaEditBox }
                              
    -- Next row.
    xPos = kFrameMargin
    yPos = yPos - kRowHeight - kRowSpacing

    -- SHOW ONLY IN COMBAT --
    OptionsFrame.CombatCheckbox = OptionsFrame_CreateCheckBox("Show only in combat.", xPos, yPos, "CombatCheckbox")
    
    -- Next row.
    xPos = kFrameMargin
    yPos = yPos - kRowHeight - kRowSpacing

    -- TIP --
    OptionsFrame.TipText = OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    OptionsFrame.TipText:ClearAllPoints()
    OptionsFrame.TipText:SetPoint("TOPLEFT", OptionsFrame, "TOPLEFT", xPos, yPos)
    OptionsFrame.TipText:SetPoint("RIGHT", -kFrameMargin, 0)
    OptionsFrame.TipText:SetText("* TIP: You can use the Up/Down keys to change #s.")

    -- Set size of options window.
    OptionsFrame:SetHeight(-yPos + kBtnHeight + (2 * kFrameMargin) + 4)
    OptionsFrame:SetWidth(kFrameWidth)
end

-------------------------------------------------------------------------------
function OptionsFrame_OnShow()
    PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN)
    OptionsFrame.OriginalConfig = CopyTable(PlayerConfig)
    OptionsFrame_UpdateUI( OptionsFrame.OriginalConfig )
    OptionsFrame.modified = false

    CursorModel_Show(true)  -- Show the cursor model while the options window is open.
end

-------------------------------------------------------------------------------
function OptionsFrame_OnHide()
    PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE)
    if (OptionsFrame.modified == true) then
        -- Revert to previous config.
        PlayerConfig = CopyTable( OptionsFrame.OriginalConfig )
        CursorModel_Load( PlayerConfig )
        OptionsFrame.modified = false
    end

    if (PlayerConfig.UserShowOnlyInCombat == true and not UnitAffectingCombat("player")) then
        -- Not in combat, so hide the cursor model.
        CursorModel_Hide()
    end
end

-------------------------------------------------------------------------------
function OptionsFrame_OnOK()
    if (OptionsFrame.modified == true) then
        -- Store changes into PlayerConfig and save them.
        PlayerConfig.UserScale  = OptionsFrame_Value("scale")
        PlayerConfig.UserOfsX   = OptionsFrame_Value("OfsX")
        PlayerConfig.UserOfsY   = OptionsFrame_Value("OfsY")
        PlayerConfig.UserAlpha  = OptionsFrame_Value("alpha")
        PlayerConfig.UserShowOnlyInCombat = OptionsFrame_Value("combat")
        PlayerConfig_Save()

        CursorModel_Load(PlayerConfig)
        OptionsFrame.modified = false
    end

    OptionsFrame:Hide()
end

-------------------------------------------------------------------------------
function OptionsFrame_OnCancel()
    OptionsFrame:Hide()
end

-------------------------------------------------------------------------------
function OptionsFrame_OnDefaults(self)
    local btnName = self:GetText()
    local bShowCombat = OptionsFrame_Value("combat")  -- Preserve this setting.
    
    PlaySound(SOUNDKIT.GS_TITLE_OPTION_OK)
    if btnName:find("2") then
        PlayerConfig = CopyTable(kDefaultConfig2)
    elseif btnName:find("3") then
        PlayerConfig = CopyTable(kDefaultConfig3)
    elseif btnName:find("4") then
        PlayerConfig = CopyTable(kDefaultConfig4)
    else
        PlayerConfig = CopyTable(kDefaultConfig)
    end
    
    PlayerConfig.UserShowOnlyInCombat = bShowCombat  
    PlayerConfig_Save()
    
    CursorModel_Load(PlayerConfig)
    CursorModel_Show(true)
    OptionsFrame_UpdateUI(PlayerConfig)
    OptionsFrame.modified = true
end

-------------------------------------------------------------------------------
function OptionsFrame_OnKeyDown(self, key)
    if key == "TAB" then OptionsFrame_FocusNext()
    elseif key == "ESCAPE" then OptionsFrame:Hide()
    elseif key == "UP" then OptionsFrame_IncrDecrValue(self, 1)
    elseif key == "DOWN" then OptionsFrame_IncrDecrValue(self, -1)
    end
end

-------------------------------------------------------------------------------
function OptionsFrame_FocusNext()
    count = #OptionsFrame_TabOrder
    if IsShiftKeyDown() then  -- Previous control.
        for i = 2, count do 
            if OptionsFrame_TabOrder[i]:HasFocus() then
                return OptionsFrame_TabOrder[i-1]:SetFocus()
            end
        end
        OptionsFrame_TabOrder[count]:SetFocus()
    else  -- Next control.
        for i = 1, count-1 do 
            if OptionsFrame_TabOrder[i]:HasFocus() then
                return OptionsFrame_TabOrder[i+1]:SetFocus()
            end
        end
        OptionsFrame_TabOrder[1]:SetFocus()
    end
end

-------------------------------------------------------------------------------
function OptionsFrame_IncrDecrValue(self, delta)
    num = tonumber(self:GetText()) or 0
    num = num + delta
    self:SetText(num)
    local handler = self:GetScript("OnTextChanged")
    if handler then handler(num, true) end
    self:HighlightText()
    self:SetCursorPosition(99)
end

-------------------------------------------------------------------------------
function OptionsFrame_OnValueChanged(frame, isUserInput)
    ----local self, editbox = frame.obj, frame.obj.editbox
    if (isUserInput == true) then
        CursorModel_ApplyUserSettings( 
                    OptionsFrame_Value("scale"),
                    OptionsFrame_Value("OfsX"),
                    OptionsFrame_Value("OfsY"),
                    OptionsFrame_Value("alpha") )
        OptionsFrame.modified = true
    end
end

-------------------------------------------------------------------------------
function OptionsFrame_OnAlphaChanged(frame, isUserInput)
    ----local self, editbox = frame.obj, frame.obj.editbox
    if (isUserInput == true) then
        CursorModel:SetAlpha( OptionsFrame_Value("alpha") )
        OptionsFrame.modified = true
    end
end

-------------------------------------------------------------------------------
function OptionsFrame_UpdateUI(config)
    assert(config)
    OptionsFrame_Value("scale", config.UserScale)
    OptionsFrame_Value("OfsX", config.UserOfsX)
    OptionsFrame_Value("OfsY", config.UserOfsY)
    OptionsFrame_Value("alpha", config.UserAlpha)
    OptionsFrame_Value("combat", config.UserShowOnlyInCombat or false)
end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                OptionsFrame Helper Functions                            ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
function OptionsFrame_Value(valName, newVal)
-- Gets or sets a value in the options frame UI.
-- If only 'valName' is passed in, the specified value is returned.
-- If 'valName' and 'newVal' are both passed in, the specified value is set.
-- NOTE: This function can't be used to set a value to nil!
    local retVal, editbox, minVal, maxVal
    local multiplier = 1

    --=== CHECKBOXES ===--
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (valName == "combat") then
        if (newVal == nil) then  -- GET
            retVal = OptionsFrame.CombatCheckbox:GetChecked()
        else -- SET
            OptionsFrame.CombatCheckbox:SetChecked(newVal)
            OptionsFrame.modified = true
        end
        return retVal
    end

    --=== EDITBOXES ===--
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    valName = string.lower(valName)
    if (valName == "scale") then
        editbox = OptionsFrame.ScaleEditBox
        minVal = 0.04
        multiplier = 100
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (valName == "ofsx") then
        editbox = OptionsFrame.OfsXEditBox
        multiplier = 10
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (valName == "ofsy") then
        editbox = OptionsFrame.OfsYEditBox
        multiplier = 10
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    elseif (valName == "alpha") then
        editbox = OptionsFrame.AlphaEditBox
        minVal, maxVal = 0.01, 1.00
        multiplier = 100
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    else assert(nil, 'Invalid parameter!  (valName: "'..(valName or "NIL")..'")') end
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    if (newVal == nil) then  -- GET
        retVal = (tonumber(editbox:GetText()) or 0) / multiplier 
        if (minVal ~= nil and retVal < minVal) then retVal = minVal end
        if (maxVal ~= nil and retVal > maxVal) then retVal = maxVal end
        ----print( 'OptionsFrame_Value("'..valName..'") returned: '..(retVal or "NIL") )
    else -- SET
        if (minVal ~= nil and newVal < minVal) then newVal = minVal end
        if (maxVal ~= nil and newVal > maxVal) then newVal = maxVal end
        editbox:ClearFocus()
        editbox:SetText( (tonumber(newVal) or 0) * multiplier )
        OptionsFrame.modified = true
        ----print( 'OptionsFrame_Value("'..valName..'") set to: '..newVal )
    end

    return retVal
end

-------------------------------------------------------------------------------
function OptionsFrame_CreateLabel(labelText, x, y, fontName)
    local labelFrame = OptionsFrame:CreateFontString(nil, "ARTWORK", fontName or "GameFontNormal")
    labelFrame:ClearAllPoints()
    labelFrame:SetPoint("TOPLEFT", OptionsFrame, "TOPLEFT", x, y)
    labelFrame:SetPoint("RIGHT", OptionsFrame, "LEFT", kFrameMargin+kColumnWidth1, 0)
    labelFrame:SetJustifyH("RIGHT")
    labelFrame:SetWordWrap(false)
    labelFrame:SetText(labelText)
    return labelFrame
end

-------------------------------------------------------------------------------
function OptionsFrame_CreateEditBox(x, y, width, maxChars, bNumeric)
    local editboxFrame = CreateFrame("EditBox", nil, OptionsFrame, "InputBoxTemplate")
    editboxFrame:SetPoint("TOPLEFT", OptionsFrame, "TOPLEFT", x+9, y+10)
    editboxFrame:SetAutoFocus(false)
    editboxFrame:SetSize(32, 32)
    if maxChars then
        editboxFrame:SetMaxLetters(maxChars)
        editboxFrame:SetWidth(maxChars*10)
    end
    if width then
        editboxFrame:SetWidth(width)
    end
    if (bNumeric == true) then 
        editboxFrame:SetNumeric(true)  -- Allows characters 0-9 only!
    end
    editboxFrame:SetScript("OnEnterPressed", OptionsFrame_OnOK)
    ----editboxFrame:SetScript("OnTabPressed", OptionsFrame_FocusNext)
    editboxFrame:SetScript("OnKeyDown", OptionsFrame_OnKeyDown)
    editboxFrame:SetScript("OnEditFocusGained", function(self) self:HighlightText(); self:SetCursorPosition(99) end)
    editboxFrame:SetScript("OnMouseWheel", OptionsFrame_IncrDecrValue)
    
    return editboxFrame
end

-------------------------------------------------------------------------------
function OptionsFrame_CreateCheckBox(labelText, x, y, refName)
	local checkbox = CreateFrame("CheckButton", refName, OptionsFrame, "InterfaceOptionsCheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", OptionsFrame, "TOPLEFT", x+kFrameMargin+kColumnWidth1-17, y+7)
	checkbox:SetScript('OnClick', function(self) OptionsFrame.modified = true end)

    ----Globals[refName.."Text"]:SetText( labelText )
    checkbox.label = OptionsFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    checkbox.label:SetPoint("TOP", OptionsFrame, "TOP", 0, y)
    checkbox.label:SetPoint("LEFT", checkbox, "RIGHT", 0, 0)
    checkbox.label:SetPoint("RIGHT", OptionsFrame, "RIGHT", -kFrameMargin, 0)
    checkbox.label:SetJustifyH("LEFT")
    checkbox.label:SetWordWrap(false)
    checkbox.label:SetText(labelText)

    return checkbox
end

--- End of File ---