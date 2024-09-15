---@class CustomModule
local M = {}

---@return string
M.greet = function(name)
    return 'Hello ' .. name
end

return M
