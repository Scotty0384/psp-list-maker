List = {}
List.__index = List

function List.create(cols)
	local list = {}
	setmetatable(list, List)
	
	list.cols = cols or 1
	list.Items = {}
	
	list.separatorPositions = {} -- where the lines that separate the columns go
	
	list.selected = 1
	
	list.itemcolor = color.new(0, 0, 0)
	list.selectedbgcolor = color.new(230, 230, 230)
	list.separatorcolor = color.new(240, 240, 240)
	
	return list
end

function List:addItem(item) -- Please pass a table if your item has multiple columns, but make sure you have added/set the columns first!
	table.insert(self.Items, item)
end

function List:removeItem(id)
	table.remove(self.Items, id or #self.Items)
end

function List:addCols(amount)
	self.cols = self.cols + amount
	if self.cols > 1 then
		for a = 1, #self.separatorPositions - 1, 1 do
			-- STOPPED WORKING HERE :P
end

function List:setCols(cols)
	self.cols = cols
end

function List:removeCols(amount) -- Doesn't clear out the data though. Get the data back by adding the columns again. Might add clear function later *shrug*
	self.cols = self.cols - amount
end

function List:setItemColor(color)
	self.itemcolor = color
end

function List:setSelectedBGColor(color)
	self.selectedbgcolor = color
end

function List:setSeparatorColor(color)
	self.separatorcolor = color
end

function List: