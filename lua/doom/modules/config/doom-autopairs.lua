return function()
  local is_plugin_disabled = require("doom.core.functions").is_plugin_disabled
  require("nvim-autopairs.completion.compe").setup({
    map_cr = true, --  map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` after select function or method item
    auto_select = true, -- auto select first item
  })
  local npairs = require("nvim-autopairs")
  npairs.setup({
    check_ts = is_plugin_disabled("treesitter") and false or true,
    enable_afterquote = true,
    enable_moveright = true,
    enable_check_bracket_line = true,
  })
  npairs.add_rules(require("nvim-autopairs.rules.endwise-ruby"))
end
