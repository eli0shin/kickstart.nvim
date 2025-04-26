require 'nvim-config'
require 'motions'
require 'autocommands'
require 'lazy-setup'

vim.g.github_enterprise_urls = { 'https://github.paypal.com' }

--  To check the current status of your plugins, run
--    :Lazy
require('lazy').setup({
  'tpope/vim-sleuth',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  require 'plugins.comment',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  require 'plugins.blink-cmp',
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
  require 'plugins.no-neck-pain',
  require 'plugins.arctic',
  require 'plugins.avante',
  require 'plugins.mcp-hub',
  require 'plugins.copilot',
  require 'plugins.aider',
  require 'plugins.tailwind-tools',
  require 'plugins.codecompanion',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
}, {
  ui = {
    icons = {},
  },
})
