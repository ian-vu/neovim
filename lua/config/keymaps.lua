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
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'K', 'E', { noremap = true, silent = true })

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
-- Misc
-- ############################################################################
