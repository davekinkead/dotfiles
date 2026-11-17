return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "olimorris/neotest-rspec",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rspec"),
      },
    })

    vim.keymap.set("n", "<leader>tt", function()
      vim.cmd("write")
      require("neotest").run.run()
    end, { desc = "Run nearest spec" })

    vim.keymap.set("n", "<leader>tf", function()
      vim.cmd("write")
      require("neotest").run.run(vim.fn.expand("%:p"))
    end, { desc = "Run spec file" })
  end,
}
