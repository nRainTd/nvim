-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


if vim.g.vscode then
  local cursors = require('vscode-multi-cursor')
  local k = vim.keymap.set
  k({ 'n', 'x' }, 'mc', cursors.create_cursor, { expr = true, desc = 'Create cursor' })
  k({ 'n' }, 'mcc', cursors.cancel, { desc = 'Cancel/Clear all cursors' })
  k({ 'n', 'x' }, 'mi', cursors.start_left, { desc = 'Start cursors on the left' })
  k({ 'n', 'x' }, '<leader>i', cursors.start_left, { desc = 'Start cursors on the left' })
  k({ 'n', 'x' }, 'mI', cursors.start_left_edge, { desc = 'Start cursors on the left edge' })
  k({ 'n', 'x' }, 'ma', cursors.start_right, { desc = 'Start cursors on the right' })
  k({ 'n', 'x' }, '<leader>a', cursors.start_right, { desc = 'Start cursors on the right' })
  k({ 'n', 'x' }, 'mA', cursors.start_right, { desc = 'Start cursors on the right' })
  k({ 'n' }, '[mc', cursors.prev_cursor, { desc = 'Goto prev cursor' })
  k({ 'n' }, ']mc', cursors.next_cursor, { desc = 'Goto next cursor' })
  k({ 'n' }, 'mcs', cursors.flash_char, { desc = 'Create cursor using flash' })
  k({ 'n' }, 'mcw', cursors.flash_word, { desc = 'Create selection using flash' })
  k({ 'n' }, '<C-Down>', 'mciw*<Cmd>nohl<CR>', { remap = true })
  k({ 'n' }, '<C-Up>', 'mciw#<Cmd>nohl<CR>', { remap = true })
end
