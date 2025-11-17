return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "general" -- View method générique
      vim.g.vimtex_view_general_viewer = "wslview" -- Ouvre PDF dans Chrome Windows

      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_complete_enabled = 1
      vim.g.tex_flavor = "latex"
    end,
  },
}
