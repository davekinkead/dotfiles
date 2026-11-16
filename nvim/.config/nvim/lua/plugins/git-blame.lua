return {
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    lazy = true,
    init = function()
      vim.g.gitblame_enabled = 0
    end,
    keys = { 
      { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Toggle git blame" }, 
    },
    opts = {
      enabled = true,
      message_template = " <author> • <date> • <summary>",
      date_format = "%r",
      virtual_text_column = 1,
    },
  },
}
