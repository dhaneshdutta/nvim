-- nvim-tree-config.lua

-- Set up key mappings within the 'on_attach' function
local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- Key mappings
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts("Open"))
  vim.keymap.set('n', 'o', api.node.open.edit, opts("Open"))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts("Open Vertical Split"))
  vim.keymap.set('n', 's', api.node.open.horizontal, opts("Open Horizontal Split"))
end

require('nvim-tree').setup {
  on_attach = on_attach,
  view = {
    width = 30,
    side = 'left',
  },
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },
}

