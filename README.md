# My Neovim dotfiles

My Neovim configuration built with Lua, and the help of [typecraft's](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=lKSghpiI4RgrFCxg) youtube playlist, [kickstart](https://github.com/nvim-lua/kickstart.nvim) nvim and me myself.

## In The Beninging

**Prerequisites**: I started with Neovim 0.11.x and with [Nerd Fonts](https://www.nerdfonts.com/) too (I personally use [Maple Font NF CN](https://github.com/subframe7536/maple-font))
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
├── README.md
└── lua/
    ├── plugins.lua
    ├── preferences.lua
    └── plugins/
        ├── alpha-greeter.lua
        ├── blink-cmp.lua
        ├── bufferline.lua
        ├── comments.lua
        ├── conform.lua
        ├── git.lua
        ├── harpoon.lua
        ├── indent-line.lua
        ├── lsp-config.lua
        ├── lualine.lua
        ├── neotree.lua
        ├── telescope.lua
        ├── terminal.lua
        ├── themes.lua
        ├── treesitter.lua
        ├── undotree.lua
        └── which-key.lua
```

## What does this offer you ask ?

### Mr. Manager

- **[Lazy.nvim](https://github.com/folke/lazy.nvim)**: It's called lazy but it's FAST. (because it can lazy load stuff) [`init.lua`](./init.lua) 

### UI UX

- **[Gruvbox](https://github.com/sainnhe/gruvbox-material)**: I'm a gruvbox enjoyer. [`themes.lua`](./lua/plugins/themes.lua) 
- **[Alpha-nvim](https://github.com/goolord/alpha-nvim)**: A nice greeter with quick actions too! [`alpha-greeter.lua`](./lua/plugins/alpha-greeter.lua)
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)**: A statusline showing mode, file info, git status, diagnostics and more. [`lualine.lua`](./lua/plugins/lualine.lua)
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)**: Buffer tabs for easy visualization between opened buffers. [`bufferline.lua`](./lua/plugins/bufferline.lua) 
- **[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)**: Visual indentation guides. (don't go over indentation lines in input mode lol) [`indent-line.lua`](./lua/plugins/indent-line.lua)

### LSP (& Stuff) [`lsp-config.lua`](./lua/plugins/lsp-config.lua) 

- **[Mason](https://github.com/mason-org/mason.nvim)**: package manager for LSP servers, formatters, and linters.
- **[Mason-LSPconfig](https://github.com/mason-org/mason-lspconfig.nvim)**: Bridge between Mason and LSPs.
- **[Blink.cmp](https://github.com/saghen/blink.cmp)**: auto-completion engine with fuzzy (hehe) intelligence and snippet support.

### Structural Integrity
- **[Conform.nvim](https://github.com/stevearc/conform.nvim)**: Universal formatter which doesn't replace the whole buffer !!! :o [`conform.lua`](./lua/plugins/conform.lua)
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: syntax highlighting and code parsing to understand code structure. (goated) [`treesitter.lua`](./lua/plugins/treesitter.lua) 

### Instant Transmission

- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)**: fuzzy finder for ... a whole lotta things. [`telescope.lua`](./lua/plugins/telescope.lua) 
	- **[Telescope FZF Native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)**: It provides telescope with additional fuzzy capabilities.
- **[Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)**: file explorer with tree view, buffer list, and git status integration. [`neotree.lua`](./lua/plugins/neotree.lua)
- **[Harpoon 2](https://github.com/ThePrimeagen/harpoon)**: The name's Primegan. [`harpoon.lua`](./lua/plugins/harpoon.lua) 

### Git

- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)**: Never used it. [`git.lua`](./lua/plugins/git.lua) 

### QoL

- **[ToggleTerm](https://github.com/akinsho/toggleterm.nvim)**: It toggles terminals. (my comments be like) [`terminal.lua`](./lua/plugins/terminal.lua) 
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)**: Quick commenting. (so I don't have to remember the syntax of comments for a billion languages) [`comments.lua`](./lua/plugins/comments.lua) 
- **[UndoTree](https://github.com/mbbill/undotree)**: The multiverse of Undos. [`undotree.lua`](./lua/plugins/undotree.lua)
- **[Which-Key](https://github.com/folke/which-key.nvim)**: For those who can't remember their keybinds. (me) [`which-key.lua`](./lua/plugins/which-key.lua)

## Preferences

The [`preferences.lua`](lua/preferences.lua) file contains my ... preferences ?

I have tried to make the file structure easily understable so I don't have to update this readme for every minor change I make :D

Thanks!

## TL;DR
I hate you.
