if exists("b:current_syntax")
  finish
endif

syn keyword oxTodo contained TODO FIXME HACK
syn match oxComment /\/\/.*$/ contains=oxTodo
syn region oxMComment start=/\/\*/ end=/\*\//

syn keyword oxStatement return var break continue
syn keyword oxFunc fn
syn keyword oxRepeat for while
syn keyword oxDeclaration fn var
syn keyword oxStructure class enum
syn keyword oxConstants true false
syn keyword oxConditional if else
syn keyword oxStorageClass global local

syn keyword oxOperator and or
syn match oxSymOperator /[+\-\*/%]|[\>\<\=\!]\=?/

syn match oxIdentifier /[A-z_]+[A-z0-9_]*/

syn match oxNumber /\<\d\+\>/
syn match oxNumber  /\<\d\+\.\d*\%([eE][-+]\=\d\+\)\=/
syn match oxNumber  /\.\d\+\%([eE][-+]\=\d\+\)\=\>/
syn match oxNumber  /\<\d\+[eE][-+]\=\d\+\>/

syn match oxEscape contained /\\[ntr\\\"']/
syn match oxStringD /\".*\"/ contains=oxEscape
syn match oxStringS /\'.*\'/ contains=oxEscape
syn match oxType /(?<=\:)\s*[A-z_]+[A-z0-9_]*/

let b:current_syntax = "ox"

hi def link oxComment Comment
hi def link oxMComment Comment
hi def link oxStatement Statement
hi def link oxFunc Function
hi def link oxDeclaration Statement
hi def link oxRepeat Repeat
hi def link oxIdentifier Identifier
hi def link oxNumber  Number
hi def link oxStringD String
hi def link oxStringS String
hi def link oxConstants Constant
hi def link oxOperator Operator
hi def link oxSymOperator Operator
hi def link oxConditional Conditional
hi def link oxStructure Structure
hi def link oxStorageClass StorageClass
hi def link oxType Type
