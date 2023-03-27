--Gui Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--Variables
local player = game:GetService("Players").LocalPlayer
local autotp = false
local autospin = false
--Window
local Window = Library.CreateLib("VSP Universal Script", "RJTheme1")
--Tabs
local Universal = Window:NewTab("Universal")
--Sections
local MSection = Universal:NewSection("Movement")
local ASection = Universal:NewSection("Action")
--Scripts Movement Section
MSection:NewSlider("Walk Speed", "Slide to change player speed", 500, 0, function(WS)
    player.Character.Humanoid.WalkSpeed = WS
end)
MSection:NewSlider("Jump Power", "Slide to change player jump power", 500, 0, function(JP)
    player.Character.Humanoid.UseJumpPower = true
    player.Character.Humanoid.JumpPower = JP
end)
MSection:NewToggle("Loop Teleport", "Teleport you to chosen player everytime", function(LT)
    if LT then
        autotp = true
    else
        autotp = false
    end
end)
MSection:NewTextBox("Teleport to", "Teleport you to chosen player", function(T)
    if autotp == true then
        while autotp == true do
            player.Character.HumanoidRootPart.CFrame = game:GetService("Players")[T].Character.HumanoidRootPart.CFrame
            wait(0)
        end
    else
        player.Character.HumanoidRootPart.CFrame = game:GetService("Players")[T].Character.HumanoidRootPart.CFrame
    end
end)
--Scripts Action Section
ASection:NewToggle("Spin", "When enabled your player will spin", function(S)
    if S then
        autospin = true
        if autospin == true do
            while autospin == true do
                player.HumanoidRootPart.CFrame *= CFrame.Angles(0, math.rad(50), 0)
                game:GetService("RunService").RenderStepped:wait(0)
            end
        end
    else
        autospin = false
    end
end)

