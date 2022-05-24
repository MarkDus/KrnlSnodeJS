local window = {}

function window.new()
    return setmetatable(lib, { __index = {
        -- Index something here later bitch --
    }});
end;

function window:CreateFrame(Position, Size, Color, Parent)
    local frame = Instance.new("Frame", Parent);
    frame.Position = Position;
    frame.Size = Size;
    frame.BackgroundColor3 = Color;
    
    return frame;
end

return window
