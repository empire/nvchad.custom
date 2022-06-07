require "custom.autocmds"
require "custom.options"

vim.cmd "silent! command! EnableShade lua require('shade').toggle()"
