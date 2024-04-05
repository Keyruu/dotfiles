require 'base'

vim.opt.runtimepath:append(vim.fn.stdpath 'data' .. '/lazy/kitty-scrollback.nvim') -- lazy.nvim
require('kitty-scrollback').setup {
  -- put your kitty-scrollback.nvim configurations here
}
