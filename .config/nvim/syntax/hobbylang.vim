if exists("b:current_syntax")
  finish
endif

syn keyword hlStatement   break continue return self
syn keyword hlLabel       case default
syn keyword hlConditional if else match
syn keyword hlRepeat      while loop for
syn keyword hlStructure   struct enum var func
syn keyword hlModifier    static
syn keyword hlLiteral     true false nil

syn match   hlFunction    /\<\h\w*\ze\_s*(/

syn match   hlComment     /\/\/.*/
syn match   hlType        /[^a-z0-9_][A-Z][A-z0-9_]*/
syn match   hlNumber      /\<\d\+\>/
syn match   hlNumber      /\<\d\+\.\d*/
syn match   hlOperator    /=|\+=|-=|\*=|\/=|%=|\*\*=|\+|-|\*\*|\*|\/|%|<|>|<=|>=|==|!=|!|\.\./

syn region  hlString      start="\"" end="\""
syn region  hlString      start="'"  end="'"

hi def link hlStructure   Structure
hi def link hlFunction    Function 
hi def link hlStatement   Statement
hi def link hlLabel       Label
hi def link hlConditional Conditional
hi def link hlRepeat      Repeat
hi def link hlModifier    StorageClass
hi def link hlType        Type
hi def link hlString      String
hi def link hlOperator    Operator
hi def link hlNumber      Constant
hi def link hlLiteral     Constant
hi def link hlComment     Comment

let b:current_syntax = 'hl'
