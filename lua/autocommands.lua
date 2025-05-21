-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_user_command('Browse', function(opts)
  vim.fn.system { 'open', opts.fargs[1] }
end, { nargs = 1 })

-- Add :Rebase branch_name command
vim.api.nvim_create_user_command('Rebase', function(opts)
  local branch = opts.args
  if branch == '' then
    print 'Error: Please provide a branch name. Usage: :Rebase <branch>'
    return
  end

  local function run_git_command(cmd)
    local handle = io.popen(cmd)
    if handle then
      local result = handle:read '*a'
      handle:close()
      print(result)
    else
      print('Error running command: ' .. cmd)
    end
  end

  run_git_command('git checkout ' .. branch)
  run_git_command 'git pull'
  run_git_command 'git checkout -'
  run_git_command('git rebase ' .. branch)
end, {
  nargs = 1, -- Require exactly one argument (branch name)
  complete = function()
    -- Autocomplete branch names
    local branches = {}
    local handle = io.popen "git branch --format='%(refname:short)' 2>/dev/null"
    if handle then
      for line in handle:lines() do
        table.insert(branches, line)
      end
      handle:close()
    end
    return branches
  end,
})

vim.api.nvim_create_user_command('Messages', function()
  local out = vim.api.nvim_exec2('messages', { output = true }).output
  local buf = vim.api.nvim_create_buf(false, true)

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(out, '\n'))
  vim.bo[buf].filetype = 'msglog'
  -- Create a new window split and get its ID
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    split = 'below',
    height = 10,
  })
  -- Set current window to the new split
  vim.api.nvim_set_current_win(win)
end, {})
