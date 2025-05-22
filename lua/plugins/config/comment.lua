local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

-- local U = require('Comment.utils')

comment.setup({
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  -- post_hook = function(ctx)
  --   -- Check whether we were in VISUAL mode
  --   if ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
  --     vim.cmd('normal gv')
  --   end
  -- end,
})
