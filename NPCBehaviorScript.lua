-- NPCBehaviorScript.lua

local NPC = script.Parent
local Humanoid = NPC:WaitForChild("Humanoid")

-- Function to make the NPC patrol a set path
local function patrol()
    local waypoints = NPC:GetChildren()
    
    for _, waypoint in ipairs(waypoints) do
        if waypoint:IsA("Part") then
            Humanoid:MoveTo(waypoint.Position)
            Humanoid.MoveToFinished:Wait()
        end
    end
    
    patrol() -- Repeat the patrol loop
end

-- Start the patrol behavior
patrol()