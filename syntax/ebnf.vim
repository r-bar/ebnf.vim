syntax keyword ebnfTodo TODO XXX FIXME NOTE
syntax keyword ebnfKeyword
  \ start
  \ import
  \ ignore


syntax region ebnfString start=/"/ skip=/\\"/ end=/"/
syntax region ebnfRegex start=/\// skip=/\\\// end=/\//
syntax region ebnfComment start="//" end=/$/ oneline contains=ebnfTodo
syntax match ebnfToken "[A-Z_-]\+"
syntax match ebnfRule "[a-z_-]\+"
syntax match ebnfOperator ":\||\|\*\|?\|->"


highlight default link ebnfKeyword Keyword
highlight default link ebnfTodo Todo
highlight default link ebnfOperator Operator
highlight default link ebnfString String
highlight default link ebnfToken Constant
highlight default link ebnfRule Function
highlight default link ebnfComment Comment
