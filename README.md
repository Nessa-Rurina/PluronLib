# PLURON LIBRARY
Welcome to Pluron Library!
This library is a project that was developed by Tenshin.

It is in VERY early stages, it currently does not have themes, and some components. (It only has buttons and labels as of right now.)

This is just a test for when the UI is finished, but if you want to test it by yourself you can by doing the steps down below.

This Ui Library is Open Source, so feel free to go around looking through the code.
## Opening up the library
```
local Library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Nessa-Rurina/PluronLib/main/Library.lua"), true))()
```
The above is NEEDED for loading the library.

## Creating a window
```
local Window = library:CreateWindow("Any text")
```
Name the "Any text" to anything you like as it will be your title.

## Creating a Tab 
```
local tab1 = Window:CreateTab("Any Text")
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
local Library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Nessa-Rurina/PluronLib/main/Library.lua"), true))()
local Window = Library:CreateWindow("Smexy Lexy")
local Tab1 = Window:CreateTab("Smexy Tab")

Tab1:CreateLabel("Click below for a suprise!!")
Tab1:CreateButton("Do what above says!!!!!", function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
end)
local Tab2 = Window:CreateTab("Sowwy???")

Tab2:CreateLabel("Im sowwy for killing u uwu")
Tab2:CreateButton("Fuck u", function()
	game:GetService("CoreGui")[ "Pluron, ID: ".."Smexy Lexy"]:Destroy()
end)
```
