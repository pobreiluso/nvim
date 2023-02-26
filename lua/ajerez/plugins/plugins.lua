-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Packer
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'dracula/vim', as = 'dracula'}
  
  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = {{
      'nvim-lua/plenary.nvim', 
      'sharkdp/fd',
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
      'BurntSushi/ripgrep',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-telescope/telescope-media-files.nvim',
      'nvim-telescope/telescope-project.nvim',
      'nvim-telescope/telescope-fzy-native.nvim',
      'nvim-telescope/telescope-frecency.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'nvim-telescope/telescope-packer.nvim',
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

  -- Phpactor
  use({
  "gbprod/phpactor.nvim",
    run = require("phpactor.handler.update"), -- To install/update phpactor when installing this plugin
    requires = {
      "nvim-lua/plenary.nvim", -- required to update phpactor
      "neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
    },
    config = function()
      require("phpactor").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end
  })

  -- Mason
  use "williamboman/mason.nvim"
  use 'mfussenegger/nvim-lint'
  use 'mfussenegger/nvim-dap'


  -- LuaLine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
        vim.cmd("luafile  $HOME/.config/nvim/lua/ajerez/plugins/config/lualine.lua")
    end
  }

  -- BarBar
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

end)



