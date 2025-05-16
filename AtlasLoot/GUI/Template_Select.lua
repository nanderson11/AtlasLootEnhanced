--[[ usage
	data = {
		[1] = {
			id			= "1-Display Name",		-- unique id
			name		= "Display Name",
			color		= {r, g, b},			-- Text color
			tt_title	= "Tooltip Title",		-- OnEnter can changed with "SetToolTipFunc", arg list = ShowToolTip(...)
			tt_text		= "Tooltip Text",
			arg			= "arg",				-- OnClick(arg)
			icon		= "Interface\\Icons\\INV_Misc_QuestionMark",
		},
	}
]] --
local ALName, ALPrivate = ...
local AtlasLoot = _G.AtlasLoot
local GUI = AtlasLoot.GUI

-- lua
local assert, type = assert, type
local wipe = table.wipe

--//\\
local SELECT_COUNT = 0

local BUTTON_HEIGHT = 20

local COIN_TEXTURE = ALPrivate.COIN_TEXTURE


-- functions
local UpdateContent, UpdateScroll

local function SetWidth(self, width)
	self.width = width
	self:Update()
end

local function SetNumEntrys(self, num)
	self.numEntrys = num or 1
	self:Update()
end

--- Select a entry
-- @param	id				the entry ID
-- @param	dataNum			the table index of the data table
-- @param	startSelect		true/false if this is the first call
local function SetSelected(self, id, dataNum, startSelect)
	if not id and not dataNum then
		if self.selected then
			self.selected = nil
			UpdateScroll(self)
		end
		return
	end
	if not id then
		if self.data[dataNum] then
			self.selected = { dataNum, self.data[dataNum].id }
			if self.ButtonOnClick then
				self:ButtonOnClick(self.data[dataNum].id, self.data[dataNum].arg)
			end
		else
			self.selected = nil
			--return
		end
	else
		self.selected = id
	end
	if not dataNum then
		self.selected = nil
		for i = 1, #self.data do
			if self.data[i].id == id then
				self.selected = { i, id }
				if self.ButtonOnClick then
					self:ButtonOnClick(id, self.data[i].arg, startSelect)
				end
				break
			end
		end
	end
	if not startSelect then
		UpdateScroll(self)
	end
end

local function SetNext(self)
	if self.selected and self.data[self.selected[1] + 1] then
		self:SetSelected(nil, self.selected[1] + 1)
	end
end

local function CheckIfNext(self)
	return (self.selected and self.data[self.selected[1] + 1]) and true or nil
end

local function SetPrev(self)
	if self.selected and self.data[self.selected[1] - 1] then
		self:SetSelected(nil, self.selected[1] - 1)
	end
end

local function CheckIfPrev(self)
	return (self.selected and self.data[self.selected[1] - 1]) and true or nil
end

local function SetData(self, data, startValue)
	local DataProvider = self.frame.ScrollBox:GetDataProvider();

	if not data then
		DataProvider:Flush()
		return
	end

	assert(type(data) == "table", "'data' must be a table. See 'GUI/Template_Select.lua' for infos.")
	self.data = data
	self.numContent = #data
	self.selected = startValue
	if startValue then
		self:SetSelected(startValue, nil, true)
	end

	DataProvider:Flush()
	for index, value in ipairs(data) do
		DataProvider:Insert(value)
	end

	self:Update()
end

local function SetToolTipFunc(self, OnEnter, OnLeave)
	if func and type(func) == "function" then
		self.OnEnterButton = OnEnter
		self.OnLeaveButton = OnLeave
	else
		self.OnEnterButton = ShowToolTip
		self.OnLeaveButton = HideToolTip
	end
end

local function SetButtonOnClick(self, func)
	if func and type(func) == "function" then
		self.ButtonOnClick = func
	else
		self.ButtonOnClick = nil
	end
end

local function ShowToolTip(self)
	self.obj.ttSource:SetOwner(self, "ANCHOR_RIGHT")
	self.obj.ttSource:AddLine(self.ttTitle or "", 1.0, 1.0, 1.0)
	self.obj.ttSource:AddLine(self.ttText or "", nil, nil, nil, 1)
	self.obj.ttSource:Show()
end

local function HideToolTip(self)
	self.obj.ttSource:Hide()
