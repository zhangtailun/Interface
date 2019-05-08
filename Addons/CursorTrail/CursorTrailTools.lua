--[[---------------------------------------------------------------------------
    Addon:  CursorTrail
    File:   CursorTrailTools.lua
    Desc:   This contains non-essential functions that were useful during
            the development of this addon, and may be useful in the future
            if Blizzard changes their model API again.
-----------------------------------------------------------------------------]]
             
--[[                       Saved (Persistent) Variables                      ]]
CursorTrail_PlayerConfig = CursorTrail_PlayerConfig or {}

--[[                       Aliases to Globals                                ]]
local Globals = _G
local assert = _G.assert
local print = _G.print
local CreateFrame = _G.CreateFrame
local floor = _G.floor
local tonumber = _G.tonumber
local select = _G.select
local pairs = _G.pairs
local UIParent = _G.UIParent
local GetCursorPosition = _G.GetCursorPosition
local GetScreenWidth = _G.GetScreenWidth
local GetScreenHeight = _G.GetScreenHeight
local PlaySound = _G.PlaySound
local SOUNDKIT = _G.SOUNDKIT
local GetCurrentResolution = _G.GetCurrentResolution
local GetScreenResolutions = _G.GetScreenResolutions
local type = _G.type

--[[                       Declare Namespace                                 ]]
local CursorTrail = _G.CursorTrail or {}
if (not _G.CursorTrail) then _G.CursorTrail = CursorTrail end

--[[                       Remap Global Environment                          ]]
setfenv(1, _G.CursorTrail)  -- Everything after this uses our namespace rather than _G.

--[[                       Helper Functions                                  ]]

-------------------------------------------------------------------------------
function round(val, numDecimalPositions)
    if (val == nil) then return "NIL" end
    if (numDecimalPositions == nil) then numDecimalPositions = 0 end

    local factor = 10 ^ numDecimalPositions
    val = val * factor
    val = floor(val + 0.5)
    val = val / factor
    return val
end

-------------------------------------------------------------------------------
function dumpObject(obj, heading, indents)
    local dataType
    
    indents = indents or ""
    heading = heading or "Object Dump"
    if (heading ~= nil and heading ~= "") then print(indents .. heading .. " ...") end
    if (obj == nil) then print(indents .. "Object is NIL."); return end
    indents = indents .. "    "
    
    local count = 0
    for varName, value in pairs(obj) do
        count = count + 1
        dataType = type(value)
        if (dataType == nil or dataType == "nil") then
            print(indents .. varName .. " = nil")
        elseif (dataType=="string") then
            print(indents .. varName .. " = '" .. (value or "nil") .. "'")
        elseif (dataType=="number") then
            print(indents .. varName .. " = " .. (value or "nil"))
        elseif (dataType=="boolean") then
            print(indents .. varName .. " = " .. (value and "true" or "false"))
        else
            print(indents .. varName .. " = " .. dataType)
            if (dataType=="table") then dumpObject(value, "", indents) end
        end
    end
    if (count == 0) then print(indents .. "Object is empty.") end
end

--[[                       Text Frame Functions                              ]]

-------------------------------------------------------------------------------
function TextFrame_SetText(txt)
    if (txt == nil or txt == "") then  -- Empty text string.  Hide the text frame.
        if TextFrame then -- Close the text frame.
            TextFrame:Hide()
            TextFrameText = nil
            TextFrame = nil
        end
    else  -- 'txt' parameter is not empty.
        if not TextFrame then TextFrame_Create() end
        if TextFrameText then
            TextFrameText:SetText(txt)
            TextFrame:Show()
        else
            print(txt)
        end
    end
end

