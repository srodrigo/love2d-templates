local reload = require("core.engine.reload")
local game = require("core.game.game")
local state = require("core.game.state")

local input = require("core.game.systems.input")

function love.load()
	game.init(state)
end

function love.update(dt)
	game.update(state, dt)
end

function love.draw()
	game.draw(state)
end

function love.keypressed(key)
	-- TODO: remove from production build
	if key == "r" and love.keyboard.isDown("lctrl") then
		reload.all()
		game = require("core.game.game")
		if love.keyboard.isDown("lctrl") and love.keyboard.isDown("lshift") then
			print("hard reloading...")
			state = require("core.game.state")
			game.init(state)
		else
			print("reloading...")
		end
	end

	input.keypressed(key)
end

function love.mousepressed(x, y, button)
	input.mousepressed(state, x, y, button)
end

function love.mousereleased(x, y, button)
	input.mousereleased(state, x, y, button)
end
