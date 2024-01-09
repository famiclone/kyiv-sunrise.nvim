" -----------------------------------------------------------------------------
" Name:         kyiv-sunrise
" Description:  
" Author:       Denys Tynok <famiclone.dev>
" Website:      https://github.com/famiclone/kyiv-sunrise/
" License:      MIT
" -----------------------------------------------------------------------------

let g:colors_name = "kyiv-sunrise"
hi clear
set fillchars+=vert:\▏

"--walnut-brown: #4E4A40ff;
"--coyote: #7D5F40ff;
"--sunset: #EDD09Fff;

let pallete = {
  \ 'darker': '#1d1815',
  \ 'dark': '#28221e',
  \ 'bg': '#322A25',
  \ 'fg': '#EBEDEA',
  \ 'gray-dark': '#5d5f5c',
  \ 'gray': '#4E4A40',
  \ 'primary': '#EDD09F',
  \ 'red': '#FF1100',
  \ 'orange': '#fb8468',
  \ 'yellow': '#FFCE3B',
  \ 'brown': '#736F63',
  \ 'blue': '#ABCDDE',
  \ 'green': '#58a286'
\ }

set background=dark

function! s:hi(group, bg, fg, term, ...)
  let l:bg = a:bg->empty() ? '' : ' guibg=' . a:bg
  let l:fg = a:fg->empty() ? '' : ' guifg=' . a:fg
  let l:term = a:term->empty() ? '' : ' cterm=' . a:term . ' term=' . a:term
  execute 'hi ' . a:group . l:term . l:bg . l:fg
endfunction

call s:hi('Normal', pallete['bg'], pallete['fg'], '')
call s:hi('CursorLine', pallete['dark'], '', 'none')
call s:hi('String', '', pallete['primary'], 'none')
call s:hi('Statement', '', pallete['orange'], 'none')
call s:hi('NonText', '', pallete['gray-dark'], 'none')
call s:hi('Identifier', '', pallete['blue'], 'none')
call s:hi('Search', pallete['yellow'], '', 'none')
call s:hi('Type', '', pallete['green'], 'none')
call s:hi('StatusLine', pallete['dark'], pallete['orange'], 'bold')
call s:hi('StatusLineNC', pallete['dark'], pallete['brown'],'none')
call s:hi('TabLineSel', pallete['darker'], pallete['blue'],'bold')
call s:hi('TabLine', pallete['bg'], pallete['brown'], 'none')
call s:hi('TabLineFill', pallete['bg'], pallete['bg'], 'none')
call s:hi('SignColumn', pallete['bg'], pallete['blue'], 'none')
call s:hi('Git', pallete['bg'], pallete['blue'], 'none')
call s:hi('LineNr', pallete['bg'], pallete['brown'], 'none')
call s:hi('CursorLineNr', pallete['bg'], pallete['blue'], 'none')
call s:hi('DiffAdd', pallete['bg'], pallete['green'], 'none')
call s:hi('DiffChange', pallete['bg'], pallete['blue'], 'none')
call s:hi('DiffText', pallete['bg'], pallete['blue'], 'none')
call s:hi('DiffDelete', pallete['bg'], pallete['red'], 'none')
call s:hi('VertSplit', '', pallete['dark'], 'none')
call s:hi('Comment', '', pallete['brown'], 'none')
call s:hi('PMenu', pallete['dark'], pallete['fg'], 'none')
call s:hi('PMenuSel', pallete['darker'], pallete['orange'], 'none')
call s:hi('Error', pallete['bg'], pallete['red'], 'none')

hi! link SpecialKey NonText
hi! link PreProc Identifier
hi! link ErrorMsg Error
hi! link DiagnosticError Error
