-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Packer
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'dracula/vim', as = 'dracula'}
  
  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    -- some optional icons
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  })

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = {{
      'nvim-lua/plenary.nvim', 
      'sharkdp/fd',
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    } }
  }

  -- LSP
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- OneDark Theme
  use 'navarasu/onedark.nvim'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use({ 'vladdoster/remember.nvim', config = [[ require('remember') ]] })

  use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })

end)



