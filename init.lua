-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("symbols-outline").setup()
require("toggleterm").setup()
require("nvim-blamer").setup({
  enable = true,
  format = "%committer │ %committer-time-human │ %summary",
})
