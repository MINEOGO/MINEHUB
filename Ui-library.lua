-- ui-library.lua

-- Library Initialization
local CustomUILib = {}

-- Function to create a window
function CustomUILib:MakeWindow(options)
    -- Basic Window Setup
    local window = Instance.new("ScreenGui")
    window.Name = options.Name or "CustomWindow"
    window.Parent = game.Players.LocalPlayer.PlayerGui

    -- Add other window setup here (e.g., background, layout)

    -- Return window object for further customization
    return window
end

-- Function to add a button
function CustomUILib:AddButton(window, buttonOptions)
    local button = Instance.new("TextButton")
    button.Text = buttonOptions.Name or "Button"
    button.Parent = window

    -- Set up button behavior
    button.MouseButton1Click:Connect(function()
        buttonOptions.Callback()
    end)
end

-- Function to add an input field
function CustomUILib:AddInput(window, inputOptions)
    local input = Instance.new("TextBox")
    input.PlaceholderText = inputOptions.PlaceholderText or "Enter text..."
    input.Parent = window

    input.FocusLost:Connect(function()
        inputOptions.Callback(input.Text)
    end)
end

-- Function to add a slider
function CustomUILib:AddSlider(window, sliderOptions)
    local slider = Instance.new("Frame")
    slider.Parent = window
    -- Set up slider visuals here...

    -- Callback on slider change
    -- Example: slider.MouseMoved:Connect(function() ... end)

    -- Call the provided callback when slider value changes
    sliderOptions.Callback(50)  -- Replace with actual slider value
end

-- Function to add a toggle
function CustomUILib:AddToggle(window, toggleOptions)
    local toggle = Instance.new("TextButton")
    toggle.Text = toggleOptions.Name or "Toggle"
    toggle.Parent = window

    toggle.MouseButton1Click:Connect(function()
        toggleOptions.Callback(not toggleOptions.Default)
    end)
end

-- Return the library table to allow usage in the game
return CustomUILib
