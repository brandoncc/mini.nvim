vim.cmd('hi DevIconLicense guifg=#111111')
vim.cmd('hi DevIconMakefile guifg=#222222')
vim.cmd('hi DevIconGif guifg=#333333')
vim.cmd('hi DevIconLua guifg=#444444')
vim.cmd('hi DevIconTxt guifg=#555555')
vim.cmd('hi DevIconDefault guifg=#666666')

return {
  get_icon = function(filename, _, options)
    if filename == 'LICENSE' then return '', 'DevIconLicense' end
    if filename == 'Makefile' then return '', 'DevIconMakefile' end
    if vim.endswith(filename, 'gif') then return '', 'DevIconGif' end
    if vim.endswith(filename, 'lua') then return '', 'DevIconLua' end
    if vim.endswith(filename, 'txt') then return '', 'DevIconTxt' end
    if (options or {}).default then return '', 'DevIconDefault' end
  end,
}
