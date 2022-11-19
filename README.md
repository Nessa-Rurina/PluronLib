# PLURON LIBRARY

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
