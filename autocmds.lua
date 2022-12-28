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
  callback = function()
    local line, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
    local lastline = vim.fn.line "$"
    if line > lastline then
      line = lastline
    end
    if { line, col } ~= { 0, 0 } then
      vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { line, col })
    end
  end,
})
