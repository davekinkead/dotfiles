return {
 {
   "nvim-telescope/telescope.nvim",
   name = "telescope",
   dependencies = { "nvim-lua/plenary.nvim" },
   config = function()
     local builtin = require("telescope.builtin")
     vim.keymap.set("n", "<C-p>", function()
       builtin.find_files({ hidden = true, file_ignore_patterns = { "^.git/" } })
     end, { desc = "Find files" })
     vim.keymap.set("n", "<leader>fg", function()
       builtin.live_grep({ additional_args = { "--hidden", "--glob", "!.git/" } })
     end, { desc = "Live grep" })
   end,
  },
}
