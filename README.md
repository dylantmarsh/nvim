# Neovim Configuration

Radical!

## Highlights

- **Lazy.nvim** for plugin management
- **Tokyonight** colorscheme (night variant)
- **LSP-first workflow**
  - `nvim-lspconfig`
  - Mason for tool management
  - Vue_LS + TypeScript for Vue
- **Treesitter** for syntax highlighting
- **DAP** for debugging (Go-focused)
- **Alpha.nvim** startup dashboard with random Futurama quotes
- **Bufferline** for simple, compact tabs
- **nvim-lint** for ESLint diagnostics
- **todo-comments.nvim** for TODO/FIX/HACK tracking
- **LazyGit** integration

---

## Philosophy

- Prefer **defaults over cleverness**
- Avoid heavy abstraction layers
- Minimal animation, minimal noise
- If something feels annoying after a week, it gets removed

This config is meant to disappear once Neovim is open.

---

## Requirements

- Neovim **0.10+**
- Git
- Node.js (for LSPs, ESLint, Volar)
- Go (for Go tooling)
- `lazygit` (optional, but recommended)

---

## Installation

```sh
git clone <this-repo> ~/.config/nvim
nvim

