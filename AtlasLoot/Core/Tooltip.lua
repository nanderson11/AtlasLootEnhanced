local _G = _G
local AtlasLoot = _G.AtlasLoot
local Tooltip = {}
AtlasLoot.Tooltip = Tooltip

_G["AtlasLootTooltip"].shoppingTooltips = { ShoppingTooltip1, ShoppingTooltip2 }

local TooltipList = {
	"GameTooltip",
	"AtlasLootTooltip",
}

function Tooltip.GetTooltip()
	if AtlasLoot.db.Tooltip.useGameTooltip then
		return _G["GameTooltip"]
	else
		return _G["AtlasLootTooltip"]
	end
end

function Tooltip:AddTooltipSource(src)
	TooltipList[#TooltipList + 1] = src
end
