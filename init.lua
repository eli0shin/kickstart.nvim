require 'nvim-config'
require 'motions'
require 'autocommands'
require 'lazy-setup'

vim.g.github_enterprise_urls = { 'https://github.paypal.com' }

--  To check the current status of your plugins, run
--    :Lazy
require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  require 'plugins.comment',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  require 'plugins.nvim-cmp',
  require 'plugins.tokyonight',
  require 'plugins.nightfox',
  require 'plugins.catppuccin',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.gh',
  require 'plugins.nvim-tree',
  require 'plugins.zen-mode',
  require 'plugins.octo',
  require 'plugins.telescope-file-browser',
  require 'plugins.leap',
  require 'plugins.autoclose',
  require 'plugins.harpoon',
  require 'plugins.lazy',
  require 'plugins.typescript-tools',
  require 'plugins.jester',
  require 'plugins.noice',
  require 'plugins.cspell',
  require 'plugins.diffview',
  require 'plugins.tmux',
  require 'plugins.logsitter',
  require 'plugins.oil',
  require 'plugins.arrow',
  require 'plugins.rest',
  require 'plugins.render-markdown',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
