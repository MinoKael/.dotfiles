return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ['<C-y>'] = require('telescope.actions.layout').toggle_preview
                    }
                },
                preview = {
                    hide_on_startup = true -- hide previewer when picker starts
                }
            }
        })
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>gs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
    end
}
