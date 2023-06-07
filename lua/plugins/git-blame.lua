return {
  'f-person/git-blame.nvim',
  config = function()
    require('git-blame').setup({
      virt_text = true,
      virt_text_pos = 'eol',
      delay = 1000,
      -- Use `:GitBlameToggle` to toggle this
      -- Enable this to show commit message in blame
      -- message = true,
      -- Use `f` to show commit message in a floating window, `0` to disable
      -- float_opts = {
      --   border = 'single', -- see `:h nvim_open_win`
      -- },
      -- Use `e` to hide the sha256 checksum, `0` to disable
      -- keymap = 'e',
      -- Use `]b` to blame previous line, `[b` to blame next line
      -- diff_opts = {
      --   internal = true,
      -- },
      git_blame.is_blame_text_available() -- Returns a boolean value indicating whether blame message is available
git_blame.get_current_blame_text() --  Returns a string with blame message
    })
  end,
}
