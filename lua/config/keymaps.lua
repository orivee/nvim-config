local map = vim.keymap.set

map("n", "<A-.>", ":BufferLineCycleNext <CR>")
map("n", "<A-s-.>", ":BufferLineMoveNext <CR>")
map("n", "<A-,>", ":BufferLineCyclePrev <CR>")
map("n", "<A-s-,>", ":BufferLineMovePrev <CR>")
map("n", "<leader>x", ":bp|sp|bn|bd! <CR>")

-- Center cursor
map("n", "<C-d>", "<C-d>zz")

map("n", "<A-h>", "<c-w>5<")
map("n", "<A-l>", "<C-w>5>")
map("n", "<A-s-h>", "<c-w>-")
map("n", "<A-s-l>", "<c-w>+")

-- telescope
map("n", "<leader>fd", ":Telescope find_files <CR>")
map("n", "<leader>fw", ":Telescope live_grep <CR>")

-- toggleterm
map("t", "<esc>", "<C-\\><C-N>") --"	escape terminal mode"
map("n", "<C-\\>", "<cmd> ToggleTerm direction=horizontal<CR>") -- "new horizontal term"
map("t", "<C-\\>", "<C-\\><C-n>:ToggleTerm direction=horizontal<CR>") -- "new horizontal term"