-------------------------------------------------------------------------------
function TextFrame_Create()
    if TextFrame then TextFrame_Close() end
    TextFrame = CreateFrame("frame", "CursorTrailTextFrame", UIParent)

    -- Text Window
    TextFrame:SetScale(2.0)
    TextFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, -ScreenH * 0.1)
    TextFrame:SetFrameStrata("DIALOG")
    TextFrame:SetToplevel(true)
    TextFrame:SetSize(ScreenW, 50)

    -- Text Window's Text
    TextFrameText = TextFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
    TextFrameText:SetPoint("CENTER", TextFrame, "CENTER", 0, 0)
    TextFrameText:SetJustifyH("CENTER")
    TextFrameText:SetJustifyV("CENTER")
end

--[[                          Tool Functions                                 ]]

-------------------------------------------------------------------------------
function HandleToolSwitches(params)
    if (params == "screen") then
        Screen_Dump()
    elseif (params == "camera") then
        Camera_Dump()
    elseif (params == "config") then
        dumpObject(PlayerConfig, "CONFIG INFO")
    elseif (params == "model") then
        dumpObject(CursorModel, "MODEL INFO")
    elseif (params == "cal") then
        Calibrating_DoNextStep()
    elseif (params == "track") then
        TrackPosition()
    elseif (params == "test1") then
        -- Load a cursor model that has a large offset and is rotated downward in 3D space.
        PlayerConfig_SetDefaults()
        
        PlayerConfig.Path = "spells\\soulfunnel_impact_chest.mdx"  
        PlayerConfig.BaseOfsX = 9.3
        PlayerConfig.BaseOfsY = 0.6
        PlayerConfig.BaseStepX = 3425
        PlayerConfig.BaseStepY = 3154

--~         PlayerConfig.Path = "spells\\chargetrail.mdx"
--~         PlayerConfig.BaseOfsX = 0.4
--~         PlayerConfig.BaseOfsY = -3.3
--~         PlayerConfig.BaseStepX = 3419
--~         PlayerConfig.BaseStepY = 3140
        
        CursorModel_Load()
    else 
        return false  -- 'params' was NOT handled by this function.
    end
    
    return true  -- 'params' WAS handled by this function.
end

-------------------------------------------------------------------------------
function Screen_Dump(heading)
    -- Print the current resolution to chat
    local origGameFrame = kGameFrame
    local currentResolutionIndex = GetCurrentResolution()
    local resolution = select(currentResolutionIndex, GetScreenResolutions())
    local dumpStr = (heading or "SCREEN INFO") .. " ..."
            .."\n  Screen Size = "..(resolution or "Unknown")
    
    for i = 1, 2 do
        if (i == 1) then
            dumpStr = dumpStr .. "\n  -----[ WORLD FRAME ]-----"
            kGameFrame = Globals.WorldFrame
        else 
            dumpStr = dumpStr .. "\n  -----[ PARENT FRAME ]-----"
            kGameFrame = Globals.UIParent
        end

        local unscaledW, unscaledH = getScreenSize()  -- Uses kGameFrame.
        local scaledW, scaledH, scaledMidX, scaledMidY, uiscale, hypotenuse = getScreenScaledSize()  -- Uses kGameFrame.
        
        dumpStr = dumpStr
            .."\n  Window Size = "..round(unscaledW,2).." x "..round(unscaledH,2)
            .."\n  Aspect Ratio = "..round(scaledW/scaledH,2)
            .."\n  UI Scale = "..round(uiscale,3)
            .."\n  Scaled Size = "..round(scaledW,2).." x "..round(scaledH,2)
            .."\n  Scaled Center = ("..round(scaledMidX,2)..", "..round(scaledMidY,2)..")"
            .."\n  Scaled Hypotenuse = "..round(hypotenuse,2)
    end
    
    print(dumpStr)    
    kGameFrame = origGameFrame
end

