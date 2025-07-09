require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nordfox',
  },
  sections = {
    lualine_a = { 'branch' },
    lualine_b = { 'filename' },
    lualine_c = {},
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
