local override = require "custom.override"

return {
  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = override.blankline,
  },

  ["williamboman/mason.nvim"] = {
    override_options = override.mason,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = override.treesitter,
  },

  -- ["kyazdani42/nvim-tree.lua"] = {
  --   override_options = override.nvimtree,
  -- },

  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- ["nvim-neorg/neorg"] = {
  --   ft = "norg",
  --   after = "nvim-treesitter",
  --   run = ":Neorg sync-parsers",
  --   config = function()
  --     require "custom.plugins.neorg"
  --   end,
  -- },

  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  ["andreadev-it/shade.nvim"] = {
    disable = true,
    module = "shade",
    setup = function()
      require("core.lazy_load").on_file_open "shade.nvim"
    end,
    config = function()
      require("shade").setup {
        overlay_opacity = 50,
        opacity_step = 1,
        exclude_filetypes = {},
      }
    end,
  },

  ["airblade/vim-gitgutter"] = {},

  ["tpope/vim-fugitive"] = {},

  -- ["ray-x/go.nvim"] = {},

  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      -- TODO customize the dashboard
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },

  -- ["ThePrimeagen/refactoring.nvim"] = {
  --     after = "base46",
  --     requires = {
  --       {"nvim-lua/plenary.nvim"},
  --       {"nvim-treesitter/nvim-treesitter"}
  --   },
  --   config = function()
  --     require("refactoring").setup({})
  --   end,
  -- },

  ["fatih/vim-go"] = {
    config = function()
      require "custom.plugins.vim-go"
    end,
  },

  -- TODO how can I use this plugin
  -- ["williamboman/mason-lspconfig.nvim"] = {
  --   after = { "nvim-lspconfig", "mason.nvim" },
  --   config = function ()
  --     -- require("mason-lspconfig").setup({
  --     --   ensure_installed = { "sumneko_lua", "gopls" }
  --     -- })
  --     require("lspconfig").pyright.setup {}
  --   end
  -- },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["airblade/vim-rooter"] = {
    config = function()
      require "custom.plugins.rooter"
    end,
  },
}
