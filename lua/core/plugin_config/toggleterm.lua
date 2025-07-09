require("toggleterm").setup({
  size = 12,
  direction = "horizontal",
  close_on_exit = true,
  float_opts = {
  border = "rounded",
  width = 120,
  height = 30,
  },
  highlights = {
  Normal = { link = "Normal" },
  NormalFloat = { link = "NormalFloat" },
  FloatBorder = { link = "FloatBorder" },
  },
})
