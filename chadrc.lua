local M = {}

local override = require "custom.override"

M.plugins = {

  -- These option is removed
   options = {
      statusline = {
         separator_style = "round",
      },
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
      ["williamboman/mason.nvim"] = override.mason,
   },

   user = require "custom.plugins",

   remove = {
     --     "goolord/alpha-nvim",
   },
}

M.ui = {
   theme = "gruvchad",
   hl_override = require "custom.highlights",
}

M.mappings = require "custom.mappings"

return M