end
-- local UpdateContent, UpdateScroll
do
	local BUTTON_COUNT = 0

	local function ClearButtonList(self)
		if not self or not self.buttons then return end
		for i = 1, #self.buttons do
			local button = self.buttons[i]
			cache[button] = true
			button.info = nil
			button:Hide()
		end
		wipe(self.buttons)
	end

	local function GetStartAndEndPos(self)
		if not self.enableScroll then
			return 1, self.numContent
		end
		local numEntrys = self.numContent
		local selected = self.curPos
		local startPos, endPos = 1, 1
		if selected then
			if selected + self.numEntrys - 1 >= numEntrys then
				startPos = numEntrys - self.numEntrys + 1
				endPos = numEntrys
			else
				startPos = selected
				endPos = selected + self.numEntrys - 1
			end
		else
			startPos = 1
			endPos = self.numEntrys
		end

		return startPos, endPos
	end

	local function ButtonOnClick(self, ...)
		if self.obj.selected and self.info.id == self.obj.selected[2] then
			self:SetChecked(true)
			return
		end
		self.obj:SetSelected(self.info.id)
	end

	local function CreateButton(self)
		local frame
		if not frame then
			BUTTON_COUNT = BUTTON_COUNT + 1
			local frameName = "AtlasLoot-Select-Button"..BUTTON_COUNT

			frame = CreateFrame("CheckButton", frameName)
			frame:SetHeight(self.buttonHeight)
			frame:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
			frame:RegisterForClicks("LeftButtonDown", "RightButtonDown")
			frame:SetChecked(false)
			frame:SetScript("OnClick", ButtonOnClick)

			frame.label = frame:CreateFontString(frameName.."-label", "ARTWORK", "GameFontNormal")
			frame.label:SetHeight(self.buttonHeight)
			frame.label:SetJustifyH("LEFT")
			frame.label:SetText(frameName.."-label")

			frame.coin = frame:CreateTexture(frameName.."-coin", "ARTWORK")
			frame.coin:SetPoint("RIGHT", frame, "RIGHT")
			frame.coin:SetHeight(16)
			frame.coin:SetWidth(16)

			frame.label:SetPoint("LEFT", frame, "LEFT")
			frame.label:SetPoint("RIGHT", frame.coin, "LEFT")
		end
		frame.obj = self
		frame:SetWidth(self.buttonWidth)
		frame:SetHeight(self.buttonHeight)
		frame.label:SetHeight(self.buttonHeight)
		frame:SetScript("OnEnter", self.OnEnterButton)
		frame:SetScript("OnLeave", self.OnLeaveButton)

		frame:ClearAllPoints()
		frame:SetParent(self.frame)
		frame:SetFrameLevel(self.frame:GetFrameLevel() + 1)
		if #self.buttons > 0 then
			frame:SetPoint("TOPLEFT", self.buttons[#self.buttons], "BOTTOMLEFT", 0, -self.space)
		else
			frame:SetPoint("TOPLEFT", self.frame, "TOPLEFT", 5, -5)
		end

		frame:Show()

		return frame
	end

	function UpdateScroll(self)
		if not self or not self.data or self.numContent < 1 then return end
		local startPos, endPos = GetStartAndEndPos(self)
		local info
		for i = 1, #self.buttons do
			local button = self.buttons[i]
			info = self.data[startPos + i - 1]

			if info then
				assert(info.id, "No 'id' found for button")
				button.info = info
				button.ttTitle = info.tt_title
				button.ttText = info.tt_text
				button.label:SetText(info.name or UNKNOWN)
				if self.selected and self.selected[2] == info.id then
					button:SetChecked(true)
				else
					button:SetChecked(false)
				end
			else
				button:Hide()
			end
		end
	end

	function UpdateContent(self)
		if not self or not self.data then return end
		ClearButtonList(self)
		if self.numContent < 1 then return end
		local count = 1
		if self.numContent >= self.numEntrys then
			count = self.numEntrys
		else
			count = self.numContent + 1
		end
		for i = 1, count do
			--self.buttons[i] = CreateButton(self)
		end
		UpdateScroll(self)
	end
end

local function Clear(self)
	wipe(self.data)
	self:Update()
end

local function Update(self)
	self.frame:SetWidth(self.width)
	self.buttonWidth = self.width - 10
	self.height = (self.numEntrys * (self.buttonHeight + self.space)) + 5 - self.space
	self.frame:SetHeight(self.height)

	if self.numEntrys < self.numContent then
		self.enableScroll = true
		self.buttonWidth = self.buttonWidth - 20
		self.maxScroll = self.numContent - self.numEntrys + 1
	else
		self.enableScroll = false
	end

	self:UpdateContent()
end

function GUI.CreateSelect(self, height)
	SELECT_COUNT = SELECT_COUNT + 1
	local frameName = "AtlasLoot-Select-"..SELECT_COUNT
	local self = {}

	-- functions
	self.SetWidth = SetWidth
	self.SetParPoint = GUI.Temp_SetParPoint
	self.SetNumEntrys = SetNumEntrys
	-- set the selected entry (id, dataNum, startSelect)
	self.SetSelected = SetSelected
	-- goto next entry ()
	self.SetNext = SetNext
	self.CheckIfNext = CheckIfNext
	self.SetPrev = SetPrev
	self.CheckIfPrev = CheckIfPrev
	-- set the table data (data, startValue)
	self.SetData = SetData
	self.SetToolTipFunc = SetToolTipFunc
	self.SetButtonOnClick = SetButtonOnClick
	self.Clear = Clear
	self.UpdateContent = UpdateContent
	self.Update = Update
	self.OnEnterButton = ShowToolTip
	self.OnLeaveButton = HideToolTip

	-- data
	self.data = {}                 -- data SetData(dataTable)
	self.buttons = {}              -- button storage
	self.selected = nil            -- { <NumberInDataTable>, id }
	self.curPos = 1                -- current position in scrollframe
	self.width = 250               -- frame width
	self.numEntrys = 4             -- number of buttons
	self.maxScroll = 4             -- Max value for scrollbar (SetMinMaxValues)
	self.space = 2                 -- Space between buttons
	self.numContent = 0            -- number of content in data tabel (#self.data)
	self.buttonHeight = BUTTON_HEIGHT -- button height
	self.enableScroll = false      -- scrollbar is shown
	self.ttSource = GameTooltip


	self.frame = CreateFrame("ScrollFrame", frameName, nil, "InsetFrameTemplate")
	local frame = self.frame
	frame:ClearAllPoints()
	--frame.Bg:SetAtlas("Professions-background-summarylist")
	frame.obj = self

	local ScrollBox = CreateFrame("Frame", nil, frame, "WowScrollBoxList")
	ScrollBox:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -5)
	ScrollBox:SetSize(290, height)
	frame.ScrollBox = ScrollBox

	local ScrollBar = CreateFrame("EventFrame", nil, frame, "MinimalScrollBar")
	ScrollBar:SetPoint("TOPLEFT", ScrollBox, "TOPRIGHT", 0, -2)
	ScrollBar:SetPoint("BOTTOMLEFT", ScrollBox, "BOTTOMRIGHT", 0, -2)

	local DataProvider = CreateDataProvider()
	local ScrollView = CreateScrollBoxListLinearView()
	ScrollView:SetDataProvider(DataProvider)
	ScrollUtil.InitScrollBoxListWithScrollBar(ScrollBox, ScrollBar, ScrollView)

	-- Set selection behavior
	local SelectionBehavior = ScrollUtil.AddSelectionBehavior(ScrollBox)
	local function OnSelectionChanged(_, elementData, selected)
		local button = ScrollBox:FindFrame(elementData)
		if button then
			if selected then
				button.obj:SetSelected(button.info.id)
				button.SelectedOverlay:SetShown(true);
				button.HighlightOverlay:SetShown(false);
				button.coin:SetDesaturated(false)
			else
				button.SelectedOverlay:SetShown(false);
				button.HighlightOverlay:SetShown(true);
				button.coin:SetDesaturated(true)
			end
		end
	end
	SelectionBehavior:RegisterCallback(SelectionBehaviorMixin.Event.OnSelectionChanged, OnSelectionChanged)

	-- Set button initializer
	local function Initializer(button, data)
		local selected = SelectionBehavior:IsElementDataSelected(data)
		if selected then
			button.obj:SetSelected(button.info.id)
			button.SelectedOverlay:SetShown(true);
			button.HighlightOverlay:SetShown(false);
		else
			button.SelectedOverlay:SetShown(false);
			button.HighlightOverlay:SetShown(true);
		end

		button:SetScript("OnClick", function()
			SelectionBehavior:Select(button)
		end)

		button.Label:SetText(data.name)
		button.obj = self
		button.info = data

		button.coin:SetTexture()
		button.coin:SetDesaturated(true)
		if data.coinTexture == "Achievement" then
			button.coin:SetTexture(COIN_TEXTURE.AC)
			button.coin:SetTexCoord(0, 0.625, 0, 0.625)
		elseif data.coinTexture == "Reputation" or data.coinTexture == "Faction" then
			button.coin:SetTexCoord(0, 1, 0, 1)
			button.coin:SetTexture(COIN_TEXTURE.REPUTATION)
		end
	end
	ScrollView:SetElementInitializer("AtlasLootSelectButtonTemplate", Initializer)

	--[[ local anchorsWithScrollBar = {
		CreateAnchor("TOPLEFT", 10, -5),
		CreateAnchor("BOTTOMRIGHT", ScrollBar, 0, -5),
	};
	local anchorsWithoutScrollBar = {
		CreateAnchor("TOPLEFT", 10, -5),
		CreateAnchor("BOTTOMRIGHT", 0, -5),
	};
	ScrollUtil.AddManagedScrollBarVisibilityBehavior(ScrollBox, ScrollBar, anchorsWithScrollBar, anchorsWithoutScrollBar); ]]

	self:Update()

	return self
end
