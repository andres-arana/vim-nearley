syntax match NearleyInclude '\v^\@builtin'
syntax match NearleyInclude '\v^\@include'
syntax match NearleyComment '\v#.*'

highlight link NearleyInclude Include
highlight link NearleyComment Comment

