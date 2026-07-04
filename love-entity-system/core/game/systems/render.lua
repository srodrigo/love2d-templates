local render = {}

function render.draw(state)
	for _, card in ipairs(state.entities.cards) do
		card:draw()
	end
end

return render
