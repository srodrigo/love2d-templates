local Card = {}
Card.__index = Card

function Card:new(x, y, label)
	return setmetatable({
		x = x,
		y = y,
		w = 80,
		h = 120,
		label = label,
		hovered = false,
	}, Card)
end

function Card:update(dt) end

function Card:draw()
	if self.hovered then
		love.graphics.setColor(1, 1, 0)
	else
		love.graphics.setColor(1, 1, 1)
	end

	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
	love.graphics.setColor(0, 0, 0)
	love.graphics.print(self.label, self.x + 10, self.y + 10)
end

function Card:contains(x, y)
	return x > self.x and x < self.x + self.w and y > self.y and y < self.y + self.h
end

return Card
