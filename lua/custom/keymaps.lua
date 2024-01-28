local keymap = vim.keymap

-- tmux config
keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", { silent = true })
keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", { silent = true })
keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", { silent = true })
keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", { silent = true })
keymap.set("n", "<C-\\>", "<Cmd>TmuxNavigateLastActive<CR>", { silent = true })
keymap.set("n", "<C-Space>", "<Cmd>TmuxNavigateNavigateNext<CR>", { silent = true })

-- open file explorer
keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")

-- select the word
keymap.set("n", "sc", "viw")

-- exclude the word and enter in insert mode
keymap.set("n", "sd", "viwdi")

-- select the word and copy
keymap.set("n", "sy", "viwy")

-- select the word and paste
keymap.set("n", "sp", "viwp")

-- Delete a word backwards
keymap.set("n", "dq", 'vb"_d')

-- Delete next word
keymap.set("n", "dw", 've"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file
keymap.set("n", "<C-s>", "<Cmd>w<CR>")

keymap.set('n', 'sc', function()
	vim.cmd([[:HopWord]])
	vim.schedule(function()
		vim.cmd([[startinsert]])
	end)
end)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<S-x>", "<Cmd>BufferKill<CR>")
