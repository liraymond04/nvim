local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  return
end

local mason_dap_status_ok, mason_dap = pcall(require, "mason-nvim-dap")
if not mason_dap_status_ok then
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
  return
end

local lsp_config_status_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_config_status_ok then
  return
end

local lsp_path = "plugins.config.lsp" .. "."

require(lsp_path .. "lsp-signature")
local lsp_handlers = require(lsp_path .. "handlers")

lspconfig.gdscript.setup({
  root_dir = require('lspconfig.util').root_pattern('project.godot', '.git'),
  filetypes = { 'gd', 'gdscript', 'gdscript3' },
})

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_dap.setup({
  ensure_installed = {
    "codelldb",
  },
  automatic_installation = false,
  handlers = {},
})

mason_lspconfig.setup({
  ensure_installed = {
    "cssls",
    "cssmodules_ls",
    "emmet_ls",
    "html",
    "eslint",
    "jsonls",
    "lua_ls",
    "ts_ls",
    "svelte",
    "pyright",
    "yamlls",
    "bashls",
    "clangd",
    "cmake",
    "rust_analyzer",
    -- "tailwindcss",
    "zk",
    "texlab",
    "r_language_server",
  },
})

local util = require "lspconfig.util"

mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = lsp_handlers.on_attach,
      capabilities = lsp_handlers.capabilities,
    }
  end,
  ["lua_ls"] = function()
    lspconfig.lua_ls.setup {
      on_attach = lsp_handlers.on_attach,
      capabilities = lsp_handlers.capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          }
        },
      },
    }
  end,
  ["rust_analyzer"] = function ()
    lspconfig.rust_analyzer.setup {
      on_attach = lsp_handlers.on_attach,
      capabilities = lsp_handlers.capabilities,
      filetypes = { "rust" },
      root_dir = util.root_pattern("Cargo.toml"),
      settings = {
        ['rust-analyzer'] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    }
  end,
}

lsp_handlers.setup()

local dap = require('dap')
dap.configurations.c[1].args = function()
  local argument_string = vim.fn.input('Program arguments: ')
  return vim.fn.split(argument_string, " ", true)
end


require(lsp_path .. "null-ls")

-- set highlight LSP highlight groups
vim.api.nvim_set_hl(0, "LspReferenceText", { blend = 100, underline = true })
vim.api.nvim_set_hl(0, "LspReferenceRead", { blend = 100, underline = true })
