return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            runner = "pytest",
            -- POINTE vers le bon Python (voir §3)
            python = function()
              -- Venv locaux courants
              local cands = { ".venv/bin/python", "venv/bin/python", "env/bin/python" }
              for _, p in ipairs(cands) do
                if vim.fn.executable(p) == 1 then
                  return p
                end
              end
              -- Poetry
              if vim.fn.executable("poetry") == 1 then
                local py = vim.fn.systemlist("poetry run which python")[1]
                if py and vim.fn.executable(py) == 1 then
                  return py
                end
              end
              -- Pipenv
              if vim.fn.executable("pipenv") == 1 then
                local py = vim.fn.systemlist("pipenv --py")[1]
                if py and vim.fn.executable(py) == 1 then
                  return py
                end
              end
              -- Conda
              local conda = os.getenv("CONDA_PREFIX")
              if conda and vim.fn.executable(conda .. "/bin/python") == 1 then
                return conda .. "/bin/python"
              end
              return "python3"
            end,
            pytest_discover_instances = true,
          }),
        },
        icons = { passed = "✔", failed = "✖", running = "⏳", skipped = "→", unknown = "?" },
      })
    end,
  },
}
