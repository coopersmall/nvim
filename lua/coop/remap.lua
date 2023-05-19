vim.g.mapleader = " "
vim.keymap.set("n", "<C-o>", vim.cmd.Ex)
vim.keymap.set("n", "<C-p>", "<cmd>visual<CR>")

vim.keymap.set("n", '<leader>pv', ':Ex<CR>')
vim.keymap.set("n", '<leader>u', ':UndotreeShow<CR>')

vim.keymap.set("v", 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set("v", 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set("n", 'Y', 'yg$')
vim.keymap.set("n", 'J', 'mxj`z')
vim.keymap.set("n", '<C-d>', '<C-d>zz')
vim.keymap.set("n", '<C-u>', '<C-d>zz')
vim.keymap.set("n", 'n', 'nzzzv')
vim.keymap.set("n", 'N', 'Nzzzv')

vim.keymap.set("n", '<leader>vwm', function()
    require('vim-with-me').StartVimWithMe()
end)
vim.keymap.set("n", '<leader>svwm', function()
    require('vim-with-me').StopVimWithMe()
end)

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('v', '<leader>d', "\"_d")

vim.keymap.set('n', '<C-k>', "<cmd>cnext<CR>zz")
vim.keymap.set('n', '<C-j>', "<cmd>cprev<CR>zz")
vim.keymap.set('n', '<leader>k', "<cmd>lnext<CR>zz")
vim.keymap.set('n', '<leader>j', "<cmd>lprev<CR>zz")


vim.keymap.set('n', '<leader>s', ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set('n', '<leader>x', "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('n', '<leader>cd', ":cd %:p:h<CR>:pwd<CR>")

vim.keymap.set('v', '<C-i>', "<Esc>")
vim.keymap.set('i', '<C-i>', "<Esc>")

vim.keymap.set('n', '<C-q>', "<cmd>q!<CR>")
vim.keymap.set('n', '<C-s>', "<cmd>w<CR>")

vim.keymap.set('n', '<leader>cr', "<cmd>lua Colors()<CR>")

vim.keymap.set('n', '<C-c>', "<cmd>bdelete<CR>")
vim.keymap.set('n', '<C-n>', "<cmd>enew<CR>")

vim.keymap.set('n', '<S-h>', "<cmd>bprev<CR>")
vim.keymap.set('n', "<S-l>", "<cmd>bnext<CR>")

vim.keymap.set('n', '<leader>cr', "<cmd>lua Colors()<CR>")

vim.keymap.set('n', '<leader>o', "<C-o>")
vim.keymap.set('n', '<leader>i', "<C-i>")

vim.keymap.set('n', '<C-q>', "<cmd>qa<CR>")
