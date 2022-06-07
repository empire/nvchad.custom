local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt

autocmd("FileType", {
   pattern = "norg",
   callback = function()
      -- vim.opt.laststatus = 0
      opt.number = false
      opt.showtabline = 0
      opt.cole = 1
      opt.foldlevel = 10
   end,
})

autocmd("BufReadPost", {
  pattern = "*.*",
  callback = function ()
    local row, col = unpack(vim.api.nvim_buf_get_mark(0, "\""))
    if {row, col} ~= {0, 0} then
      vim.api.nvim_win_set_cursor(0, {row, col})
    end
  end,
})
