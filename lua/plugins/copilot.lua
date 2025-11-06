-- lua/plugins/copilot.lua
return {
  {
    "zbirenbaum/copilot.lua",
    lazy = true, -- jamais chargé au démarrage
    cmd = "Copilot", -- se charge quand tu fais :Copilot ...
    event = nil, -- pas d’autostart implicite
    enabled = true,

    opts = {
      -- suggestions désactivées tant que tu ne les actives pas
      suggestion = {
        enabled = false,
        auto_trigger = false,
        keymap = {
          accept = "<C-l>",
          next = "<C-]>",
          prev = "<C-[>",
          dismiss = "<C-\\>",
        },
      },
    },

    keys = {
      -- Toggle attache/détache Copilot (par projet) quand tu veux
      {
        "<leader>ai",
        function()
          vim.cmd("Copilot status")
          -- petit toggle pratique
          if vim.g.__copilot_enabled then
            vim.cmd("Copilot disable")
            vim.g.__copilot_enabled = false
            vim.notify("Copilot disabled")
          else
            vim.cmd("Copilot enable")
            vim.g.__copilot_enabled = true
            vim.notify("Copilot enabled")
          end
        end,
        desc = "Copilot: enable/disable (on-demand)",
      },
      -- Toggle des suggestions inline (restent OFF par défaut)
      {
        "<leader>as",
        function()
          require("copilot.suggestion").toggle_auto_trigger()
        end,
        desc = "Copilot: toggle suggestions",
      },
    },
  },
}
