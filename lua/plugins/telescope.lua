return {
{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>f', builtin.find_files, {})
        vim.keymap.set('n', '<leader>g', builtin.git_files, {})
        vim.keymap.set('n', '<leader>l', builtin.live_grep, {})
        vim.keymap.set('n', '<A-k>', builtin.oldfiles, {})

        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                mappings = {
                    n = {
                        ["<A-j>"] = actions.move_selection_next,
                        ["<A-k>"] = actions.move_selection_previous
                    },
                    i = {
                        ["<A-j>"] = actions.move_selection_next,
                        ["<A-k>"] = actions.move_selection_previous
                    }
                }
            }
        })
    end
},
{
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
        require("telescope").setup ({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                    }
                }
            }
        })
        require("telescope").load_extension("ui-select")
    end
    }
}
