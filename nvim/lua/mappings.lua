require "nvchad.mappings"

-- add yours here

local mappings = {
  n = {
  	-- ... (other mappings)
    -- Compile and view the PDF
    ["<leader>mm"] = ":VimtexCompile<CR>",
    ["<leader>mv"] = ":VimtexView<CR>",
    ["<leader>mq"] = ":VimtexStop<CR>",
    -- ... (add additional key mappings as needed)
  },

  -- ... (additional mappings)
}
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
return mappings
