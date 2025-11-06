return {
  "echasnovski/mini.animate",
  opts = {
    cursor = {
      enable = true,
      timing = require("mini.animate").gen_timing.linear({ duration = 12 }), -- vitesse
      path = require("mini.animate").gen_path.line(),
    },
    scroll = { enable = false }, -- si tu ne veux que le curseur animé
    resize = { enable = false },
  },
}
