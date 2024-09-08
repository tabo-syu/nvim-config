return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "hoge",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "> New file", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "> Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "> Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "> Find word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "> Restore session for current directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "> Quit Nvim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end
}

