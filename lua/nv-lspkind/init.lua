-- symbols for autocomplete
require('lspkind').init({
  with_text = true,
  symbol_map = {
    Text = '  ',
    Method = '',
    Function = '',
    Constructor = '',
    Variable = '[]',
    Class = '  ',
    Interface = ' 蘒',
    Module = '  ',
    Property = '  ',
    Unit = ' 塞 ',
    Value = '  ',
    Enum = ' 練',
    Keyword = '', -- ok
    Snippet = '  ',
    Color = '',
    File = '',
    Folder = ' ﱮ ',
    EnumMember = '  ',
    Constant = '  ',
    Struct = '  '
  },
})