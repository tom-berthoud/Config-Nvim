return {
  {
    "barrett-ruth/live-server.nvim",
    config = function()
      require("live-server").setup({
        browser_command = "wslview", --  Ouvre dans le navigateur Windows
      })
    end,
  },
}
