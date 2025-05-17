-- Determine if we're in VSCode or regular Neovim
-- The vscode-neovim extension sets g:vscode automatically

require 'nvim-config'
require 'motions'
require 'autocommands'
require 'lazy-setup'

-- Load VSCode-specific configurations if in VSCode
if vim.g.vscode then
  require('vscode-integration').setup()
end

vim.g.github_enterprise_urls = { 'https://github.paypal.com' }

-- Import plugin filter
local plugin_filter = require 'plugin-filter'

--  To check the current status of your plugins, run
--    :Lazy
local plugins = {
  'tpope/vim-sleuth',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  require 'plugins.no-neck-pain',
  require 'plugins.comment',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.zen-mode',
  require 'plugins.octo',
  require 'plugins.leap',
  require 'plugins.typescript-tools',
  require 'plugins.jester',
  require 'plugins.cspell',
  require 'plugins.diffview',
  require 'plugins.tmux',
  require 'plugins.logsitter',
  require 'plugins.oil',
  require 'plugins.arrow',
  require 'plugins.rest',
  require 'plugins.render-markdown',
  require 'plugins.grug-far',
  require 'plugins.arctic',
  require 'plugins.mcp-hub',
  require 'plugins.copilot',
  require 'plugins.blink-compat-init',
  require 'plugins.blink-cmp',
  require 'plugins.avante',
  require 'plugins.aider',
  require 'plugins.tailwind-tools',
  require 'plugins.codecompanion',
  require 'plugins.dap',
  require 'plugins.indent_line',
  require 'plugins.lint',
  require 'plugins.windsurf',
}

-- Filter plugins based on environment
require('lazy').setup(plugin_filter.filter_plugins(plugins), {
  ui = {
    icons = {},
  },
})
