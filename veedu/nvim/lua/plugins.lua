local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  print ('Installing Packer Plugin manager' .. install_path)
end
vim.cmd("packadd packer.nvim")

return require('packer').startup(function()

  -- manager packer
  use { 'wbthomason/packer.nvim', opt=true }



  -- Add plugins

  -- Autopairs
  use { 'windwp/nvim-autopairs' }
  
 use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  requires = { {'nvim-lua/plenary.nvim'} }
 } 
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope-hop.nvim' }
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  use { 'nvim-telescope/telescope-ui-select.nvim' }

end)
