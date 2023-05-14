return {
    -- change some telescope options and a keymap to browse plugin files
  {
        "nvim-telescope/telescope.nvim",
        keys = {
        -- add a keymap to browse plugin files
        -- stylua: ignore
        {
            "<leader>fp",
            function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
            desc = "Find Plugin File",
        },
        },
        -- change some options
        opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            winblend = 0,
            mappings = {
                i = {
                    ["<c-t>"] = function(...)
                    return require("trouble.providers.telescope").open_with_trouble(...)
                    end,
                    ["<a-t>"] = function(...)
                    return require("trouble.providers.telescope").open_selected_with_trouble(...)
                    end,
                    ["<a-i>"] = function()
                    Util.telescope("find_files", { no_ignore = true })()
                    end,
                    ["<a-h>"] = function()
                    Util.telescope("find_files", { hidden = true })()
                    end,
                    ["<C-Down>"] = function(...)
                    return require("telescope.actions").cycle_history_next(...)
                    end,
                    ["<C-Up>"] = function(...)
                    return require("telescope.actions").cycle_history_prev(...)
                    end,
                    ["<C-f>"] = function(...)
                    return require("telescope.actions").preview_scrolling_down(...)
                    end,
                    ["<C-b>"] = function(...)
                    return require("telescope.actions").preview_scrolling_up(...)
                    end,
                },
        },
        },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}