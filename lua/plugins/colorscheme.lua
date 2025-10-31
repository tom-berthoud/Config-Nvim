return {
  -- Thème OneDarkPro
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- se charge avant LazyVim
    opts = {
      transparency = true,
      cursorline = true,
      styles = {
        comments = "italic",
        keywords = "bold",
        functions = "italic",
        strings = "NONE",
        variables = "NONE",
      },
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
      vim.cmd("colorscheme onedark_vivid") -- applique le thème
    end,
  },

  -- Autres thèmes installés mais non utilisés par défaut
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
}
