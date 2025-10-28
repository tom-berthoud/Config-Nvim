return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap" },
    cmd = "VenvSelect",
    opts = {
      -- Corrige le bug : on force les chemins à une table
      search = true,
      -- Dossiers où chercher les venv
      path = {
        -- 1. dans ton projet courant
        vim.fn.getcwd(),
        -- 2. le dossier ~/.virtualenvs si tu l’utilises
        vim.fn.expand("~/.virtualenvs"),
        -- 3. dossier global WSL
        "/home/" .. vim.fn.expand("$USER"),
      },
      auto_refresh = true,
      auto_activate = false, -- tu peux mettre true si tu veux auto-activation
    },
  },
}
