" File:       rcmdnk.vim
" Maintainer: rcmdnk
" URL:        https://github.com/rcmdnk/rcmdnk-color.vom
" License:    MIT

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = expand('<sfile>:t:r')

" Normal, needed for some plugins
hi Normal ctermbg=0

" Spell check
hi SpellBad cterm=underline ctermbg=0
hi SpellCap cterm=underline ctermbg=0
hi SpellLocal cterm=underline ctermbg=0
hi SpellRare cterm=underline ctermbg=0

" Cursorline
hi CursorLine cterm=underline
autocmd InsertEnter * hi CursorLine cterm=bold
autocmd InsertLeave * hi CursorLine cterm=underline

" SpecialKey for cursorline
hi link MySpecialKey SpecialKey
autocmd VimEnter,WinEnter * match MySpecialKey '\(\t\| \+$\)'

" Completion
hi Pmenu ctermbg=255 ctermfg=0 guifg=#000000 guibg=#999999
hi PmenuSel ctermbg=blue ctermfg=black
hi PmenuSbar ctermbg=0 ctermfg=9
hi PmenuSbar ctermbg=255 ctermfg=0 guifg=#000000 guibg=#FFFFFF

" Diff mode
hi DiffAdd cterm=bold ctermbg=17 gui=bold guibg=slateblue
hi DiffChange ctermbg=22 guibg=darkgreen
hi DiffText cterm=bold ctermbg=52 gui=bold guibg=olivedrab
hi DiffDelete ctermbg=6 guibg=coral

" Search
hi Search term=reverse ctermfg=Red ctermbg=11 guifg=Black

" SpecialKey
hi SpecialKey term=bold ctermfg=9

" Column
hi ColorColumn ctermbg=017

" Html
hi link htmlItalic LineNr
hi link htmlBold WarningMsg
hi link htmlBoldItalic ErrorMsg

" Two byte space
hi link TwoByteSpace Error
autocmd VimEnter,WinEnter * 2match TwoByteSpace '　'
