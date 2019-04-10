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

local function CustomSetBackdropBorderColor(self, frame, ...)
	if frame.pixelBorders then
		for _, v in pairs(E.PixelBorders) do
			frame.pixelBorders[v]:SetVertexColor(0,0,0,0)
		end
	end
end
hooksecurefunc(E, "SetBackdropBorderColor", CustomSetBackdropBorderColor)

--Code taken from ElvUI and modified to remove borders
local function CustomSetTemplate(f, t, glossTex, ignoreUpdates, forcePixelMode, isUnitFrameElement)
	GetTemplate(t, isUnitFrameElement)

	if t ~= 'NoBackdrop' then
		f:SetBackdropColor(backdropr, backdropg, backdropb, backdropa)
		if not E.PixelMode and not f.forcePixelMode then
			if f.iborder then
				f.iborder:SetBackdropBorderColor(0, 0, 0, 0)
			end
			if f.oborder then
				f.oborder:SetBackdropBorderColor(0, 0, 0, 0)
			end
		end
	end

	f:SetBackdropBorderColor(0, 0, 0, 0)
	f.ignoreBorderColors = true
	
	if isUnitFrameElement and t ~= "Transparent" then
		f:SetBackdropColor(0,0,0,0)
	end
end

--Code taken from ElvUI
local function addapi(object)
	if not object.isCTHooked then
		local mt = getmetatable(object).__index
		hooksecurefunc(mt, "SetTemplate", CustomSetTemplate)
		object.isCTHooked = true
	end
end

local handled = {["Frame"] = true}
local object = CreateFrame("Frame")
addapi(object)

object = EnumerateFrames()
while object do
	if not object:IsForbidden() and not handled[object:GetObjectType()] then
		addapi(object)
		handled[object:GetObjectType()] = true
	end

	object = EnumerateFrames(object)
end
