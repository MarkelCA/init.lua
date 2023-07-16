vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>q", vim.cmd.q)


vim.keymap.set("n", "<leader>m", "zz")
vim.keymap.set("n", "<leader>rc", vim.cmd.tabnew)

-- Movement DVORAK  remap

-- Undo
vim.keymap.set({ "n", "v" }, ",", "u")
-- Down
vim.keymap.set({ "n", "v" }, "h", "j")
vim.keymap.set({ "n", "v" }, "u", "j")
vim.keymap.set({ "n", "v" }, "H", "10j")
-- Left
vim.keymap.set({ "n", "v" }, "n", "h")
-- vim.keymap.set({"n", "v"}, "o", "h")
vim.keymap.set({ "n", "v" }, "k", "b")
-- Right
vim.keymap.set({ "n", "v" }, "s", "l")
vim.keymap.set({ "n", "v" }, "a", "l")
vim.keymap.set({ "n", "v" }, "q", "w")
-- Up
vim.keymap.set({ "n", "v" }, "t", "k")
vim.keymap.set({ "n", "v" }, "e", "k")
vim.keymap.set({ "n", "v" }, "T", "10k")
-- Next Ocurrence
vim.keymap.set({ "n", "v" }, ";", "n")
-- Previous Ocurrence
vim.keymap.set({ "n", "v" }, "<C-;>", "N")
-- Remove highlighted text
vim.keymap.set({ "n", "v" }, "<leader>h", vim.cmd.noh)


-- Terminal prompt
vim.keymap.set("n", "C", ":! ")
