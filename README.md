# MINEHUB UI Library

A customizable UI library for Roblox games, featuring draggable windows, buttons, inputs, sliders, and toggles. This library is designed for easy integration into your Roblox game, allowing you to quickly build user interfaces.

## Features

- Draggable windows
- Buttons, input fields, sliders, and toggles
- Customizable appearance and functionality
- Save and load UI configurations
- Easy-to-use API

## Getting Started

To use the MINEHUB UI library in your Roblox game, follow these steps:

### Step 1: Inject the Script

Add the following script to a **`LocalScript`** in **`StarterPlayer > StarterPlayerScripts`** or **`StarterGui`**:

```lua
-- Load the UI Library from GitHub
local CustomUILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/MINEOGO/MINEHUB/refs/heads/main/Ui-library.lua"))()

-- Create a Window using the library
local Window = CustomUILib:MakeWindow({
    Name = "My Custom UI",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "MyUIConfig"
})

-- Add a Button to the Window
Window:AddButton({
    Name = "Click Me",
    Callback = function()
        print("Button Clicked!")
    end
})

-- You can add more UI elements like Input, Slider, or Toggle similarly
