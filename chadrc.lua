local M = {}

M.plugins = require "custom.plugins"

M.ui = {
  theme = "gruvchad",
  hl_override = require "custom.highlights",
}

M.mappings = require "custom.mappings"

return M
