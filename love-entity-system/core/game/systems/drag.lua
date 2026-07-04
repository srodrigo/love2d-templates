local drag = {}

function drag.update(state)
	local mx, my = state.mouse.x, state.mouse.y

	if state.mouse.down and not state.drag.active then
		for i = #state.entities.cards, 1, -1 do
			local card = state.entities.cards[i]
			if card:contains(mx, my) then
				state.drag.active = card
				state.drag.offsetX = mx - card.x
				state.drag.offsetY = my - card.y
				break
			end
		end
	end

	if state.drag.active then
		state.drag.active.x = mx - state.drag.offsetX
		state.drag.active.y = my - state.drag.offsetY
	end

	if not state.mouse.down then
		state.drag.active = nil
	end
end

return drag
