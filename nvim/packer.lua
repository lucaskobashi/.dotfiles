-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
	
	use 'wbthomason/packer.nvim'

    -- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons'}
	}

    -- telescope sorter 
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }
    
    -- LSP server manager
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }

	use {
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	}

    -- theme
    use 'shaunsingh/nord.nvim'

    use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

end)
