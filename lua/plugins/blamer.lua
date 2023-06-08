return {
  {
    "ttys3/nvim-blamer.lua",
    loadfile = "lua",
    opts = {
      enable = true, -- you must set this to true in order to show the blame info
      prefix = "  ", -- you can cusomize it to any thing, unicode emoji, even disable it, just set to empty lua string
      format = "%committer │ %committer-time %committer-tz │ %summary",
      auto_hide = false, -- set this to true will enable delay hide even you do not have the cursor moved
      hide_delay = 3000, -- this is the delay time in milliseconds for delay auto hide
      show_error = false, -- set to true to show any possible error (just for debug problems)
    },
  },
}
