local reload = {}

function reload.all()
	for k in pairs(package.loaded) do
		if k:match("^core") then
			package.loaded[k] = nil
		end
	end
end

return reload
