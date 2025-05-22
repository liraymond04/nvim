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
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "tpope/vim-sleuth",
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
    main = "ibl",
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
  {
    "ThePrimeagen/harpoon",
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
    opts = {},
    lazy = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = "BufReadPost",
    opts = {},
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    lazy = false,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
  },
  {
    "nvimtools/none-ls.nvim"
  },
  {
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   config = function(_, opts) require 'lsp_signature'.setup(opts) end
  -- },
  {
    "b0o/SchemaStore.nvim",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "justinmk/vim-sneak",
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
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = { "make" },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      'windwp/nvim-ts-autotag',
    },
    lazy = false,
  },
  {
    -- dir = "/home/liray/Documents/Programming/nvim/awa5_rs.nvim",
    -- name = "awa5_rs.nvim",
    "liraymond04/awa5_rs.nvim"
  },
  -- git
  {
    "lewis6991/gitsigns.nvim",
  },
  -- dap,
  {
    "mfussenegger/nvim-dap",
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "rcarriga/nvim-dap-ui",
  },
  {
    "nvim-telescope/telescope-dap.nvim",
  },
  {
    "pteroctopus/faster.nvim",
  },
  { -- requires webkit2gtk and deno
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
}

return plugins
