local Player = game.Players.LocalPlayer
local PlayerName = Player.Name
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ri Hub By Rismo", "BloodTheme")
local Main = Window:NewTab("Main")
local Scripts = Window:NewTab("Scripts")
local PlayerSection = Main:NewSection("Player")
local GunSection = Main:NewSection("Guns")
local TeamSection = Main:NewSection("Team")
local AdminSection = Scripts:NewSection("Admin Scripts")
local UsefulSection = Scripts:NewSection("Useful Scripts")

--Player Section

PlayerSection:NewSlider("Walkspeed", "Changes your walkspeed.", 200, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
PlayerSection:NewSlider("Jump Power", "Changes your Jumppower.", 200, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
--Guns Section

GunSection:NewButton("Get Shotgun", "Get the Remington 870 Weapon in your inventory.", function()
    local args = {
        [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
    }
    
    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
end)
GunSection:NewButton("Get Pistol", "Get the M9 Weapon in your inventory.", function()
    local args = {
        [1] = workspace.Prison_ITEMS.giver.M9.ITEMPICKUP
    }
    
    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
end)
GunSection:NewButton("Get Ak-47", "Get the Ak-47 Weapon in your inventory.", function()
    local args = {
        [1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP
    }
    
    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
end)
GunSection:NewButton("Get M4A1", "You need the Riot Police gamepass.", function()
    local args = {
        [1] = workspace.Prison_ITEMS.giver.M4A1.ITEMPICKUP
    }
    
    workspace.Remote.ItemHandler:InvokeServer(unpack(args))
end)
GunSection:NewDropdown("Gun Mod", "Makes the gun really overpowered.", {"M9", "Remington 870", "AK-47", "Taser"}, function(v)
    local module = nil
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
    end
    if module ~= nil then
        module["MaxAmmo"] = math.huge
        module["CurrentAmmo"] = math.huge
        module["StoredAmmo"] = math.huge
        module["FireRate"] = 0.000001
        module["Spread"] = 0
        module["Range"] = math.huge
        module["Bullets"] = 10
        module["ReloadTime"] = 0.000001
        module["AutoFire"] = true
    end
end)
GunSection:NewButton("Aimbot", "Nice universal aimbot.", function()
    local deltaX = nil
    local deltaY = nil
    local aimDeltaX = nil
    local aimDeltaY = nil 
    local gameAimButton = nil
    loadstring(game:HttpGet("https://pastebin.com/raw/w2S8YyDt", true))()
    end)

    -- TeamSection

TeamSection:NewButton("Switch to Inmate", "Switch to the inmate team.", function()
    local args = {
        [1] = "Bright orange"
    }
    
    workspace.Remote.TeamEvent:FireServer(unpack(args))
    local args = {
        [1] = PlayerName
    }
    
    workspace.Remote.loadchar:InvokeServer(unpack(args))
    
end)
TeamSection:NewButton("Switch to Guards", "Switch to the guards team.", function()
    local args = {
        [1] = "Bright blue"
    }
    
    workspace.Remote.TeamEvent:FireServer(unpack(args))
    local args = {
        [1] = PlayerName
    }
    
    workspace.Remote.loadchar:InvokeServer(unpack(args))
    
end)
TeamSection:NewButton("Switch to Neutral", "Switch to the Neutral team.", function()
    local args = {
        [1] = game:GetService("Players").LocalPlayer,
        [2] = "Medium stone grey"
    }
    
    workspace.Remote.loadchar:InvokeServer(unpack(args))
    local args = {
        [1] = PlayerName
    }
    
    workspace.Remote.loadchar:InvokeServer(unpack(args))
    
end)
-- scripts

AdminSection:NewButton("Inf Yield", "Nice FE admin script.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
AdminSection:NewButton("Fates Admin", "One of the best FE admin scripts.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)
UsefulSection:NewButton("DarkDex", "Allows you to see everything in the game.", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
end)
UsefulSection:NewButton("SimpleSpy", "A musthave for making roblox exploits.", function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)
