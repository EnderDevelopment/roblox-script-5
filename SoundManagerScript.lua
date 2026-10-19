-- SoundManagerScript.lua

local SoundManager = {}

-- Function to play a sound
function SoundManager:PlaySound(soundId, parent)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = parent
    sound:Play()

    return sound
end

-- Function to stop a sound
function SoundManager:StopSound(sound)
    sound:Stop()
    sound:Destroy()
end

return SoundManager