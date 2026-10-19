-- PlayerMovementScript.lua

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Function to handle player movement
local function onMovement(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.W then
        Humanoid:Move(Vector3.new(0, 0, -1))
    elseif input.KeyCode == Enum.KeyCode.S then
        Humanoid:Move(Vector3.new(0, 0, 1))
    elseif input.KeyCode == Enum.KeyCode.A then
        Humanoid:Move(Vector3.new(-1, 0, 0))
    elseif input.KeyCode == Enum.KeyCode.D then
        Humanoid:Move(Vector3.new(1, 0, 0))
    end
end

-- Connect the movement function to the input service
game:GetService("UserInputService").InputBegan:Connect(onMovement)

-- Function to handle player jumping
local function onJump(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.Space then
        Humanoid:Jump()
    end
end

-- Connect the jump function to the input service
game:GetService("UserInputService").InputBegan:Connect(onJump)