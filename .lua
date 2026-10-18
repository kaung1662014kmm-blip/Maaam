local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character
local function onJumpRequest()
if character and character:FindFirstChild("Humanoid") then
character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end
end
UserInputService.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.Space then
onJumpRequest()
end
end)
