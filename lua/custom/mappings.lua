local M = {}

-- Your custom mappings
M.abc = {
  i = {
     ["kj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    -- ...
  }
}

return M