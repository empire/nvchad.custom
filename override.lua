-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "css",
    "go",
    "gomod",
    "gowork",
    "html",
    "javascript",
    "json",
    "json",
    "lua",
    "markdown",
    "norg",
    "python",
    "toml",
    "vim",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "TelescopePrompt",
    "TelescopeResults",
    "alpha",
    "help",
    "lsp-installer",
    "lspinfo",
    "norg",
    "nvchad_cheatsheet",
    "packer",
    "terminal",
    "",
  },
}

M.mason = {
  ensure_installed = {
    "bash-language-server",
    "clangd",
    "pyright",
    "phpactor",

    -- lua
    "lua-language-server",
    "stylua",

    -- go
    "gopls",
    "gofumpt",
    "goimports",
    "delve",
    "go-debug-adapter",
    "golangci-lint",

    -- jq
    "jq",

    -- yaml
    "yamllint",
  },
}

return M
