local plugins = {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local theme = require "onedark"
      theme.setup({
        transparent = true,
      })
      theme.load()
    end,
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "windwp/nvim-autopairs",
  },
  {
    "numToStr/Comment.nvim",
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "kyazdani42/nvim-tree.lua",
  },
  {
    "akinsho/bufferline.nvim",
  },
  {
    "moll/vim-bbye",
  },
  {
    "nvim-lualine/lualine.nvim",
  },
  {
    "akinsho/toggleterm.nvim",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
  },
  {
    "goolord/alpha-nvim",
  },
  {
    "folke/which-key.nvim",
  },
  {
    "xiyaowong/nvim-transparent",
  },
  {
    "max397574/better-escape.nvim",
  },
  -- cmp plugins
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "saadparwaiz1/cmp_luasnip",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/cmp-nvim-lua",
  },
  -- snippets
  {
    "L3MON4D3/LuaSnip",
    version = "2.*",
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  {
    "rafamadriz/friendly-snippets"
  },
  -- lsp
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "jose-elias-alvarez/null-ls.nvim"
  },
  {
    "ray-x/lsp_signature.nvim",
  },
  {
    "b0o/SchemaStore.nvim",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "RRethy/vim-illuminate",
  },
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
  },
  -- telescope
  {
    "ahmedkhalf/project.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "ahmedkhalf/project.nvim" }
  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
  },
  -- git
  {
    "lewis6991/gitsigns.nvim",
  },
}

return plugins
