local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  modules = {},
  sync_install = false, -- install parsers synchronously
  auto_install = true, -- needs tree-sitter-cli (cargo install or npm install)
  ensure_installed = "all", -- one of "all" or a list of languages
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    -- disable = { "css" },    -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = {} },
})

local awa5_rs = require("awa5_rs")
awa5_rs.setup({})
