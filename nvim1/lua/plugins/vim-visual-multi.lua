return
{
    'mg979/vim-visual-multi',
    branch = 'master',
    config = function()
        vim.keymap.set("n", "<C-d>", "<Plug>(VM-AddCursorDown)", { noremap = true, silent = true })
        vim.keymap.set("n", "<C-u>", "<Plug>(VM-AddCursorUp)", { noremap = true, silent = true })
    end
}