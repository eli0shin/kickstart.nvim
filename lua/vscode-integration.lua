local M = {}

M.setup = function()
  -- Only run this in VSCode
  if not vim.g.vscode then
    return
  end

  -- Set up clipboard to use VSCode's clipboard
  vim.g.clipboard = vim.g.vscode_clipboard

  -- Define specific VSCode-only keybindings
  local vscode = require 'vscode'

  -- Code navigation
  vim.keymap.set('n', 'gd', function()
    vscode.action 'editor.action.revealDefinition'
  end, { desc = 'Go to definition' })

  vim.keymap.set('n', 'gD', function()
    vscode.action 'editor.action.peekDefinition'
  end, { desc = 'Peek definition' })

  vim.keymap.set('n', 'K', function()
    vscode.action 'editor.action.showHover'
  end, { desc = 'Show hover' })

  vim.keymap.set('n', 'gr', function()
    vscode.action 'editor.action.referenceSearch.trigger'
  end, { desc = 'Find references' })

  -- Workspace commands
  vim.keymap.set('n', '<leader>sf', function()
    vscode.action 'workbench.action.quickOpen'
  end, { desc = 'Find file' })

  vim.keymap.set('n', '<leader>gk', function()
    vscode.action 'workbench.action.findInFiles'
  end, { desc = 'Find in files' })

  -- Format document
  vim.keymap.set('n', '<leader>f', function()
    vscode.action 'editor.action.formatDocument'
  end, { desc = 'Format document' })

  -- Create custom commands that link to VSCode
  vim.api.nvim_create_user_command('Format', function()
    vscode.action 'editor.action.formatDocument'
  end, {})
end

return M
