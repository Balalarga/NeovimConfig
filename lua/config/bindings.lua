vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set({ 'i', 'v' }, '<C-c>', '<esc>')
vim.keymap.set('n', '<C-c>', '<cmd>:q<cr>')

vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

vim.keymap.set('', '<C-d>', '<C-d>zz')
vim.keymap.set('', '<C-u>', '<C-u>zz')

vim.keymap.set('', '<S-l>', '$')
vim.keymap.set('', '<S-h>', '_')

vim.keymap.set({ 'n', 'v' }, '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set({ 'n', 'v' }, '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving up half-page' })

vim.keymap.set({ 'x' }, 'p', 'pgvy', { desc = 'Disable replace after put' })
vim.keymap.set({ 'n', 'v' }, '<C-f>', ':%s/\\<<c-r><c-w>\\>/<c-r><c-w>/gI<left><left><left>', { desc = 'Replace' })

--vim.keymap.set({ 'n', 'v' }, '<A-j>', '3<C-e>3j', { desc = 'Move cursor down with screen' })
--vim.keymap.set({ 'n', 'v' }, '<A-k>', '3<C-y>3k', { desc = 'Move cursor up with screen' })

vim.keymap.set('n', '<Up>', '<cmd>:winc +<cr>')
vim.keymap.set('n', '<Down>', '<cmd>:winc -<cr>')
vim.keymap.set('n', '<Left>', '<cmd>:winc <<cr>')
vim.keymap.set('n', '<Right>', '<cmd>:winc ><cr>')

vim.keymap.set({ '' }, '<leader>h', '<cmd>:set hlsearch!<cr>', { desc = 'Toggle search highlighting' })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
