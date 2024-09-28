local keymap = vim.keymap

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<M-h>', '<C-w><5', { desc = 'Decrese window width by 1' })
keymap.set('n', '<M-l>', '<C-w>>5', { desc = 'Increase window width by 1' })

-- Disable arrow keys in normal mode
keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

keymap.set('i', 'jk', '<Esc>', { desc = 'Exit normal mode' })

keymap.set('n', '<leader>pv', '<cmd>Oil --float<CR>', { desc = 'Open oil in current directory' })
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = '[T]ab [O]pen' })
keymap.set('n', '<leader>tn', '<cmd>tabnext<CR>', { desc = '[T]ab [N]ext' })
keymap.set('n', '<leader>tp', '<cmd>tabprev<CR>', { desc = '[T]ab [P]revious' })
keymap.set('n', '<leader>tc', '<cmd>tabclose<CR>', { desc = '[T]ab [C]lose' })

keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
