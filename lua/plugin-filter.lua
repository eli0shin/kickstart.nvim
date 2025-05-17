local M = {}

-- Define plugins that should NOT be loaded in VSCode
M.vscode_excluded_plugins = {
  -- LSP plugins (VSCode has its own LSP)
  'plugins.lsp',
  'plugins.typescript-tools',
  'plugins.tailwind-tools',
  -- Completion (VSCode handles this)
  'plugins.blink-cmp',
  -- UI elements that conflict with VSCode
  'plugins.no-neck-pain',
  'plugins.zen-mode',
  'plugins.oil', -- file explorer
  -- Treesitter (VSCode has its own syntax highlighting)
  'plugins.treesitter',
  -- Diagnostics (VSCode has its own)
  'plugins.lint',
  'plugins.cspell',
  -- DAP (debugging)
  'plugins.dap',
  -- Any other plugins that would conflict with VSCode
  'plugins.codecompanion',
  'plugins.avante',
  'plugins.copilot',
}

-- Function to filter plugins based on whether we're in VSCode
M.filter_plugins = function(plugins)
  if vim.g.vscode then
    local filtered = {}
    for _, plugin in ipairs(plugins) do
      -- Skip any plugins in our exclusion list
      local skip = false

      if type(plugin) == 'string' then
        -- For string plugins (repository paths)
        for _, excluded in ipairs(M.vscode_excluded_plugins) do
          if plugin == excluded then
            skip = true
            break
          end
        end
      elseif type(plugin) == 'table' then
        -- For require statements or plugin specs
        local plugin_name = nil

        -- Try to determine the plugin name
        if plugin[1] and type(plugin[1]) == 'string' then
          -- Regular plugin spec
          plugin_name = plugin[1]
        elseif plugin.name then
          -- Plugin with explicit name
          plugin_name = plugin.name
        elseif type(plugin) == 'function' then
          -- Skip checking functions for now
          skip = false
        end

        if plugin_name then
          for _, excluded in ipairs(M.vscode_excluded_plugins) do
            if plugin_name == excluded then
              skip = true
              break
            end
          end
        end
      end

      if not skip then
        table.insert(filtered, plugin)
      end
    end
    return filtered
  else
    -- In regular Neovim, use all plugins
    return plugins
  end
end

return M
