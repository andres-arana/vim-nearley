
syntax match NearleyInclude '\v^\@builtin'
syntax match NearleyInclude '\v^\@include'
syntax match NearleyComment '\v#.*'

syntax match NearleyOperator /\v\-\>/
syntax match NearleyOperator /\v\|/
syntax match NearleyOperator /\v\:\+/
syntax match NearleyOperator /\v\:\*/
syntax match NearleyOperator /\v\?/


syntax match NearleyNonTerminal "\v^[a-zA-Z0-9_?+]+"

syntax region NearleyString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region NearleyString start="\[" end="]"

syntax region NearleyBraces start="{%" keepend end="%}"
syntax keyword NearleyBuiltin id joiner arrconcat nuller containedin=NearleyBraces
syntax match NearleyOperator "=>" containedin=NearleyBraces

highlight link NearleyInclude Include
highlight link NearleyComment Comment
highlight link NearleyOperator Operator
highlight link NearleyBuiltin Keyword
highlight link NearleyBraces Function
highlight link NearleyString String
highlight link NearleyNonTerminal Special

syntax include @JavaScript syntax/javascript.vim
syntax region javascriptCode start="@{%" keepend end="%}" contains=@JavaScript

