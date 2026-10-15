# Config Neovim

Ma configuration Neovim, basée sur [LazyVim](https://github.com/LazyVim/LazyVim),
utilisée au quotidien pour le C/C++, Python, Go, LaTeX et le web (Vue).

## Ce qui est ajouté à LazyVim

| Domaine | Plugins / extras |
|---|---|
| Langages | extras `clangd`, `python`, `go`, `tex`, `markdown`, `json` ; `vimtex` ; `venv-selector.nvim` |
| Tests et debug | `neotest` + `neotest-python`, extra `dap.core` |
| Édition | `vim-visual-multi` (multi-curseurs), `tabular`, `yanky`, `dial`, `inc-rename` |
| Web | `live-server.nvim`, `vim-prettier`, config Vue |
| Terminal | `toggleterm.nvim` |
| IA | Copilot chargé mais **désactivé par défaut** (`<C-l>` pour accepter quand activé) |
| Thème | OneDarkPro (`onedark_vivid`), transparence |

## Installation

```bash
mv ~/.config/nvim ~/.config/nvim.bak   # sauvegarde de la config existante
git clone https://github.com/tom-berthoud/Config-Nvim ~/.config/nvim
nvim                                    # lazy.nvim installe les plugins au premier lancement
```

Prérequis : Neovim ≥ 0.11, `git`, une Nerd Font, `ripgrep`, un compilateur C (pour Treesitter).
