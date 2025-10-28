return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- Taille du terminal quand il est horizontal
        size = 15,
        open_mapping = [[<C-\>]], -- Raccourci pour ouvrir/fermer
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        persist_size = true,
        direction = "horizontal", -- horizontal, vertical ou float
        close_on_exit = true,
        shell = vim.o.shell, -- utilise ton shell par défaut
      })

      -- Exemple : terminal flottant dédié à LazyGit
      local Terminal = require("toggleterm.terminal").Terminal
      local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
      function _LAZYGIT_TOGGLE()
        lazygit:toggle()
      end

      vim.keymap.set("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Ouvrir LazyGit" })
    end,
    keys = {
      { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Basculer terminal" },
    },
  },
}
