let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /mnt/c/Users/jonathon/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +23 BattleTank/Source/BattleTank/Public/Projectile.h
badd +0 term://.//11975:/bin/bash
badd +42 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +1 BattleTank/Source/BattleTank/Private
badd +14 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +1 BattleTank/Source/BattleTank/Private/TankTurret.cpp
badd +0 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
argglobal
%argdel
$argadd .
edit BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 11 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe '2resize ' . ((&lines * 31 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
exe '3resize ' . ((&lines * 43 + 25) / 50)
exe 'vert 3resize ' . ((&columns * 105 + 105) / 211)
exe '4resize ' . ((&lines * 4 + 25) / 50)
argglobal
if bufexists("term://.//11975:/bin/bash") | buffer term://.//11975:/bin/bash | else | edit term://.//11975:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 086|
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
22
normal! zo
22
normal! zo
29
normal! zo
let s:l = 26 - ((22 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 05|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("/mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTurret.cpp") | buffer /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTurret.cpp | else | edit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTurret.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10 - ((9 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 03|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
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
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 11 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe '2resize ' . ((&lines * 31 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
exe '3resize ' . ((&lines * 43 + 25) / 50)
exe 'vert 3resize ' . ((&columns * 105 + 105) / 211)
exe '4resize ' . ((&lines * 4 + 25) / 50)
tabnext 1
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
