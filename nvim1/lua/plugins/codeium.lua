return {
    {
        'Exafunction/codeium.vim',
        event = 'BufEnter',
        config = function()
            vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true }) -- Insert suggestion
            vim.keymap.set('i', '<C-k>', function() return vim.fn['codeium#AcceptNextWord']() end, { expr = true, silent = true }) -- Accept word from suggestion
            vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#AcceptNextLine']() end, { expr = true, silent = true }) -- Accept line from suggestion
            vim.keymap.set('i', '<C-;>', function() return vim.fn end, { expr = true, silent = true }) -- Next suggestion
            vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true }) -- Previous suggestion
            vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true }) -- Clear current suggestion
            vim.keymap.set('i', '<C-Space>', function() return vim.fn['codeium#Complete']() end, { expr = true, silent = true }) -- Manually trigger suggestion
            vim.keymap.set('i', '<S-Space>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true }) -- Accept suggestion
        end
    }
}
