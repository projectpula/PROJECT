local VersionServer = require(game.ReplicatedStorage.modules.Icon.VERSION)
local CallBack = Instance.new("BindableFunction")

function CallBack.OnInvoke(response)
	if response == "Hopserver" then
		game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
	end
end

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Server Version "..tostring(VersionServer),
	Text = VersionServer ~= "v3.0.2" and "Dupe Is Working" or "Dupe Is Not Working", 
	Icon = "rbxassetid://18374973658",
	Duration = 3,
	Callback = CallBack,
	Button1 = "Hopserver";
})
