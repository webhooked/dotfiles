return {
  {
    "webhooked/norrsken.nvim",
    lazy = false, -- Make sure to set lazy = false to load the plugin during startup
    priority = 1000, -- Optionally set a high priority
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "norrsken",
    },
  },
}
