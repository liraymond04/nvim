local M = {}

function M.toggle_comment()
  local mode = vim.fn.visualmode()
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  local start_col = vim.fn.col("'<")
  local end_col = vim.fn.col("'>")

  -- Call the toggle function
  require("Comment.api").toggle.linewise(mode)

  -- Restore visual mode and selection
  vim.fn.setpos(".", { 0, start_line, start_col, 0 })
  if mode == "v" then
    vim.cmd("normal! v")
  elseif mode == "V" then
    vim.cmd("normal! V")
  elseif mode == "" then
    vim.cmd("normal! ")
  end
  vim.fn.setpos(".", { 0, end_line, end_col, 0 })
end

return M
