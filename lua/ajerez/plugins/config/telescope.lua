-- 
-- Telescope
-- 
require('telescope').setup{
  defaults = {
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    file_sorter = require'telescope.sorters'.get_fzy_sorter,
    prompt_prefix = "> ",
    color_devicons = true,
    -- cwd = vim.loop.cwd(),
  }
}
