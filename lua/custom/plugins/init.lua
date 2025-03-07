-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
    opts = {
      history = true,
      delete_check_events = 'TextChanged',
      region_check_events = 'CursorMoved',
    },
    -- config = require "plugins.configs.luasnip",
    config = function()
      -- include the default astronvim config that calls the setup call
      -- require 'plugins.configs.luasnip'(plugin, opts)
      -- load snippets paths
      require('luasnip.loaders.from_vscode').lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { '~/.config/nvim/lua/custom/snippets' },
      }
    end,
  },
}
