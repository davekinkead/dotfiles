return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      grep = {
        hidden = true,
        rg_opts = "--column --line-number --no-heading --color=always --smart-case "
          .. "--max-columns=4096 --glob '!.git/**' -e",
      },
    },
    vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua grep_project<cr>", { desc = "Fuzzy grep" })
  }
}
