--[[

****************************************************************************************
LibHelpPlate

File date: $Date$

Author: Lag123

****************************************************************************************

]]--

local HelpPlate = "LibHelpPlate"
local HelpPlate_MINOR = tonumber(("$Rev$"):match("(%d+)"))
if not LibStub then error(HelpPlate .. " requires LibStub.") end
local lib = LibStub:NewLibrary(HelpPlate, HelpPlate_MINOR or 0)
if not lib then return end

-- container for HelpPlate infos
lib.container = lib.container or {}

-- counter
lib.counter = 1

-- Creats the 
function createButton(frame, name)		
	local ButtonFrame = CreateFrame("Button", name, frame, "MainHelpPlateButton")
	ButtonFrame:SetPoint("TOPLEFT", frame, "TOPLEFT")
	ButtonFrame:SetScript("OnClick", function() lib:ToggleHelpPlate(frame) end)
	ButtonFrame:SetScript("OnHide", HelpPlate_Hide)
	
	return ButtonFrame
end

--- Creats a new HelpPlate button for a given frame
-- This function creats a HelpPlate button for a frame and sets the content
-- @param frame Frame object/name
-- @param content The content of the HelpPlate (SetHelpPlate for more infos)
-- @return The HelpPlate button
function lib:Create(frame, content)
	if not frame then
		error("Usage: Create(frame): 'frame' - Must be a frame object/string.", 2)
	end
	if type(frame) == "string" then
		if _G[frame] then
			frame = _G[frame]
		else
			error(("Usage: Create(frame): 'frame' - Frame '%s' not exists."):format(frame), 2)
		end
	end
	if frame.GetObjectType and frame:GetObjectType() == "Frame" then
		if lib.container[frame] then
			error("Usage: Create(frame): 'frame' - HelpPlate for this frame already exists.", 2)
		else
			lib.container[frame] = {}
			lib.container[frame].content = lib:SetHelpPlateContent(frame, content)
			lib.container[frame].name = HelpPlate.."_Frame"..lib.counter
			lib.counter = lib.counter + 1
			lib.container[frame].button = createButton(frame, lib.container[frame].name)
			lib.container[frame].button.content = lib.container[frame].content
			return lib.container[frame].button
		end
	elseif not frame.GetObjectType then
		error("Usage: Create(frame): 'frame' - Must be a frame.", 2)
	else
		error(("Usage: Create(frame): 'frame' - Must be a frame but is a '%s'."):format(frame:GetObjectType()), 2)
	end
end

--- Sets the HelpPlate content
-- This function sets the content that is shown when the HelpPlate-Button is clicked
-- Aviable content table content:
-- FramePos			<table>		The position of the HelpPlate Frame
-- - x				<number>	X Position
-- - y				<number>	Y Position
-- FrameSize		<table>		The size of the HelpPlate Frame
-- - width			<number>	Frame-width
-- - height			<number>	Frame-height
-- [1]				<table>		The HighLightBox
-- - ButtonPos 		<table>		Position of the ToolTip-Button from TopLeft(ButtonSize = 46x46)
-- -- x				<number>	ToolTip-Button X Position
-- -- y				<number>	ToolTip-Button Y Position
-- - HighLightBox	<table>		Size and Position of the HighLightBox from TopLeft
-- -- x				<number>	HighLightBox X Position
-- -- y				<number>	HighLightBox Y Position
-- -- width			<number>	HighLightBox-width
-- -- height		<number>	HighLightBox-height
-- - ToolTipDir		<string>	Position of the ToolTip "RIGHT/LEFT/DOWN/UP"
-- - ToolTipText	<string>	Text that shown in the ToolTip
-- @param frame The frame from lib:Create
-- @param content The content of the HelpPlate
-- @return The content Table
-- @usage 
-- content = {
--		FramePos = { x = 0, y = -22 },
--		FrameSize = { width = 10, height = 10 },
--		[1] = { ButtonPos = { x = 26, y = -75 },  HighLightBox = { x = 10, y = -72, width = 500, height = 50 },	 ToolTipDir = "RIGHT",  ToolTipText = "Look at me.\nI can help you!!!" },
-- }
function lib:SetHelpPlateContent(frame, content)
	if not lib.container[frame] then
		error("Usage: SetHelpPlateContent(frame, content): 'frame' - Create a HelpButton first with 'Create'.", 2)
	end
	if content and type(content) == "table" then
		lib.container[frame].content = content
		return lib.container[frame].content
	else
		error(("Usage: SetHelpPlateContent(frame, content): 'content' - Must be a table but is '%s'."):format(type(content) or "nil"), 2)
	end
end

--- Shows/Hide the HelpPlate
-- @param frame The frame from lib:Create
function lib:ToggleHelpPlate(frame)
	if frame and lib.container[frame] and not HelpPlate_IsShowing(lib.container[frame].content) then
		HelpPlate_Show( lib.container[frame].content, frame, lib.container[frame].button, true );
	else
		HelpPlate_Hide(true);
	end
end