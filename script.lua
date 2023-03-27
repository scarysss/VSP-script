--Gui Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--Variables
local player = game:GetService("Players").LocalPlayer
--Window
local Window = Library:CreateWindow("VSP Universal Script", "RJTheme1")
--Tabs
local Universal = Window:NewTab("Universal")
--Sections
local MSection = Universal:NewSection("Movement")
--Scripts Movement Section
MSection = NewSlider("Walk Speed", "Slide to change player speed", 500, 1, function(WS)
    player.Character:FindFirstChild("Humanoid").WalkSpeed = WS
end)
MSection = NewSlider("Jump Power", "Slide to change player jump power", 500, 1, function(JP)
    player.Character:FindFirstChild("Humanoid").UseJumpPower = true
    player.Character:FindFirstChild("Humanoid").JumpPower = JP
end)


