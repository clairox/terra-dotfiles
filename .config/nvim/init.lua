local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('clairox/nvim-jade', {['as'] = 'jade'})

vim.call('plug#end')

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.o.termguicolors = true
vim.cmd'colorscheme jade'
