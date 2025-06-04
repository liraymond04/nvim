vim.g.transparent_enabled = true

return {
  {
    "tpope/vim-sleuth",
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "󰐊" },
        topdelete = { text = "󰐊" },
        changedelete = { text = "▎" },
      },
      signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
      numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
      linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
      word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
      watch_gitdir = {
        interval = 1000,
        follow_files = true,
      },
      attach_to_untracked = true,
      current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
      },
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default
      max_file_length = 40000,
      preview_config = {
        -- Options passed to nvim_open_win
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "▏",
      },
      scope = {
        enabled = true,
      },
      exclude = {
        filetypes = { "terminal", "nofile" },
        buftypes = {
          "help",
          "startify",
          "dashboard",
          "packer",
          "neogitstatus",
          "NvimTree",
          "Trouble",
        },
      },
    },
  },
  {
    "xiyaowong/nvim-transparent",
    opts = {
      extra_groups = { -- table/string: additional groups that should be cleared
        -- In particular, when you set it to 'all', that means all available groups

        -- example of akinsho/nvim-bufferline.lua
        "all",
        -- whichkey
        "WhichKeyFloat",
        "WhichKeyBorder",
        -- nvim-tree
        "NvimTreeFolderName",
        "NvimTreeNormalFloat",
        -- lsp diagnostic
        -- "DiagnosticWarn",
        -- "DiagnosticError",
        -- "DiagnosticInfo",
        -- "DiagnosticHint",
        -- "DiagnosticOk",
        -- "DiagnosticFloatingError",
        -- "DiagnosticFloatingWarn",
        -- "DiagnosticFloatingInfo",
        -- "DiagnosticFloatingHint",
        -- "DiagnosticFloatingOk",
        "DiagnosticVirtualTextError",
        "DiagnosticVirtualTextWarn",
        "DiagnosticVirtualTextInfo",
        "DiagnosticVirtualTextHint",
        "DiagnosticVirtualTextOk",
        "NormalFloat",
        "FloatBorder",
        "TabLineFill",
        "FidgetWindow",
      },
      exclude_groups = {}, -- table: groups you don't want to clear
    },
  },
}
