-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
-- vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
-- vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
-- vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
-- vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)
-- Normal arrow movement
vim.keymap.set({ "n", "v" }, "<Up>", "k", opts)
vim.keymap.set({ "n", "v" }, "<Down>", "j", opts)
vim.keymap.set({ "n", "v" }, "<Left>", "h", opts)
vim.keymap.set({ "n", "v" }, "<Right>", "l", opts)

-- Move split navigation to Ctrl + arrows
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>w", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic message" })

vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic message" })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Select all content in file
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

-- Character wise selction
vim.keymap.set("n", "<S-Up>", "v<Up>", opts)
vim.keymap.set("n", "<S-Down>", "v<Down>", opts)
vim.keymap.set("n", "<S-Left>", "v<Left>", opts)
vim.keymap.set("n", "<S-Right>", "v<Right>", opts)

-- Backspace after selecting the words
vim.keymap.set("v", "<BS>", '"_d', { noremap = true, silent = true })
vim.keymap.set("v", "<Del>", '"_d', { noremap = true, silent = true })

-- Undo (Works on visual, normal and insert modes)
vim.keymap.set({ "n", "i", "v" }, "<C-z>", "<Esc>u", { noremap = true, silent = true })

-- Redo (Works on visual, normal and insert mode)
vim.keymap.set({ "n", "i", "v" }, "<C-y>", "<Esc><C-r>", { noremap = true, silent = true })

-- COPY
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', opts)

-- CUT
vim.keymap.set({ "n", "v" }, "<C-x>", '"+d', opts)

-- PASTE (Normal + Visual)
vim.keymap.set({ "n", "v" }, "<C-v>", '"+p', opts)

-- PASTE (Insert mode)
vim.keymap.set("i", "<C-v>", "<C-r>+", opts)
