vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'nvim-treesitter/playground'

    use {
        'williamboman/nvim-lsp-installer',
        'neovim/nvim-lspconfig'
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        }
    }
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- to use the latest release
    }

    use 'tpope/vim-fugitive'

    use 'jwalton512/vim-blade'

    use 'tpope/vim-surround'

    use 'kyazdani42/nvim-web-devicons'

    use 'tpope/vim-commentary'

    -- inside setup function
    -- packer.startup(function(use)
    use { 'dasupradyumna/midnight.nvim' }
    -- end)

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end
)
