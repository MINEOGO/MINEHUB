# Custom UI Library for Roblox

This is a simple custom UI library for creating windows, buttons, inputs, sliders, and toggles in Roblox.

## How to Use

1. Inject the UI library by adding this to your `LocalScript`:
    ```lua
    local CustomUILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/your-repository-path/main/ui-library.lua"))()
    ```

2. Create a window and add buttons:
    ```lua
    local Window = CustomUILib:MakeWindow({
        Name = "My Custom UI",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "MyUIConfig"
    })

    Window:AddButton({
        Name = "Click Me",
        Callback = function()
            print("Button Clicked!")
        end
    })
    ```

## Features:
- Create windows.
- Add buttons.
- Add input fields.
- Add sliders.
- Add toggle buttons.
