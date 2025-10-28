-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
return {
  -- Plugin principal pour LaTeX

  -- Complétion (normalement déjà incluse avec LazyVim)
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
    },
  },

  -- Snippets LaTeX (optionnel mais pratique)
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
  },

  vim.api.nvim_create_user_command("AddImage", function(opts)
    local src = "C:Users\tomalOneDriveBureau" .. opts.args
    local dest = "./images/"
    vim.fn.system({ "cp", src, dest })
    print("Image copiée dans " .. dest)
  end, { nargs = 1, complete = "file" }),
  -- module venv automatique pour python
  {

    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap" },
    cmd = "VenvSelect",
    opts = {},
  },
  -- Couleurs bleues pour vim-visual-multi
  vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
      -- Sélections multiples (zone en surbrillance)
      vim.api.nvim_set_hl(0, "VM_Extend", { bg = "#4B90FF", fg = "black" }) -- bleu clair

      -- Curseur principal (celui où tu tapes)
      vim.api.nvim_set_hl(0, "VM_Cursor", { bg = "#1E3A8A", fg = "white", bold = true }) -- bleu foncé

      -- Curseurs secondaires en mode insertion
      vim.api.nvim_set_hl(0, "VM_Insert", { bg = "#3B82F6", fg = "black" }) -- ton intermédiaire

      -- Zones uniques (si une seule occurrence est trouvée)
      vim.api.nvim_set_hl(0, "VM_Mono", { bg = "#60A5FA", fg = "black" })
    end,
  }),
}
