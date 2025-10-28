return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" }, -- charge quand tu ouvres un fichier
    -- Avec `main`, Lazy require le module après avoir chargé le plugin
    main = "nvim-treesitter.configs",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = { "lua", "python", "cpp", "latex", "bash", "json", "yaml", "markdown" },
    },
  },
}
