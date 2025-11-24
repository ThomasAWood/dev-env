# Neovim Configuration Overview

## editor.lua

Visual enhancements and editing improvements

- **mini.nvim** - Collection of utilities:
  - mini.ai: Enhanced text objects (inside/around)
  - mini.surround: Add/delete/replace surroundings (brackets, quotes)
  - mini.statusline: Simple statusline
- **guess-indent.nvim** - Auto-detects indentation style
- **indent-blankline.nvim** - Shows indent guides
- **tokyonight.nvim** - Colorscheme (tokyonight-night variant)
- **todo-comments.nvim** - Highlights TODO, FIXME, etc. in comments

## telescope.lua

Fuzzy finder for everything

- File search (`<leader>sf`)
- Live grep (`<leader>sg`)
- Help tags (`<leader>sh`)
- Keymaps (`<leader>sk`)
- Diagnostics (`<leader>sd`)
- Buffer search (`<leader><leader>`)
- Current buffer search (`<leader>/`)
- Extensions: fzf-native for performance, ui-select for better selection UI

## lsp.lua

Language Server Protocol configuration

- **mason.nvim** - LSP/tool installer
- **nvim-lspconfig** - LSP configurations
- **mason-lspconfig** - Bridge between Mason and lspconfig
- **mason-tool-installer** - Auto-installs LSP servers
- **fidget.nvim** - LSP status updates
- Integrates with blink.cmp for completion capabilities

## completion.lua

Autocompletion engine

- **blink.cmp** - Main completion plugin
- **LuaSnip** - Snippet engine
- Integrates with lazydev for Neovim Lua API completion

## treesitter.lua

Syntax highlighting and code understanding

- Advanced syntax highlighting
- Auto-installs language parsers
- Enables treesitter-based indentation
- Pre-installed parsers: bash, c, diff, html, lua, markdown, vim, and more

## formatting.lua

Code formatting

- **conform.nvim** - Format on save and manual formatting
- Keymap: `<leader>f` to format buffer
- Auto-formats on save (with fallback to LSP)
- Configured formatters by filetype (e.g., stylua for Lua)

## git.lua

Git integration

- **gitsigns.nvim** - Git signs in gutter
- Navigate changes: `]c` next, `[c` previous
- Stage/reset hunks: `<leader>hs`, `<leader>hr`
- Preview/blame: `<leader>hp`, `<leader>hb`
- Diff views: `<leader>hd`, `<leader>hD`
- Toggle line blame: `<leader>tb`

## which-key.lua

**Keymap hints**
Shows popup of available keybindings when you start typing a key sequence

## debug.lua

**DAP (Debug Adapter Protocol)**
Debug support for running and debugging code

## tmux-navigator.lua

**Tmux integration**
Seamless navigation between Neovim splits and tmux panes

## Key Principles

1. **Modular** - Each plugin file handles a specific domain
2. **Lazy loading** - Plugins load on events/commands to optimize startup
3. **Well-documented** - Comments explain what each section does
4. **Kickstart-based** - Follows Kickstart.nvim conventions

## Quick Reference

- **Search files**: `<leader>sf`
- **Search text**: `<leader>sg`
- **Format code**: `<leader>f`
- **Save file**: `<leader>w`
- **Git hunks**: `<leader>h*`
- **Help/docs**: `<leader>sh`
