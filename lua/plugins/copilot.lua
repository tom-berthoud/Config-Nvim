-- lua/plugins/copilot.lua
return {
  {
    "zbirenbaum/copilot.lua",
    lazy = true, -- jamais chargé au démarrage
    cmd = "Copilot", -- se charge quand tu fais :Copilot ...
    event = nil, -- pas d’autostart implicite
    enabled = true,
  },
}
