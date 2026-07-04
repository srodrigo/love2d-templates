local Card = require("core.game.entities.card")

local input = require("core.game.systems.input")
local drag = require("core.game.systems.drag")
local update = require("core.game.systems.update")
local render = require("core.game.systems.render")

local game = {}

function game.init(state)
	table.insert(state.entities.cards, Card:new(100, 100, "A"))
	table.insert(state.entities.cards, Card:new(200, 120, "K"))
end

function game.update(state, dt)
	input.update(state)
	drag.update(state)
	update.run(state, dt)
end

function game.draw(state)
	render.draw(state)
end

return game
