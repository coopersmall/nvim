local project = require('project_nvim')
project.setup({
    detection_methods = { 'pattern', 'lsp' },
    patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json' },
    ignore_lsp = { 'efm', 'null-ls' },
})

vim.keymap.set('n', '<leader>o', '<CMD>Telescope projects<CR>', { desc = '[ ] Find projects' })
