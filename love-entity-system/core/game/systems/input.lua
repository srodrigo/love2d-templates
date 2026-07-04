local input = {}

function input.update(state)
	state.mouse.x, state.mouse.y = love.mouse.getPosition()
end

function input.keypressed(state, key)
	-- Empty
end

function input.mousepressed(state, x, y, button)
	if button == 1 then
		state.mouse.down = true
	end
end

function input.mousereleased(state, x, y, button)
	if button == 1 then
		state.mouse.down = false
	end
end

return input
