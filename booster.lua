local NormalHub_BootStrap = function(DiscordId, ...)
	local Key = {...}
	local LoadStringMap = string.format('https://raw.githubusercontent.com/GotLol123/PROJECT/refs/heads/main/%s', tostring(game.GameId))
	_G.Key = Key[1]
	_G.DiscordId  = DiscordId
	if _G.DiscordId and _G.Key then
		local Success, Respone = pcall(function() return game:HttpGet(LoadStringMap) end)
		if Success then
			loadstring(Respone)()
		else
			warn("Normal Hub Not Support "..game.Name)
		end
	end
end

return NormalHub_BootStrap
