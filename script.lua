--Gui Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--Variables
local player = game:GetService("Players").LocalPlayer
--Window
local Window = Library.CreateLib("VSP Universal Script", "RJTheme1")
--Tabs
local Universal = Window:NewTab("Universal")
--Sections
local MSection = Universal:NewSection("Movement")
--Scripts Movement Section
MSection:NewSlider("Walk Speed", "Slide to change player speed", 500, 0, function(WS)
    player.Character.Humanoid.WalkSpeed = WS
end)
MSection:NewSlider("Jump Power", "Slide to change player jump power", 500, 0, function(JP)
    player.Character.Humanoid.UseJumpPower = true
    player.Character.Humanoid.JumpPower = JP
end)
MSection:NewTextBox("Teleport to", "Teleport you to chosen player", function(T)
    player.Character.HumanoidRootPart.CFrame = game:GetServcie("Player")[T].Character.HumanoidRootPart.CFrame
end)


