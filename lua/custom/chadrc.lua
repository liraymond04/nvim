---@type ChadrcConfig 
local M = {}

M.ui = {
    theme = 'onedark',

    statusline = {
        separator_style = "block",
        overriden_modules = nil,
    },

    tabufline = {
        lazyload = true,
        overriden_modules = nil,
    },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M