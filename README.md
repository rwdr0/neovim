# My Neovim daily driver

### Powered by 💤 [LazyVim](https://github.com/LazyVim/LazyVim)

<img src="neovim_ss.png">

## Requirements

- Neovim >= 0.12
- `git`, `rg`, `fd`, `fzf`, `lazygit`, a C compiler and the `tree-sitter` CLI
- Optional: `ast-grep` (structural search & replace in grug-far)

```sh
brew install neovim ripgrep fd fzf lazygit tree-sitter-cli ast-grep
git clone https://github.com/rwdr0/neovim ~/.config/nvim
nvim # plugins, parsers and LSP servers install on first launch
```

## What's in it

**LazyVim extras** (`lazyvim.json`): Go, Python, TypeScript, Svelte, Astro, Tailwind, Prisma, Docker, Prettier, DAP and neotest.

**Changes from stock LazyVim**

| Area | Change |
| --- | --- |
| UI | `onedark` (darker, transparent), no bufferline, tabs and buffers in lualine |
| Files | `mini.files` replaces neo-tree |
| Sessions | `auto-session` replaces persistence.nvim |
| Windows | `smart-splits.nvim` for moving between and resizing splits |
| Editing | vim-surround, vim-repeat, vim-speeddating, undotree, neotab (Tab out of pairs) |
| Jumps | `portal.nvim` for a visual jumplist |
| Tests | `neotest-vitest`, alongside the Go and Python adapters from the extras |
| Formatting | Format on save is off (`vim.g.autoformat = false`) |

## Keymaps

| Key | Action |
| --- | --- |
| `jj` | Exit insert mode |
| `<leader><leader>` | Switch to the previous buffer |
| `<leader>o` | Find files (root dir) |
| `<leader>e` / `<leader>E` | mini.files at the current file / cwd |
| `<leader>sr` | Project search & replace (grug-far) |
| `<C-h/j/k/l>` | Move between splits |
| `<A-h/j/k/l>` | Resize splits |
| `<leader>[` / `<leader>]` | Portal jumplist back / forward |
| `<Tab>` / `<S-Tab>` | Next / previous tab |
| `<leader><tab><tab>` | New tab and find a file |
| `<leader><tab>q` / `<leader><tab>Q` | Close tab / close all other tabs |
| `<leader>bo` / `<leader>bD` | Delete other buffers / delete all buffers |
| `gh` / `gl` | LSP hover / line diagnostics |
| `U` | Toggle undotree |
| `<leader>n` | Clear search highlights |

## Maintenance

- Update plugins with `:Lazy sync`, then commit `lazy-lock.json`. On a new machine, `:Lazy restore` installs the locked versions.
- Treesitter parsers are rebuilt after nvim-treesitter updates. If an update is interrupted, the next startup rebuilds any stale parsers (`lua/config/autocmds.lua`). Run `:TSUpdate` to do it by hand.
- To update from the shell, wait for the async parser build before quitting:
  ```sh
  nvim --headless "+Lazy! sync" "+lua require('nvim-treesitter').update():wait(300000)" +qa
  ```
- Run `:checkhealth` to diagnose problems.
