# My Neovim dotfiles

My Neovim configuration built with Lua, and the help of [typecraft's](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=lKSghpiI4RgrFCxg) youtube playlist, [kickstart](https://github.com/nvim-lua/kickstart.nvim) nvim and me myself.

## In The Beninging

**Prerequisites**: I started with Neovim 0.11.x and with Nerd Font too
**Installation**:

```
cd ~/.config/nvim/
git clone https://github.com/singhantariksh/nvim-dotfiles.git
```

open neovim and everything should be installed automatically (hopefully)

## Configuration Structure

```
~/.config/nvim/
├── [init.lua](init.lua)
├── [lazy-lock.json](lazy-lock.json)
├── [README.md](README.md)
└── lua/
    ├── [plugins.lua](lua/plugins.lua)
    ├── [preferences.lua](lua/preferences.lua)
    └── plugins/
        ├── [alpha-greeter.lua](lua/plugins/alpha-greeter.lua)
        ├── [blink-cmp.lua](lua/plugins/blink-cmp.lua)
        ├── [bufferline.lua](lua/plugins/bufferline.lua)
        ├── [comments.lua](lua/plugins/comments.lua)
        ├── [conform.lua](lua/plugins/conform.lua)
        ├── [git.lua](lua/plugins/git.lua)
        ├── [harpoon.lua](lua/plugins/harpoon.lua)
        ├── [indent-line.lua](lua/plugins/indent-line.lua)
        ├── [lsp-config.lua](lua/plugins/lsp-config.lua)
        ├── [lualine.lua](lua/plugins/lualine.lua)
        ├── [neotree.lua](lua/plugins/neotree.lua)
        ├── [telescope.lua](lua/plugins/telescope.lua)
        ├── [terminal.lua](lua/plugins/terminal.lua)
        ├── [themes.lua](lua/plugins/themes.lua)
        ├── [treesitter.lua](lua/plugins/treesitter.lua)
        ├── [undotree.lua](lua/plugins/undotree.lua)
        └── [which-key.lua](lua/plugins/which-key.lua)
```

## What does this offer you ask ?

### Mr. Manager

- **[Lazy.nvim](https://github.com/folke/lazy.nvim)**: It's called lazy but it's FAST. (because it can lazy load stuff)

### UI UX

- **[Gruvbox](https://github.com/sainnhe/gruvbox-material)**: I'm a gruvbox enjoyer.
- **[Alpha-nvim](https://github.com/goolord/alpha-nvim)**: A nice greeter with quick actions too!
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)**: A statusline showing mode, file info, git status, diagnostics and more.
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)**: Buffer tabs for easy visualization between opened buffers.
- **[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)**: Visual indentation guides. (don't go over indentation lines in input mode lol)

### LSP (and stuff)

- **[Mason](https://github.com/mason-org/mason.nvim)**: package manager for LSP servers, formatters, and linters.
- **[Mason-LSPconfig](https://github.com/mason-org/mason-lspconfig.nvim)**: Bridge between Mason and LSPs.
- **[Blink.cmp](https://github.com/saghen/blink.cmp)**: auto-completion engine with fuzzy (hehe) intelligence and snippet support.
- **[Conform.nvim](https://github.com/stevearc/conform.nvim)**: Universal formatter which doesn't replace the whole buffer !!! :o
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: syntax highlighting and code parsing to understand code structure. (goated)

### Files (and stuff)

- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)**: fuzzy finder for a lot of things man, I don't wanna type them all.
- **[Telescope FZF Native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)**: It provides telescope with regular expression capabilities I think ?
- **[Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)**: file explorer with tree view, buffer list, and git status integration.
- **[Harpoon 2](https://github.com/ThePrimeagen/harpoon)**: The name's Primegan.

### Git

- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)**: Never used it.

### QoL

- **[ToggleTerm](https://github.com/akinsho/toggleterm.nvim)**: It toggles terminals. (my comments be like)
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)**: Quick commenting. (so I don't have to remember the syntax of comments for a billion languages)
- **[UndoTree](https://github.com/mbbill/undotree)**: The multiverse of Undos.
- **[Which-Key](https://github.com/folke/which-key.nvim)**: For those who can't remember their keybinds. (me)

## Preferences

The `preferences.lua` file contains my ... preferences ?

I have tried to make the file structure easily understable so I don't have to update this readme for every minor change I make :D

Thanks!