-------------------------------------------------------------------------------
function Camera_Dump(heading)
    assert(CursorModel)
    local z, x, y = CursorModel:GetCameraPosition()
    local tz, tx, ty = CursorModel:GetCameraTarget()

    heading = heading or "CAMERA INFO (Distance/Yaw/Pitch)"
    print( heading.." ..."
            .."\n  Camera Position = "
                ..round(z,3) -- Camera's distance from the view port?
                .."  /  "..round(x,3)   -- Rotation around the z-axis.
                .."  /  "..round(y,3)   -- Rotation around the y-axis.
            .."\n  Camera Target    = "
                ..round(tz,3)  -- Camera target's distance from the view port?
                .."  /  "..round(tx,3)    -- Rotation around the z-axis.
                .."  /  "..round(ty,3) )  -- Rotation around the y-axis.
end

-------------------------------------------------------------------------------
function Calibrating_DoNextStep()
    assert(ScreenHypotenuse)
    assert(PlayerConfig)
    assert(CursorModel)

    local function printStep(stepNum)
        TextFrame_SetText( "CALIBRATION STEP #" .. stepNum .. "\n\n"
                        .. "(Click the center of the cursor effect.)" )
    end

    if (Calibrating ~= true) then
        --===[ STEP 1 ]===--
        Calibrating = {}
        Calibrating.Step = 1
        Calibrating.Scale = 1.0
        Calibrating.Distance = 10
        Calibrating.Distance = Calibrating.Distance / Calibrating.Scale / ScreenScale
        Calibrating.MinMovementDistance = ScreenMidY * 0.70
        
        Calibrating.BaseScale = CursorModel.Config.BaseScale * Calibrating.Scale
        Calibrating.OriginalModelScale = CursorModel:GetScale()
        CursorModel:SetScale( Calibrating.BaseScale )
        CursorModel:SetPosition(0, 0, 0)
        printStep(Calibrating.Step)
        PlaySound(SOUNDKIT.IG_MAINMENU_OPEN)
        
        CursorModel:EnableMouse(true)
        CursorModel:SetScript("OnMouseUp", function(self, button)
            if (button == "LeftButton") then
                Calibrating_DoNextStep()  
            end
        end)
    else
        Calibrating.Step = Calibrating.Step + 1
        
        if (Calibrating.Step == 2) then
            --===[ STEP 2 ]===--
            Calibrating.x1, Calibrating.y1 = GetCursorPosition()
            CursorModel:SetPosition(0, Calibrating.Distance, Calibrating.Distance)
            printStep(Calibrating.Step)
            PlaySound(SOUNDKIT.IG_MAINMENU_OPEN)
        else
            local x1, y1 = Calibrating.x1, Calibrating.y1
            local x2, y2 = GetCursorPosition()
            
            -- Compute the distance the model moves in screen coords when
            -- it is moved by one unit (1, 1) in the model's coordinate space.
            local dx, dy = (x2 - x1), (y2 - y1)
            local baseStepX = (dx / Calibrating.Distance)
            local baseStepY = (dy / Calibrating.Distance)

            if (Calibrating.Step == 3) then
                --===[ STEP 3 ]===--
                -- If the mouse wasn't moved far enough, increase the test distance and 
                -- try again.  (Helps get a more accurate result for unit step size.)
                if (dy < Calibrating.MinMovementDistance) then
                    Calibrating.Distance = Calibrating.Distance * Calibrating.MinMovementDistance / dy
                    CursorModel:SetPosition(0, Calibrating.Distance, Calibrating.Distance)
                    printStep(Calibrating.Step)
                    PlaySound(SOUNDKIT.IG_MAINMENU_OPEN)
                else
                    -- Skip to the final step.
                    ----print("Calibration Step #"..Calibrating.Step..": Skipped")
                    Calibrating.Step = Calibrating.Step + 1
                end
            end
            
            if (Calibrating.Step == 4) then
                --===[ FINAL STEP ]===--
                
                -- Clean up.
                PlaySound(SOUNDKIT.IG_MAINMENU_CLOSE)
                CursorModel:EnableMouse(false)
                CursorModel:SetScale( Calibrating.OriginalModelScale )
                
                -- Compute offset from center of model to center of screen.
                local baseOfsX, baseOfsY = (ScreenMidX - x1), (ScreenMidY - y1)
                
                ----print("dx = "..round(dx,2)..", dy = "..round(dy,2))
                ----print("Raw Offset = ("..round(baseOfsX,2)..", "..round(baseOfsY,2)..")")
                ----print("Raw Step Size = ("..round(baseStepX,2)..", "..round(baseStepY,2)..")")

                -- Adjust the offset by the raw step size computed above.
                baseOfsX = baseOfsX / baseStepX * Calibrating.Scale
                baseOfsY = baseOfsY / baseStepY * Calibrating.Scale
                
                 -- Normalize the step sizes to 100% model scale so they can be used for any scale
                 -- later on simply by multiplying the model's current scale to them.
                baseStepX = baseStepX / Calibrating.BaseScale
                baseStepY = baseStepY / Calibrating.BaseScale
                
                -- Normalize the base values to a screen aspect ratio of 1:1 so they can be used 
                -- for any aspect ratio later on simply by multiplying the screen hypotenuse to them.
                baseOfsX  = baseOfsX  / kBaseMult / ScreenHypotenuse
                baseOfsY  = baseOfsY  / kBaseMult / ScreenHypotenuse
                baseStepX = baseStepX / kBaseMult / ScreenHypotenuse
                baseStepY = baseStepY / kBaseMult / ScreenHypotenuse

                -- Round off.
                local precision = 1
                baseOfsX  = round(baseOfsX, precision)
                baseOfsY  = round(baseOfsY, precision)
                baseStepX = round(baseStepX, precision)
                baseStepY = round(baseStepY, precision)
                
                -- Display the results in the chat window.
                TextFrame_SetText()  -- Hides text frame.
                print('|c00FFFF00Calibration RESULTS for "'..CursorModel.Config.Path..'" ...|r' -- Color format = xRGB.
                        .."\n  Base Offset (X, Y) = ("..baseOfsX..", "..baseOfsY..")"
                        .."\n  Step Size (X, Y) = ("..baseStepX..", "..baseStepY..")"
                        .."|c00808080   Average = "..round((baseStepX+baseStepY)/2, precision).."|r" )

                -- Update stored config settings and refresh the cursor model.
                PlayerConfig.BaseOfsX = baseOfsX
                PlayerConfig.BaseOfsY = baseOfsY
                PlayerConfig.BaseStepX = baseStepX
                PlayerConfig.BaseStepY = baseStepY
                PlayerConfig_Save()
                CursorModel_Load()
                
                Calibrating = nil  -- Done.
            end
        end
    end    
