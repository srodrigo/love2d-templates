local update = {}

function update.run(state, dt)
	for _, card in ipairs(state.entities.cards) do
		card:update(dt)
	end
end

return update
