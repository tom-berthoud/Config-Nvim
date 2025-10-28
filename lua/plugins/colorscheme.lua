return {
  -- Ajout du thème OneDarkPro
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- s'assurer qu'il se charge avant LazyVim
    opts = {
      options = {
        transparency = false,
        cursorline = true,
      },
      styles = {
        comments = "italic",
        keywords = "bold",
        functions = "italic",
        strings = "NONE",
        variables = "NONE",
      },
      -- Thèmes disponibles : "onedark", "onelight", "onedark_vivid", "onedark_dark"
      colorscheme = "onedark_vivid",
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
    end,
  },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