end

--~ -- EXPERIMENT ...
--~ -------------------------------------------------------------------------------
--~ function Unrotate(inX, inY)  -- Compensates for Z-axis rotation built into some models.
--~     local x, y = inX, inY
--~     local dx = inX - ScreenMidX
--~     local dy = inY - ScreenMidY

--~     -- Multiply X coord by a variable factor based on the Y coord.
--~     local topMult    = 0.985
--~     local bottomMult = 1.105
--~     local vertRange = topMult - bottomMult
--~     local multX = bottomMult + (vertRange*inY/ScreenH)
--~     x = ScreenMidX + (dx * multX)

--~     -- Multiply Y coord by a variable factor based on whether the Y coord is in the top or bottom half of the screen.
--~     if (dy < 0) then
--~         -- Bottom half of screen.
--~         y = ScreenMidY + (dy * 1.11)
--~     else
--~         -- Top half of screen.
--~         y = ScreenMidY + (dy * 0.99)
--~     end

--~     -- Adjust the Y coord by a variable offset based on the X coord.
--~ -- TODO: THESE OFFSETS ARE MODEL SPECIFIC and need to be stored as part of each model's data.
--~     local leftToRightOffset = 4.4
--~     y = y - (leftToRightOffset * dx / ScreenMidX)
--~     
--~     local topToBottomOffset = 0.0
--~     x = x - (topToBottomOffset * dy / ScreenMidY)
--~     
--~     return x, y
--~ end

--- End of File ---