local E, L, V, P, G = unpack(ElvUI)
local CT = E:GetModule("CustomTweaks")
if not E.private["CustomTweaks"] or not E.private["CustomTweaks"]["NoBorders"] then return end;

--Cache global variables
local unpack, getmetatable = unpack, getmetatable
local hooksecurefunc = hooksecurefunc
local RAID_CLASS_COLORS = RAID_CLASS_COLORS

--Code taken from ElvUI
local backdropr, backdropg, backdropb, backdropa, borderr, borderg, borderb = 0, 0, 0, 1, 0, 0, 0
local function GetTemplate(t, isUnitFrameElement)
	backdropa = 1

	if t == 'ClassColor' then
		local color = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[E.myclass] or RAID_CLASS_COLORS[E.myclass]
		borderr, borderg, borderb = color.r, color.g, color.b
		backdropr, backdropg, backdropb = unpack(E.media.backdropcolor)
	elseif t == 'Transparent' then
		borderr, borderg, borderb = unpack(isUnitFrameElement and E.media.unitframeBorderColor or E.media.bordercolor)
		backdropr, backdropg, backdropb, backdropa = unpack(E.media.backdropfadecolor)
	else
		borderr, borderg, borderb = unpack(isUnitFrameElement and E.media.unitframeBorderColor or E.media.bordercolor)
		backdropr, backdropg, backdropb = unpack(E.media.backdropcolor)
	end
end

--Code taken from ElvUI and modified to remove borders
local function SetTemplate(f, t, glossTex, ignoreUpdates, forcePixelMode, isUnitFrameElement)
	GetTemplate(t, isUnitFrameElement)

	f:SetBackdrop({
		bgFile = glossTex and (type(glossTex) == 'string' and glossTex or E.media.glossTex) or E.media.blankTex,
		edgeFile = nil,
		tile = false, tileSize = 0, edgeSize = 0,
		insets = {left = 0, right = 0, top = 0, bottom = 0}
	})

	if t ~= 'NoBackdrop' then
		f:SetBackdropColor(backdropr, backdropg, backdropb, backdropa)
		if not E.PixelMode then
			if f.iborder then
				f.iborder:SetBackdropBorderColor(0, 0, 0, 0)
			end
			if f.oborder then
				f.oborder:SetBackdropBorderColor(0, 0, 0, 0)
			end
		end
	end

	f:SetBackdropBorderColor(0, 0, 0, 0)
end

--Code taken from ElvUI
local function addapi(object)
	if not object.isCTHooked then
		local mt = getmetatable(object).__index
		hooksecurefunc(mt, "SetTemplate", SetTemplate)
		object.isCTHooked = true
	end
end

local handled = {["Frame"] = true}
local object = CreateFrame("Frame")
addapi(object)
addapi(object:CreateTexture())
addapi(object:CreateFontString())

object = EnumerateFrames()
while object do
	if not object:IsForbidden() and not handled[object:GetObjectType()] then
		addapi(object)
		handled[object:GetObjectType()] = true
	end

	object = EnumerateFrames(object)
end
