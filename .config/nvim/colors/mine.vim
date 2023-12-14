set background=dark

hi clear
let g:colors_name = "mine"

hi! link Terminal Normal
hi! link CurSearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link Character String

hi ColorColumn  guifg=#ffffff guibg=#333333 gui=NONE
hi CursorLine   guifg=NONE    guibg=#2b2b2b gui=NONE
hi EndOfBuffer  guifg=bg      guibg=NONE    gui=NONE
hi SignColumn   guifg=NONE    guibg=#222222 gui=NONE
hi LineNr       guifg=#666666 guibg=#101010 gui=NONE
hi LineNrAbove  guifg=#666666 guibg=#191919 gui=NONE
hi LineNrBelow  guifg=#666666 guibg=#191919 gui=NONE
hi MatchParen   guifg=#ffffff guibg=#990000 gui=bold
hi Normal       guifg=#ffffff guibg=#222222 gui=NONE
hi Pmenu        guifg=#ffffff guibg=#333333 gui=NONE
hi PmenuSel     guifg=#333333 guibg=#ffffff gui=bold,underdouble
hi Search       guifg=#333333 guibg=#ffff88 gui=bold,italic
hi Visual       guifg=NONE    guibg=#333333 gui=NONE

hi Comment      guifg=#777777 guibg=NONE    gui=italic

hi Constant     guifg=#99ff99 guibg=NONE    gui=NONE
hi Number       guifg=#55bb55 guibg=NONE    gui=NONE
hi String       guifg=#ff99ff guibg=NONE    gui=italic
hi Boolean      guifg=#99ff99 guibg=NONE    gui=italic

hi Identifier   guifg=#ffcc80 guibg=NONE    gui=NONE
hi Function     guifg=#99ffff guibg=NONE    gui=italic

hi Statement    guifg=#ff7099 guibg=NONE    gui=NONE
hi Label        guifg=#ff7099 guibg=NONE    gui=italic
hi Operator     guifg=#c5c8c6 guibg=NONE    gui=NONE

hi PreProc      guifg=#ff9977 guibg=NONE    gui=NONE

hi Type         guifg=#9999ff guibg=NONE    gui=italic
hi StorageClass guifg=#99ffff guibg=NONE    gui=italic
hi Structure    guifg=#99ffff guibg=NONE    gui=italic

hi Special      guifg=#ff9977 guibg=NONE    gui=NONE
hi SpecialChar  guifg=#ffffff guibg=NONE    gui=bold,italic

hi Error        guifg=#ff4444 guibg=NONE    gui=bold,undercurl

hi Todo         guifg=#ffffff guibg=NONE    gui=bold,italic,underline
