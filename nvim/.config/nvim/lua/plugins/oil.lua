return {
  'stevearc/oil.nvim',
  opts = { 
    view_options = { show_hidden = true },
    keymaps = { ["<C-p>"] = false },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
}
