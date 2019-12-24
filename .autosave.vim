let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /mnt/c/Users/jonathon/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +414 BattleTank/.ycm_extra_conf.py
badd +0 term://.//12520:/bin/bash
badd +21 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +120 term://.//12646:/bin/bash
badd +12 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +21 unrealdebug.vim
badd +586 ~/.vimrc
badd +11 ~/.vim/compiler/unreal.vim
badd +22 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +16 BattleTank/Source/BattleTank/BattleTank.Build.cs
badd +23 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +0 term://.//14382:/bin/bash
badd +444 BattleTank/.vscode/c_cpp_properties.json
badd +24 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +1 ~/.vim/compiler
badd +12 ~/.vim/compiler/unreal422.vim
badd +1 C:\\Users\\jonathon\\projects\\battle_tank_game\\BattleTank\\Source\\BattleTank\\Private\\TankAIController.cpp
badd +0 term://.//15474:/bin/bash
argglobal
%argdel
$argadd .
set stal=2
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("term://.//14382:/bin/bash") | buffer term://.//14382:/bin/bash | else | edit term://.//14382:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 67 - ((46 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 075|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
tabedit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAIController.cpp
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 8 + 25) / 50)
exe '2resize ' . ((&lines * 38 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
exe '3resize ' . ((&lines * 38 + 25) / 50)
exe 'vert 3resize ' . ((&columns * 105 + 105) / 211)
argglobal
if bufexists("term://.//12646:/bin/bash") | buffer term://.//12646:/bin/bash | else | edit term://.//12646:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 652 - ((5 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
652
normal! 0125|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
12
normal! zo
17
normal! zo
let s:l = 21 - ((15 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 07|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("term://.//15474:/bin/bash") | buffer term://.//15474:/bin/bash | else | edit term://.//15474:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 36 - ((35 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 075|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 8 + 25) / 50)
exe '2resize ' . ((&lines * 38 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
exe '3resize ' . ((&lines * 38 + 25) / 50)
exe 'vert 3resize ' . ((&columns * 105 + 105) / 211)
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("term://.//12520:/bin/bash") | buffer term://.//12520:/bin/bash | else | edit term://.//12520:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 117 - ((2 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
117
normal! 075|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
