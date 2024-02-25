function ColorMyPencils(color)
    color = color or "dracula-soft"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end
return {
    -- add dracula
    { "Mofiqul/dracula.nvim",
    config = function()
        require('dracula').setup({
            transparent_bg = true
        })
        vim.cmd("colorscheme dracula-soft")

        ColorMyPencils()
    end
},

-- Configure LazyVim to load dracula
{
    "LazyVim/LazyVim",
    opts = {
        colorscheme = "dracula",
    },
},

}
