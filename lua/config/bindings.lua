vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set({ 'i', 'v' }, '<C-c>', '<esc>')
vim.keymap.set('n', '<C-c>', '<cmd>:q<cr>')

vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

vim.keymap.set('', '<C-h>', '<cmd>:winc h<cr>')
vim.keymap.set('', '<C-j>', '<cmd>:winc j<cr>')
vim.keymap.set('', '<C-k>', '<cmd>:winc k<cr>')
vim.keymap.set('', '<C-l>', '<cmd>:winc l<cr>')

vim.keymap.set('', '<C-d>', '<C-d>zz')
vim.keymap.set('', '<C-u>', '<C-u>zz')

vim.keymap.set('', '<S-l>', '$')
vim.keymap.set('', '<S-h>', '_')

vim.keymap.set({ 'n', 'v' }, '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set({ 'n', 'v' }, '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving up half-page' })

vim.keymap.set({ 'n', 'v' }, '<A-j>', 'j<C-e>', { desc = 'Move cursor down with screen' })
vim.keymap.set({ 'n', 'v' }, '<A-k>', 'k<C-y>', { desc = 'Move cursor up with screen' })

vim.keymap.set('n', '<Up>', '<cmd>:winc +<cr>')
vim.keymap.set('n', '<Down>', '<cmd>:winc -<cr>')
vim.keymap.set('n', '<Left>', '<cmd>:winc <<cr>')
vim.keymap.set('n', '<Right>', '<cmd>:winc ><cr>')

vim.keymap.set({ 'n', 'v' }, '<leader>/', '<cmd>:set hlsearch!<cr>')


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
