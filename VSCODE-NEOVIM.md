# VSCode-Neovim Integration

This Neovim configuration has been enhanced to work seamlessly with the [VSCode-Neovim](https://github.com/vscode-neovim/vscode-neovim) extension.

## Features

- **Automatic Environment Detection**: The configuration automatically detects whether it's running in VSCode or standalone Neovim.
- **Conditional Plugin Loading**: Plugins that would conflict with VSCode (such as LSP, completion, and UI elements) are automatically disabled when running in VSCode.
- **Unified Keybindings**: Keybindings work in both environments but are routed to the appropriate commands (VSCode commands in VSCode, Neovim commands in Neovim).
- **VSCode-Specific Optimizations**: Additional keybindings and settings are applied when running in VSCode for optimal integration.

## Setup Instructions

### 1. Install the VSCode-Neovim Extension

Install the [VSCode-Neovim extension](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) from the Visual Studio Code marketplace.

### 2. Configure VSCode Settings

Add the following settings to your VSCode `settings.json` file:

```json
{
  "vscode-neovim.neovimExecutablePaths.darwin": "/path/to/your/nvim",  // macOS
  "vscode-neovim.neovimExecutablePaths.linux": "/path/to/your/nvim",   // Linux
  "vscode-neovim.neovimExecutablePaths.win32": "C:\\path\\to\\your\\nvim.exe", // Windows
  
  // Uncomment to disable certain extensions from VSCode-Neovim
  // "vscode-neovim.disableCompletion": true,
  // "vscode-neovim.disableLspIntegration": true,
  
  // Use Neovim for all text editing(true)/only when starting with nvim command(false)
  "vscode-neovim.useWSL": false,
  
  // Customize which keys are handled by VSCode-Neovim in insert mode
  "vscode-neovim.ctrlKeysForInsertMode": [
    "a", "d", "h", "j", "m", "o", "r", "t", "u", "w"
  ],
  
  // Customize which keys are handled by VSCode-Neovim in normal mode
  "vscode-neovim.ctrlKeysForNormalMode": [
    "a", "b", "d", "e", "f", "h", "i", "j", "k", "l",
    "m", "o", "r", "t", "u", "v", "w", "x", "y", "z", "/", "]"
  ]
}
```

### 3. Custom Keybindings (Optional)

You may want to add custom keybindings to your VSCode `keybindings.json` file. Here's an example:

```json
[
  {
    "command": "vscode-neovim.send",
    "key": "alt+h",
    "when": "editorTextFocus && neovim.mode != insert",
    "args": "<A-h>"
  },
  {
    "command": "vscode-neovim.send",
    "key": "alt+l",
    "when": "editorTextFocus && neovim.mode != insert",
    "args": "<A-l>"
  }
]
```

## Key Differences in VSCode Mode

When running in VSCode, the following changes are applied to the configuration:

1. **Disabled Plugins**:
   - LSP plugins (VSCode's LSP is used instead)
   - Completion plugins (VSCode's completion is used)
   - UI plugins like no-neck-pain, zen-mode
   - Treesitter (VSCode handles syntax highlighting)
   - Other plugins that would conflict with VSCode's features

2. **Remapped Commands**:
   - Window navigation (<C-h/j/k/l>) uses VSCode's navigation commands
   - Split creation uses VSCode's split commands
   - File operations use VSCode's commands

3. **VSCode-Specific Keybindings**:
   - Additional keybindings specific to VSCode's features are added

## Troubleshooting

If you encounter issues with the VSCode-Neovim integration:

1. Check the VSCode output panel for VSCode-Neovim logs
2. Try starting Neovim with `--clean` to isolate configuration issues
3. Ensure your Neovim version is compatible with VSCode-Neovim (0.10.0 or higher)
4. Check if there are conflicting VSCode extensions (like VSCodeVim)
