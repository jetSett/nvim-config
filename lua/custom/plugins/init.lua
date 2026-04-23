-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here
     vim.g.vimtex_view_method = "sioyek"
    end,
  },
  -- Adds indentations marks
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
  -- Auto close the brakets, parenthesis, and all
  {
    'm4xshen/autoclose.nvim',
    config = function()
      require('autoclose').setup {
        options = {
          disabled_filetypes = { 'makdown', 'text', 'tex' },
          disable_when_touch = true,
          touch_regex = '[%w(%[{]',
          pair_spaces = false,
          auto_indent = true,
          disable_command_mode = false,
        },

        keys = {},
      }
    end,
  },
  -- Session manager
  {
    'rmagatti/auto-session',
    {
      'rmagatti/auto-session',
      config = function()
        require('auto-session').setup {
          log_level = 'error',
          -- No session for those directories
          auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
        }
      end,
    },
  },
}
