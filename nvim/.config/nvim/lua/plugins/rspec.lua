return {
  dir = vim.fn.stdpath("config") .. "/lua/code",
  name = "rspec",
  main = "code.rspec",
  ft = "ruby",
  opts = {},
  keys = {
    { "<leader>tf", function() require("code.rspec").file() end, desc = "RSpec file" },
    { "<leader>tt", function() require("code.rspec").line() end, desc = "RSpec line" },
  },
}
