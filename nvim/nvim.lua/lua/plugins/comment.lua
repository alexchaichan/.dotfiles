local comment = require("Comment")

comment.setup {
  pre_hook = function(ctx)
    local U = require "Comment.utils"

    local location = nil
    if ctx.ctype == U.ctype.block then
      location = require("ts_context_commentstring.utils").get_cursor_location()
    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
      location = require("ts_context_commentstring.utils").get_visual_start_location()
    end

    return require("ts_context_commentstring.internal").calculate_commentstring {
      key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
      location = location,
    }
  end,
}

---------------------------------------------------------------------------
-- how to use                                                             -
---------------------------------------------------------------------------

local ft = require('Comment.ft')

-- 1. using set function
-- just set only line comment
--ft.set('yaml', '#%s')

-- or set both line and block commentstring
-- you can also chain the set calls
--ft.set('javascript', {'//%s', '/*%s*/'}).set('conf', '#%s')

-- 2. metatable magic

-- one filetype at a time
--ft.javascript = {'//%s', '/*%s*/'}
--ft.yaml = '#%s'

-- multiple filetypes
--ft({'go', 'rust'}, {'//%s', '/*%s*/'})
--ft({'toml', 'graphql'}, '#%s')

-- 3. get the whole set of commentstring
--ft.lang('lua') -- { '--%s', '--[[%s]]' }
--ft.lang('javascript') -- { '//%s', '/*%s*/' }


-- set right comment for .Rmd & .md
ft.set('mkd', '<!--%s-->')
ft.set('rmd', '<!--%s-->')