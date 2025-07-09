vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.number = true


vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    -- Open Nvim-Tree (left sidebar)
    require("nvim-tree.api").tree.open()
    require("toggleterm.terminal").Terminal
      :new({
        direction = "horizontal",
        size = 12,
        start_in_insert = false,
        close_on_exit = false,
        hidden = true,
      })
      :toggle()
  end,
})
