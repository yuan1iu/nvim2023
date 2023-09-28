-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "J", "mzJ`z")
-- Make your cursor is always in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move lines faster!
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("i", "jj", "<Esc>")

--vim.keymap.set("v", "p", '"_dP', { expr = true, silent = true })

-- Normal --
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize with arrows
vim.keymap.set("n", "<A-k>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<A-j>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<A-l>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<A-h>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>x", ":bd<CR>")

--nvim tree
--vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- tab navigation
vim.keymap.set("n", "<leader>to", ":tabnew<cr>")
vim.keymap.set("n", "<leader>tx", ":tabclose<cr>")


