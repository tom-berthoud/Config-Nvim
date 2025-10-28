return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura" -- Ouvre automatiquement le PDF avec Zathura
      vim.g.vimtex_compiler_method = "latexmk" -- Compilation automatique
      vim.g.vimtex_quickfix_mode = 0 -- Pas de fenêtre d’erreur automatique
      vim.g.vimtex_complete_enabled = 1 -- Active la complétion LaTeX
      vim.g.tex_flavor = "latex"
    end,
  },
}
