local M = {}

M.execute_action = function(action_table)
  -- Check if we're in VSCode
  if vim.g.vscode then
    if action_table.vscode_command then
      -- Execute VSCode command
      local vscode = require 'vscode'
      if action_table.is_sync then
        return vscode.call(action_table.vscode_command, action_table.vscode_opts or {})
      else
        return vscode.action(action_table.vscode_command, action_table.vscode_opts or {})
      end
    end
  else
    -- Execute Neovim action
    if type(action_table.nvim_action) == 'function' then
      return action_table.nvim_action()
    elseif type(action_table.nvim_action) == 'string' then
      return vim.cmd(action_table.nvim_action)
    end
  end
end

return M
