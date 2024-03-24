# `nvim` Configuration

| Start Screen | Code&nbsp;&nbsp;&nbsp; |
|--------------|------|
| ![Start Screen](./art/startscreen.png) | ![Code](./art/code.png) |

When I migrated to `nvim`, I had 3 goals in mind: Speed, simplicity, and elegance.

As such, I decided that it wasn't worth it to start from a prebuilt configuration, but rather piece together plugins and config by hand, to make sure that everything was necessary.

## Plugin List

To guarentee that every plugin has a reason to be installed, each one is documented below, with a "What" and a "Why":

### Alpha (`goolord/alpha-nvim`)

**What**: Dashboard that opens on `nvim` start
**Why**: Gives quick access to files and common actions.

### Autopairs (`windwp/nvim-autopairs`)
**What**: Automatically closes parenthesis, brackets, etc.
**Why**: Makes typing functions, arrays, and pieces of code with brackets faster

### Autosave (`Pocco81/auto-save.nvim`)
**What**: When a file has been modified, it is automatically saved
**Why**: Helps ensure that previews are live-updated, and also that work is not lost when accidentally closing the terminal, etc.

### Bufferline (`akinsho/bufferline.nvim`)
**What**: "Tab bar" like display of open buffers at the top of the screen
**Why**: Quick access to recently opened files

### Completions (Set of 4 plugins)

#### `hrsh7th/cmp-nvim-lsp` and `hrsh7th/nvim-cmp`
**What**: Allows a completion window, and have LSP suggestions in that competions window
**Why**: Enables autocomplete for faster typing of code

#### `L3MON4D3/LuaSnip`
**What**: Common snippets for Lua, added to the completions menu
**Why**: Prevents context-switching when needing to get snippets

#### `github/copilot.vim`
**What**: Github Copilot suggestions for Neovim, displayed in-line
**Why**: Inline generative AI allows fast completions of larger chunks of code to increase productivity.

### Copilot Chat (`CopilotC-Nvim/CopilotChat.nvim`)

**What**: Adds a Github Copilot Chat window to Neovim
**Why**: Prevents context-switching when needing a generative AI to help review, debug, or write code

### Gitsigns (`lewis6991/gitsigns.nvim`)

**What**: Adds various Git integrations to `nvim`, importantly a Git gutter
**Why**: Allows easy viewing of what changes have been made to a file with Git, and other useful Git featuers

### Indent Lines (`lukas-reineke/indent-blankline.nvim`)

**What**: Shows indents with vertical lines
**Why**: Helps clarify indents and make them visible at a glance

### LSP (Set of 3 plugins)

#### Mason (`williamboman/mason.nvim`)

**What**: A UI to install LSPs, formatters, and more
**Why**: Makes installation of LSPs faster and have a easy way to check what is installed

#### Mason LSP Config (`williamboman/mason-lspconfig.nvim`)
**What**: Configure Mason's LSP installation
**Why**: Enables Auto-Installation of LSPs

#### NVIM LSP Config (`neovim/nvim-lspconfig`)
**What**: Allows configuration of installed LSPs, and set LSP functionality
**Why**: Configuring LSP warning indicators, and key shortcuts for LSPs

### Lualine (`nvim-lualine/lualine.nvim`)
**What**: A status bar at the bottom of the `nvim` window
**Why**: See important information, like the current insert mode, a ruler, and more at a glance

### Neotree (`nvim-neo-tree/neo-tree.nvim`)
**What**: A file tree to the left of the `nvim` window
**Why**: Allows quick navigation of the directory, as well as understanding the file struture at a glance

### NoneLS (`nvimtools/none-ls.nvim`)
**What**: Integrates LSP functionality into `nvim`
**Why**: Enables formatting with a keystroke

### One Dark Pro (`olimorris/onedarkpro.nvim`)
**What**: The One Dark Pro VSCode theme for `nvim`
**Why**: Makes `nvim` aesthetically pleasing

### Telescope (`nvim-telescope/telescope.nvim`)
**What**: A file searching tool, as well as a UI for general fuzzy-finding
**Why**: Acts as a UI wrapper for other tools (i.e. Copilot Chat), as well as enabling fuzzy-finding for files

### Treesitter (`nvim-treesitter/nvim-treesitter`)
**What**: A tool to auto-indent and highlight code
**Why**: Syntax highlighting and auto-indenting helps the editor better understand the code