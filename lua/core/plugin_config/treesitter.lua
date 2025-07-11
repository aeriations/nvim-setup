require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "lua", "rust", "python", "cpp", "javascript", "typescript", "html", "css" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
