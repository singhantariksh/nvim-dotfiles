# My Neovim dotfiles

My Neovim configuration built with Lua, and the help of [typecraft's](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=lKSghpiI4RgrFCxg) youtube playlist, [kickstart](https://github.com/nvim-lua/kickstart.nvim) nvim and me myself.

---

## In The [Beninging](https://www.youtube.com/watch?v=vacJSHN4ZmY)

**Prerequisites**: I started with Neovim 0.11.x and with [Nerd Fonts](https://www.nerdfonts.com/) too (I personally use [Maple Font NF](https://github.com/subframe7536/maple-font) btw if you care)

**Installation**:

```bash
git clone https://github.com/singhantariksh/nvim-dotfiles.git ~/.config/nvim
cd ~/.config/nvim
nvim
```

open neovim and everything should be installed automatically (hopefully)

---

## Configuration Structure

```tree
~/.config/nvim/
├── assets
│   ├── editor.png
│   ├── greeter.png
│   ├── navigation.png
│   └── terminal.png
├── init.lua
├── lazy-lock.json
├── lua
│   ├── plugins
│   │   ├── alpha-greeter.lua
│   │   ├── autopairs.lua
│   │   ├── auto-session.lua
│   │   ├── blink-cmp.lua
│   │   ├── bufferline.lua
│   │   ├── codecompanion.lua
│   │   ├── color-picker.lua
│   │   ├── comments.lua
│   │   ├── conform.lua
│   │   ├── csv-view.lua
│   │   ├── flash.lua
│   │   ├── fzf-lua.lua
│   │   ├── git.lua
│   │   ├── grug-far.lua
│   │   ├── harpoon.lua
│   │   ├── inc-rename.lua
│   │   ├── indent-o-matic.lua
│   │   ├── lorem.lua
│   │   ├── lsp-config.lua
│   │   ├── lualine.lua
│   │   ├── mini-modules.lua
│   │   ├── navic-winbar.lua
│   │   ├── obsidian.lua
│   │   ├── presence.lua
│   │   ├── render-markdown.lua
│   │   ├── showkeys.lua
│   │   ├── smart-yank.lua
│   │   ├── smooth-cursor.lua
│   │   ├── snacks.lua
│   │   ├── suda.lua
│   │   ├── themes.lua
│   │   ├── todo.lua
│   │   ├── treesitter.lua
│   │   ├── ufo.lua
│   │   ├── undotree.lua
│   │   ├── vim-matchup.lua
│   │   ├── which-key.lua
│   │   └── yazi.lua
│   ├── plugins.lua
│   ├── preferences.lua
│   └── terminal.lua
└── README.md
```

---

## Some Screenshots

### Startup Screen

![alpha-nvim](./assets/greeter.png)

### Editing Experience

![Editing Screen](./assets/editor.png)

### Navigation with fzf-lua (fuzzy search inside the current buffer)

![fzf-lua](./assets/navigation.png)
### Custom Toggle-able Floating Terminal

![Floating Terminal](./assets/terminal.png)

---
