return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- confiture treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
        -- ddl
        "json",
        "toml",
        "yaml",
        "sql",
        -- idl
        "proto",
        -- programming language
        "javascript",
        "typescript",
        "lua",
        "php",
        "vim",
        "bash",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        -- etc
        "markdown",
        "markdown_inline",
        "dockerfile",
        "gitignore",
      }
    })
  end
}
