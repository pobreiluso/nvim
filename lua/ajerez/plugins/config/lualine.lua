-- Define a function to check if the current buffer is a neovim-tree buffer
local function is_nvimtree()
  local bufname = vim.fn.bufname("%")
  return vim.startswith(bufname, "NvimTree")
end


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      --statusline = { 'NvimTree' },
      statusline = { },
      winbar = { },
    },
    ignore_focus = { 'NvimTree' },
    always_divide_middle = true,
    always_show_bufferline = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
    format_function = function() return is_nvimtree() and '' or nil end,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
  laststatus = 2,

}

