-- ############################################################################
-- Navigation
-- ############################################################################
-- Swap `n`` with `j`
-- Allow for navigation with wrapped lines
vim.keymap.set({ 'n', 'x' }, 'n', "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true, silent = true })
vim.keymap.set({ 'v', 'o' }, 'n', 'j', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'N', 'J', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'j', 'nzz', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'J', 'Nzz', { noremap = true, silent = true })

-- Swap `e`` with `k`
-- Allow for navigation with wrapped lines
vim.keymap.set({ 'n', 'x' }, 'e', "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true, silent = true })
vim.keymap.set({ 'v', 'o' }, 'e', 'k', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'E', 'K', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'k', 'e', { noremap = true, silent = true })

-- Swap `i`` with `l`
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'i', 'l', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'I', 'L', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'l', 'i', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'L', 'I', { noremap = true, silent = true })

-- Pane navigation
vim.keymap.set({ 'n', 'v', 'i' }, '<C-n>', '<cmd>TmuxNavigateDown<cr>', { noremap = true, desc = 'Move to pane up' })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-e>', '<cmd>TmuxNavigateUp<cr>', { noremap = true, desc = 'Move to pane down' })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-i>', '<cmd>TmuxNavigateRight<cr>', { noremap = true, desc = 'Move to pane right' })

-- ############################################################################
-- Buffer
-- ############################################################################
vim.keymap.set('n', '<leader>bb', '<cmd>bprevious<cr>', { desc = 'Prev buffer' })

-- ############################################################################
-- Misc
-- ############################################################################
-- Save buffer
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', function()
  vim.cmd 'write'
  -- Return to normal mode regardless of current mode
  vim.cmd 'stopinsert'
  -- For visual mode, need to explicitly go to normal mode
  if vim.fn.mode():match '[vV]' then
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', false)
  end
end, { desc = 'Save file' })

-- Commenting
-- Normal mode mapping
vim.keymap.set('n', '<leader>/', "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = 'Comment line', noremap = true })
vim.keymap.set('n', '<leader>?', "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = 'Comment line', noremap = true })

-- Visual mode mappings
vim.keymap.set({ 'v' }, '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = 'Comment line', remap = true })
vim.keymap.set({ 'v' }, '<leader>?', "<ESC><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>", { desc = 'Comment line', remap = true })
