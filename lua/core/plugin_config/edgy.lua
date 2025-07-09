require("edgy").setup({
  left = { size = 40 },
  bottom = { ft = "terminal", size = 10, title = "Terminal", open = function ()
    vim.cmd("split | terminal")
  end },
})
