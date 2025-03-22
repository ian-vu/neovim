return {
  {
    'supermaven-inc/supermaven-nvim',
    event = 'VeryLazy',
    dependencies = {
      -- ensure this is loaded before supermaven to allow for <tab> keymap to work
      'hrsh7th/nvim-cmp',
    },
    opts = {
      keymaps = {
        accept_suggestion = '<Tab>',
        -- clear_suggestion = "<C-]>",
        accept_word = '<C-Tab>',
      },
      log_level = 'off',
    },
  },
  { -- Copilot with only ghost
    'github/copilot.vim',
    enabled = false,
  },
}
