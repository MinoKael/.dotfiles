vim.g.mapleader = " "
vim.keymap.set("n", "<leader><BS>", vim.cmd.Ex)
vim.keymap.set('v', 'y', 'ygv<Esc>')
vim.keymap.set('n', '<S-Tab>', 'gT',
    { desc = 'Navegar para trás entre abas do nvim', noremap = true, silent = true })
vim.keymap.set('n', '<Tab>', 'gt',
    { desc = 'Navegar para frente entre abas do nvim', noremap = true, silent = true })
vim.keymap.set('n', '<S-t>', ':tabnew<CR>',
    { desc = 'Criar uma nova aba no nvim', noremap = true, silent = true })
vim.keymap.set('n', '<S-c>', ':tabc<CR>',
    { desc = 'Fechar uma nova aba no nvim', noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':noh<CR>',
    { desc = 'Limpar o highlight de pesquisa', noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', ':w<CR>',
    { desc = 'Indentar e salvar o arquivo' })

vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', {
    noremap = true
})

vim.keymap.set('n', '<F8>', ':w <CR> :!gcc % -o %< && ./%< <CR>', { desc = 'Compilar e rodar C', noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
