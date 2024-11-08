-- keymaps.lua

-- Nvim Tree toggle
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Telescope key mappings
vim.keymap.set('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>g', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>h', ':Telescope help_tags<CR>', { noremap = true, silent = true })

