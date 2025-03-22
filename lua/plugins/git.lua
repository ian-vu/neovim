return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        -- symbol = "▏",
        add = { text = '▏' },
        change = { text = '▏' },
        delete = { text = '' },
        topdelete = { text = '' },
        changedelete = { text = '▏' },
        untracked = { text = '▏' },
      },
      current_line_blame_opts = {
        delay = 0,
      },
    },
  },
}
