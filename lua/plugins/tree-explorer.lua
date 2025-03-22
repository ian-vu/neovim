return {
  {
    'stevearc/oil.nvim',
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      {
        '<leader>ee',
        '<cmd>Oil<cr>',
        desc = 'Open Oil in current buffer',
      },
    },
    opts = {
      -- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
      -- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
      -- Additionally, if it is a string that matches "actions.<name>",
      -- it will use the mapping at require("oil.actions").<name>
      -- Set to `false` to remove a keymap
      -- See :help oil-actions for a list of all available actions
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<S-s>'] = 'actions.select_vsplit',
        -- ["<C-h>"] = "actions.select_split",
        ['<C-h>'] = false,
        ['<C-t>'] = 'actions.select_tab',
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = 'actions.close',
        ['<C-l>'] = 'actions.refresh',
        ['-'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['~'] = 'actions.tcd',
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        ['g.'] = 'actions.toggle_hidden',
        ['g\\'] = 'actions.toggle_trash',
        -- custom keymaps

        ['<C-f>'] = 'actions.preview_scroll_down',
        ['<C-b>'] = 'actions.preview_scroll_up',
      },
      -- Buffer-local options to use for oil buffers
      buf_options = {
        buflisted = false,
        bufhidden = 'hide',
      },
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 3,
      },
      -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
      delete_to_trash = true,
      preview = {
        min_width = { 100, 0.8 },
      },
      -- Set to true to watch the filesystem for changes and reload oil
      watch_for_changes = true,
    },
  },
}
