return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          filetypes = { "vue" },
        },
        tsserver = {
          filetypes = { "typescript", "javascript", "vue" },
        },
      },
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vue",
        "javascript",
        "typescript",
        "html",
        "css",
      },
    },
  },

  -- Prettier (facultatif mais très conseillé)
  {
    "prettier/vim-prettier",
    ft = { "javascript", "typescript", "css", "scss", "html", "json", "vue" },
  },
}
