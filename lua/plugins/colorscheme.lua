return {
  -- Thème OneDarkPro
  {
    "catppuccin/nvim",
    priority = 1000, -- se charge avant LazyVim
    opts = {
      transparency = true,
      cursorline = true,
    },

    config = function(_, opts)
      require("onedarkpro").setup(opts)
      vim.cmd("colorscheme onedark_vivid") -- applique le thème
    end,
  },

  -- Autres thèmes installés mais non utilisés par défaut
  { "ellisonleao/gruvbox.nvim" },
  { "olimorris/onedarkpro.nvim" },
  {
    "Mofiqul/vscode.nvim",
  },
}
