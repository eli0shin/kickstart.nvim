require 'nvim-config'
require 'motions'
require 'autocommands'
require 'lazy-setup'

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
  require 'plugins.centerpad',
  require 'plugins.zen-mode',
  require 'plugins.octo',
  require 'plugins.telescope-file-browser',
  require 'plugins.leap',
  require 'plugins.autoclose',
  require 'plugins.harpoon',
  require 'plugins.lazy',
  require 'plugins.typescript-tools',
  require 'plugins.jester',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
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
