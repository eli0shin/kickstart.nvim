require 'nvim-config'
require 'motions'
require 'autocommands'
require 'lazy-setup'

vim.g.github_enterprise_urls = { 'https://github.paypal.com' }

--  To check the current status of your plugins, run
--    :Lazy
require('lazy').setup({
  -- Intelligently set tab settings based on file
  { 'tpope/vim-sleuth', event = { "BufReadPre", "BufNewFile" } },
  -- Git integration
  { 'tpope/vim-fugitive', event = "VeryLazy", cmd = { "Git", "Gstatus", "Gblame", "Gpush", "Gpull" } },
  -- GitHub integration
  { 'tpope/vim-rhubarb', dependencies = { 'tpope/vim-fugitive' }, event = "VeryLazy" },
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
}, {
  ui = {
    icons = {},
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        "spellfile_plugin",
        "rplugin",
        "shada",
      },
    },
  },
  -- Add profiling capabilities
  profiling = {
    -- Enable profiling of loading times
    loader = false,
    -- Enable detailed profiling of require() calls
    require = false,
  },
})
