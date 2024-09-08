return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require('toggleterm').setup({
      open_mapping = [[<C-b>]],
      direction = "horizontal",
      start_in_insert = true,
    })
  end
}

