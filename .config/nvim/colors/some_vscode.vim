set background=dark

hi clear
let g:colors_name = "mine"

hi! link Terminal Normal
hi! link TermCursor Cursor
hi! link TermCursorNC Cursor
hi! link CurSearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link Character String

hi ColorColumn  guifg=#333333 guibg=#333333 gui=NONE
hi WinSeparator guifg=#222222 guibg=NONE    gui=NONE
hi CursorLine   guifg=NONE    guibg=NONE    gui=NONE
hi EndOfBuffer  guifg=#222222 guibg=NONE    gui=NONE
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE
hi LineNr       guifg=#666666 guibg=NONE    gui=NONE
hi LineNrAbove  guifg=#888888 guibg=NONE    gui=NONE
hi LineNrBelow  guifg=#888888 guibg=NONE    gui=NONE
hi MatchParen   guifg=#FFFFFF guibg=#FF0000 gui=bold
hi Normal       guifg=#f8f8f0 guibg=#16171d gui=NONE
hi Pmenu        guifg=#FFFFFF guibg=#333333 gui=NONE
hi PmenuSel     guifg=#333333 guibg=#FFFFFF gui=bold,underdouble
hi Search       guifg=#333333 guibg=#FFFF88 gui=bold,italic
hi Visual       guifg=NONE    guibg=#333333 gui=NONE

hi Comment      guifg=#777777 guibg=NONE    gui=italic

hi Constant     guifg=#81f900 guibg=NONE    gui=NONE
hi Number       guifg=#e373ce guibg=NONE    gui=NONE
hi String       guifg=#ffca2e guibg=NONE    gui=NONE
hi Boolean      guifg=#e373ce guibg=NONE    gui=italic

hi Identifier   guifg=#FFFFFF guibg=NONE    gui=NONE
hi Function     guifg=#81f900 guibg=NONE    gui=NONE

hi Statement    guifg=#ff3f3a guibg=NONE    gui=NONE
hi Label        guifg=#ff3f3a guibg=NONE    gui=NONE
hi Operator     guifg=#ff3f3a guibg=NONE    gui=NONE

hi PreProc      guifg=#81f900 guibg=NONE    gui=NONE

hi Typedef      guifg=#00a0e4 guibg=NONE    gui=italic
hi Type         guifg=#00a0e4 guibg=NONE    gui=italic
hi StorageClass guifg=#ff3f3a guibg=NONE    gui=italic
hi Structure    guifg=#19d1e5 guibg=NONE    gui=bold,italic

hi Special      guifg=#CCCCDD guibg=NONE    gui=NONE
hi SpecialChar  guifg=#e373ce guibg=NONE    gui=NONE

hi Error        guifg=#ff4444 guibg=NONE    gui=bold,undercurl

hi Todo         guifg=#ffffff guibg=NONE    gui=bold,italic,underline

hi Added        guifg=#44FF44 guibg=NONE    gui=NONE
hi Changed      guifg=#FFFF44 guibg=NONE    gui=NONE
hi Removed      guifg=#FF4444 guibg=NONE    gui=NONE
