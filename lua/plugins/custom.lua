---@type LazySpec
-- TODO Test
--
return {
  -- tokyonight colorscheme
  {
    "tiagovla/tokyodark.nvim",
  },

  -- cyberdrean
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup {
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,
      }
      vim.cmd "colorscheme cyberdream" -- set the colorscheme
    end,
  },

  -- todos
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function ()
    --   require("todo-comments").setup*{}
    --   end,
    opts = {},
    event = "User AstroFile",
  },
}
