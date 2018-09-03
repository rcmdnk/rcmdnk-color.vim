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

" Define Normal (needed for some plugins)
hi clear Normal

" Spell check
hi SpellBad cterm=underline ctermbg=Black gui=underline guibg=Black
hi SpellCap cterm=underline ctermbg=Black gui=underline guibg=Black
hi SpellLocal cterm=underline ctermbg=Black gui=underline guibg=Black
hi SpellRare cterm=underline ctermbg=Black gui=underline guibg=Black

" Cursorline
hi CursorLine cterm=underline gui=underline
autocmd InsertEnter * hi CursorLine cterm=bold gui=bold
autocmd InsertLeave * hi CursorLine cterm=underline gui=underline

" SpecialKey for cursorline
hi link MySpecialKey SpecialKey
autocmd VimEnter,WinEnter * match MySpecialKey '\(\t\| \+$\)'

" Completion
hi Pmenu ctermbg=White ctermfg=Black guibg=White guifg=Black
hi PmenuSel ctermbg=blue ctermfg=black guibg=blue guifg=black
hi PmenuSbar ctermbg=Black ctermfg=Blue guibg=Black guifg=Blue
hi PmenuSbar ctermbg=White ctermfg=Black

" Diff mode
hi DiffAdd cterm=bold ctermbg=17 gui=bold guibg=#00005f
hi DiffChange ctermbg=22 guibg=#005f00
hi DiffText cterm=bold ctermbg=52 gui=bold guibg=#5f0000
hi DiffDelete ctermbg=Brown guibg=Brown

" Search
hi Search term=reverse ctermfg=Red ctermbg=Cyan guifg=Red guibg=Cyan

" SpecialKey
hi SpecialKey term=bold ctermfg=Blue guifg=Blue

" Column
hi ColorColumn ctermbg=017 guibg=#00005f

" Html
hi link htmlItalic LineNr
hi link htmlBold WarningMsg
hi link htmlBoldItalic ErrorMsg

" Two byte space
hi link TwoByteSpace Error
autocmd VimEnter,WinEnter * 2match TwoByteSpace '　'
