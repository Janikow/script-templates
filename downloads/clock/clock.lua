-- Roblox Clock Script (ServerScriptService or LocalScript)
local TextService = Instance.new("TextLabel")
TextService.Size = UDim2.new(0, 200, 0, 50)
TextService.Position = UDim2.new(0.5, -100, 0.5, -25)
TextService.BackgroundTransparency = 1
TextService.TextColor3 = Color3.fromRGB(121, 192, 255)
TextService.Font = Enum.Font.Code
TextService.TextScaled = true
TextService.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")

task.spawn(function()
	while task.wait(1) do
		local t = os.date("*t")
		TextService.Text = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
	end
end)
