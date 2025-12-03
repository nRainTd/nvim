-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 把默认终端改成 pwsh
vim.o.shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell"
--[[ vim.o.shellcmdflag =
"-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';Remove-Alias -Force -ErrorAction SilentlyContinue tee; $PSStyle.OutputRendering = 'PlainText'" ]]

-- 左侧文件导航宽度
vim.g.explorer_width = 25

-- 关闭拼写检查
vim.opt.spell = false
vim.opt.spelllang = {}
