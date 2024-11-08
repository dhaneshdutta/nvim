-- plugins.lua

-- Bootstrap Packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'folke/tokyonight.nvim'
  
  -- File Explorer
  use 'kyazdani42/nvim-web-devicons'  -- Optional, for file icons
  use 'kyazdani42/nvim-tree.lua'
  
  -- Status line
  use 'nvim-lualine/lualine.nvim'
  
  -- Dashboard
  use 'goolord/alpha-nvim'

  -- LSP and Mason setup
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'

  -- Telescope for file finding and other utilities
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)

