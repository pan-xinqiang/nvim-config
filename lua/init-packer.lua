return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use { 'windwp/windline.nvim', config = function() require('wlsample.bubble2')

    end }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment')
        end
    }




    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                tag = "v1.*",
                config = function()
                    require("init-tree")
                end
            }
        }
    }



    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons', config = function()

        require("bufferline")
    end }


    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    }

    use {
        use 'hrsh7th/nvim-cmp', -- Autocompletion plugin
        use 'hrsh7th/cmp-cmdline', -- { name = 'cmdline' }
        use 'hrsh7th/cmp-path', -- { name = 'path' }
        use 'hrsh7th/cmp-buffer', -- { name = 'buffer' },
        use 'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
        use 'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
        use 'L3MON4D3/LuaSnip', -- Snippets plugin
        use 'hrsh7th/cmp-vsnip', -- { name = 'vsnip' }
        use 'hrsh7th/vim-vsnip',
        config = function()
            require('init-cmp')
        end
    }



    use({
        "olimorris/onedarkpro.nvim",
        event = "BufEnter",
        config = function()
            require("init-theme")
        end,
    })
end)
