let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/.config/nvim/coc-settings.json
badd +3 BattleTank/Source/BattleTank/BattleTank.cpp
badd +1 .vim/coc-settings.json
badd +1 .vim/coc-settings.json
badd +1 .vim
argglobal
%argdel
$argadd .
edit .vim/coc-settings.json
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 13 + 28) / 56)
exe '2resize ' . ((&lines * 17 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 59 + 119) / 239)
exe '4resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 59 + 119) / 239)
exe '5resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 5resize ' . ((&columns * 119 + 119) / 239)
exe '6resize ' . ((&lines * 3 + 28) / 56)
exe 'vert 6resize ' . ((&columns * 55 + 119) / 239)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game") | buffer ~/projects/battle_tank_game | else | edit ~/projects/battle_tank_game | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((5 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game") | buffer ~/projects/battle_tank_game | else | edit ~/projects/battle_tank_game | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((11 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/.vim/bundle/coc.nvim/doc/coc.txt") | buffer ~/.vim/bundle/coc.nvim/doc/coc.txt | else | edit ~/.vim/bundle/coc.nvim/doc/coc.txt | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 577 - ((18 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
577
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 13 + 28) / 56)
exe '2resize ' . ((&lines * 17 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 59 + 119) / 239)
exe '4resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 59 + 119) / 239)
exe '5resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 5resize ' . ((&columns * 119 + 119) / 239)
exe '6resize ' . ((&lines * 3 + 28) / 56)
exe 'vert 6resize ' . ((&columns * 55 + 119) / 239)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
