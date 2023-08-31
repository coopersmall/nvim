require("hierarchy-tree-go").setup({
    icon = {
        fold = "", -- fold icon
        unfold = "", -- unfold icon
        func = "₣", -- symbol
        last = '☉', -- last level icon
    },
    hl = {
        current_module = "guifg=Green",       -- highlight cwd module line
        others_module = "guifg=Black",        -- highlight others module line
        cursorline = "guibg=Gray guifg=White" -- hl  window cursorline
    },
    keymap = {
        --global keymap
        incoming = "<leader>fi", -- call incoming under cursorword
        outgoing = "<leader>fo", -- call outgoing under cursorword
        open = "<leader>ho",     -- open hierarchy win
        close = "<leader>hc",    -- close hierarchy win
        -- focus: if hierarchy win is valid but is not current win, set to current win
        -- focus: if hierarchy win is valid and is current win, close
        -- focus  if hierarchy win not existing,open and focus
        focus = "<leader>fu",

        -- bufkeymap
        expand = "o",             -- expand or collapse hierarchy
        jump = "<CR>",            -- jump
        move = "<leader><leader>" -- switch the hierarchy window position, must be current win
    }
})
