-- To save this file use `:noa w`
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
    vim.keymap.set('n', '<leader>r', function() harpoon:list():remove() end)

    vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set('n', '<C-j>', function() harpoon:list():next() end)
    vim.keymap.set('n', '<C-k>', function() harpoon:list():prev() end)

    vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end)
    vim.keymap.set('n', '<C-t>', function() harpoon:list():select(2) end)
    vim.keymap.set('n', '<C-n>', function() harpoon:list():select(3) end)
    vim.keymap.set('n', '<C-s>', function() harpoon:list():select(4) end)

    vim.keymap.set('n', '<leader><C-h>', function() harpoon:list():replace_at(1) end)
    vim.keymap.set('n', '<leader><C-t>', function() harpoon:list():replace_at(2) end)
    vim.keymap.set('n', '<leader><C-n>', function() harpoon:list():replace_at(3) end)
    vim.keymap.set('n', '<leader><C-s>', function() harpoon:list():replace_at(4) end)
  end,
}
