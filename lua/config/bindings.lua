vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set({'i', 'v'}, '<C-w>', '<esc>')
vim.keymap.set('n', '<C-w>', '<cmd>:wq<cr>')

vim.keymap.set({'n', 'v'}, '<C-s>', '<cmd>:w<cr>')

vim.keymap.set('', '<C-h>', '<cmd>:winc h<cr>')
vim.keymap.set('', '<C-j>', '<cmd>:winc j<cr>')
vim.keymap.set('', '<C-k>', '<cmd>:winc k<cr>')
vim.keymap.set('', '<C-l>', '<cmd>:winc l<cr>')

vim.keymap.set('n', '<C-w>', '<cmd>:wq<cr>')


vim.keymap.set('n', '<S-l>', '<cmd>:wq<cr>')





-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

