return {
  "zbirenbaum/copilot.lua",
  opts = {
    panel = { enabled = false },
    suggestion = {
      auto_trigger = false, -- ❗ ne jamais afficher automatiquement
      auto_refresh = false,
      keymap = {
        accept = "<C-l>", -- touche pour accepter si tu veux
      },
    },
  },
  config = function(...)
    -- on charge copilot sans l'activer
    require("copilot").setup(...)
    -- et on le désactive d'office
    vim.defer_fn(function()
      if vim.fn.exists(":Copilot") == 2 then
        vim.cmd("Copilot disable")
      end
    end, 100)
  end,
}
