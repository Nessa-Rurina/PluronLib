# PLURON LIBRARY
Welcome to Pluron Library!
This library is a project that was developed by Tenshin.

It is in VERY early stages, it does not have auto scaling, themes, and even components (Sliders, Colour Pickers.)

This is just a test for when the UI is finished, but if you want to test it by yourself you can by doing the steps down below.
## Opening up the library
```
local KeySystem = {
    Enabled = false, -- set this to true if u want a key system!
    DiscordInvite = "Abcdefghijklmnop", -- put in the letters and numbers of the invite, NOT the discord.gg!
    Note = "Join discord for key", -- put in any note inside here
    Key = "Pluron" -- Change this to any key you want.
}

local library = loadstring(game:HttpGet(("faha"), true))()
```
The above is NEEDED for loading the library.
Read the comments if you are confused in any way.

## Creating a window
```
library:CreateWindow("Any text")
```
Name the "Any text" to anything you like as it will be your title.

## Creating a Tab 
```
local tab1 = library:CreateTab("Any Text")
```
Name the "Any Text" to anything you like.

## Creating a Button
```
tab1:CreateButton("Any Text", function()
    print("Hello World!")
end)
```
Name the "Any Text" to anything you like. Replace print("Hello World!") with your own code.

## Simple Example
```
local KeySystem = {
    Enabled = false, -- set this to true if u want a key system!
    DiscordInvite = "Abcdefghijklmnop", -- put in the letters and numbers of the invite, NOT the discord.gg!
    Note = "Join discord for key", -- put in any note inside here
    Key = "Pluron" -- Change this to any key you want.
}

local library = loadstring(game:HttpGet(("faha"), true))()
library:CreateWindow("My ScriptHub!")
local tab1 = library:CreateTab("Player Stuff")
local tab2 = library:CreateTab("Fun Stuff")
--
tab1:NewButton("Set WalkSpeed to 100", function()
    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 100
end)

tab1:NewButton("Set WalkSpeed to 16", function()
    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 16
end)
--
tab2:NewButton("Set humanoid health to 0 (death)", function() 
    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health = 0
    print("You died!")
end)
```
