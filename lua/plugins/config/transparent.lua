local status_ok, transparent = pcall(require, "transparent")
if not status_ok then
  return
end

vim.g.transparent_enabled = true
transparent.setup({
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
      "FloatBorder"
    },
    exclude_groups = {}, -- table: groups you don't want to clear
  })
