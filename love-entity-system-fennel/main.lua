local fennel = require("lib.fennel.fennel")

debug.traceback = fennel.traceback

table.insert(package.loaders, fennel.searcher)

table.insert(package.loaders, 1, function(modname)
	-- Convert "core.engine.reload" into "core/engine/reload.fnl"
	local filename = modname:gsub("%.", "/") .. ".fnl"

	if love.filesystem.getInfo(filename) then
		return function(...)
			-- Read file through LÖVE filesystem and compile via Fennel
			local code = love.filesystem.read(filename)
			return fennel.eval(code, { env = _G, filename = filename }, ...)
		end
	end
end)

require("app")
