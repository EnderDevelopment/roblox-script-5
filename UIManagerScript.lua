-- UIManagerScript.lua

local UIManager = {}

-- Function to create a new UI element
function UIManager:CreateUIElement(elementType, properties)
    local element = Instance.new(elementType)
    
    for property, value in pairs(properties) do
        element[property] = value
    end
    
    return element
end

-- Function to update a UI element
function UIManager:UpdateUIElement(element, properties)
    for property, value in pairs(properties) do
        element[property] = value
    end
end

-- Function to remove a UI element
function UIManager:RemoveUIElement(element)
    element:Destroy()
end

return UIManager