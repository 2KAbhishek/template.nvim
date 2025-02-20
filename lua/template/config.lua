-- Define config structure here, setup function will override defaults with user config
---@class Template
local M = {}

---@class TemplateConfig
---@field name string Name to greet. Default: 'World!'
---@field add_default_keybindings boolean Whether to add default keybindings. Default: true
local config = {
    name = 'World!',
    add_default_keybindings = true,
}

---@type TemplateConfig
M.config = config

---@param args TemplateConfig?
M.setup = function(args)
    M.config = vim.tbl_deep_extend('force', M.config, args or {})
end

return M
