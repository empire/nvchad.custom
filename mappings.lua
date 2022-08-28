local M = {}

--
-- M.disabled = {
--    "<C-n>",
-- }
M.lspconfig = {
  n = {
    ["gd"] = {
      function()
        require("telescope.builtin").lsp_definitions {}
      end,
      "lsp definition",
    },

    ["gi"] = {
      function()
        require("telescope.builtin").lsp_implementations {}
      end,
      "lsp implementation",
    },

    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references {}
      end,
      "lsp references",
    },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
  },
}

M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,

      "   toggle shade.nvim",
    },
  },
}

M.telescope = {
  n = {
    -- find
    [";"] = { "<cmd> Telescope buffers <CR>", "﬘ find buffers" },
  },
}

return M
