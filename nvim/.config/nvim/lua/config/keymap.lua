local opts = { noremap = true, silent = true }

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("n", "<C-j>", ":cnext<CR>", opts)
vim.keymap.set("n", "<C-k>", ":cprevious<CR>", opts)

vim.keymap.set('n', '<leader>t', vim.cmd.tabnew)
vim.keymap.set('n', '<C-Right>', vim.cmd.tabnext)
vim.keymap.set('n', '<C-Left>', vim.cmd.tabprevious)

vim.keymap.set("n", "]s", ":lua vim.diagnostic.goto_next()<CR>")
vim.keymap.set("n", "[s", ":lua vim.diagnostic.goto_prev()<CR>")
vim.keymap.set("n", "<leader>i", ":lua vim.diagnostic.open_float()<CR>:<ESC>")

vim.keymap.set("n", "<leader>R", function()
  vim.ui.input({ prompt = "Command: " }, function(command)
    local dir = vim.fn.expand("%:p:h")
    if command then -- check for nil in case user cancels
      vim.cmd(string.format("!cd %s && %s", dir, command))
    end
  end)
end, opts)
vim.keymap.set("v", "<leader>R", function()
  vim.ui.input({ prompt = "Command: " }, function(command)
    local dir = vim.fn.expand("%:p:h")
    if command then -- check for nil in case user cancels
      vim.cmd(string.format("!cd %s && %s", dir, command))
    end
  end)
end, opts)

-- oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
