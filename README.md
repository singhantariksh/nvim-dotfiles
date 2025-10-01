# My Neovim dotfiles

My Neovim configuration built with Lua, and the help of [typecraft's](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=lKSghpiI4RgrFCxg) youtube playlist, [kickstart](https://github.com/nvim-lua/kickstart.nvim) nvim and me myself.

## In The [Beninging](https://www.youtube.com/watch?v=vacJSHN4ZmY)

**Prerequisites**: I started with Neovim 0.11.x and with [Nerd Fonts](https://www.nerdfonts.com/) too (I personally use [Maple Font NF](https://github.com/subframe7536/maple-font) btw if you care)

**Installation**:

```bash
cd ~/.config/nvim/
git clone https://github.com/singhantariksh/nvim-dotfiles.git
```

open neovim and everything should be installed automatically (hopefully)

## Configuration Structure

```
~/.config/nvim/
├── init.lua
├── lazy-lock.json
├── lua
│   ├── custom
│   │   └── lsp-fzf-menu.lua
│   ├── plugins
│   │   ├── alpha-greeter.lua
│   │   ├── auto-session.lua
│   │   ├── blink-cmp.lua
│   │   ├── bufferline.lua
│   │   ├── comments.lua
│   │   ├── conform.lua
│   │   ├── fzf-lua.lua
│   │   ├── git.lua
│   │   ├── harpoon.lua
│   │   ├── indent-line.lua
│   │   ├── lsp-config.lua
│   │   ├── lualine.lua
│   │   ├── neotree.lua
│   │   ├── terminal.lua
│   │   ├── themes.lua
│   │   ├── todo.lua
│   │   ├── treesitter.lua
│   │   ├── undotree.lua
│   │   └── which-key.lua
│   ├── plugins.lua
│   └── preferences.lua
└── README.md
```

## What does this offer you ask ?

### Mr. Manager

- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** [`init.lua`](./init.lua): It's called lazy but it's FAST. (because it can lazy load stuff)

### UI UX

- **[Gruvbox Material](https://github.com/sainnhe/gruvbox-material)** [`themes.lua`](./lua/plugins/themes.lua): I'm a gruvbox enjoyer.
- **[Alpha-nvim](https://github.com/goolord/alpha-nvim)** [`alpha-greeter.lua`](./lua/plugins/alpha-greeter.lua): A nice greeter with quick actions too!
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** [`lualine.lua`](./lua/plugins/lualine.lua): A statusline showing mode, file info, git status, diagnostics and more.
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)** [`bufferline.lua`](./lua/plugins/bufferline.lua): Buffer tabs for easy visualization between opened buffers.
- **[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)** [`indent-line.lua`](./lua/plugins/indent-line.lua): Visual indentation guides. (don't go over indentation lines in input mode lol)

### LSP (& Stuff)

- **[Mason](https://github.com/mason-org/mason.nvim)** [`lsp-config.lua`](./lua/plugins/lsp-config.lua): package manager for LSP servers, formatters, and linters.
- **[Mason-LSPconfig](https://github.com/mason-org/mason-lspconfig.nvim)** [`lsp-config.lua`](./lua/plugins/lsp-config.lua): Bridge between Mason and LSPs.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** [`lsp-config.lua`](./lua/plugins/lsp-config.lua): Quickstart configs for Neovim's LSP.
- **[Blink.cmp](https://github.com/saghen/blink.cmp)** [`blink-cmp.lua`](./lua/plugins/blink-cmp.lua): auto-completion engine with fuzzy (hehe) intelligence and snippet support.
- **[friendly-snippets](https://github.com/rafamadriz/friendly-snippets)** [`blink-cmp.lua`](./lua/plugins/blink-cmp.lua): Snippet collection for various languages.

### Structural Integrity

- **[Conform.nvim](https://github.com/stevearc/conform.nvim)** [`conform.lua`](./lua/plugins/conform.lua): Universal formatter which doesn't replace the whole buffer !!! :o
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** [`treesitter.lua`](./lua/plugins/treesitter.lua): syntax highlighting and code parsing to understand code structure. (goated)
- **[nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)** [`treesitter.lua`](./lua/plugins/treesitter.lua): Smart text objects and motions utilizing Treesitter.

### Instant Transmission

- **[FzfLua](https://github.com/ibhagwan/fzf-lua)** [`fzf-lua.lua`](./lua/plugins/fzf-lua.lua): fuzzy finder for ... a whole lotta things.
- **[Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)** [`neotree.lua`](./lua/plugins/neotree.lua): file explorer for viewing files haha.
- **[Harpoon 2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)** [`harpoon.lua`](./lua/plugins/harpoon.lua): The name's Primegan.

#### Custom LSP Menu with FzfLua

**[Custom LSP FzfLua Menu](./lua/custom/lsp-fzf-menu.lua)**: Henceforth, one menu shall rule them all. Created for FzfLua LSP options that `lsp_finder` doth not cover (see ### LSP/Diagnostics in their README). Press `<leader>c`, behold the menu, select thy command, and it shall be executed forthwith. Verily, 'tis better than remembering keybinds for features used but thrice per annum. (Claude did the coding whilst I provided the vibe)  

### Git

- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)** [`git.lua`](./lua/plugins/git.lua): I'll explain when I understand.

### QoL

- **[ToggleTerm](https://github.com/akinsho/toggleterm.nvim)** [`terminal.lua`](./lua/plugins/terminal.lua): It toggles terminals. (my comments be like)
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)** [`comments.lua`](./lua/plugins/comments.lua): Quick commenting. (so I don't have to remember the syntax of comments for a billion languages)
- **[UndoTree](https://github.com/mbbill/undotree)** [`undotree.lua`](./lua/plugins/undotree.lua): The multiverse of Undos.
- **[Which-Key](https://github.com/folke/which-key.nvim)** [`which-key.lua`](./lua/plugins/which-key.lua): For those who can't remember their keybinds. (me)
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** [`todo.lua`](./lua/plugins/todo.lua): Have too much shit to do but not too much time ? this is your friend. (if you use it)
- **[auto-session](https://github.com/rmagatti/auto-session)** [`auto-session.lua`](./lua/plugins/auto-session.lua): remembers and reopens your files and windows (as a session). (particularly useful when constantly `:wqa`'ing to check if your plugins are working)


## Preferences

The [`preferences.lua`](lua/preferences.lua) file contains my ... preferences ?

I have tried (kinda) to make the file structure understandable so I don't have to update this readme for every minor change I make in my preferences :D

...

**Thanks!**

## TL;DR
I hate you.
