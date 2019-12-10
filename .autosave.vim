let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +37 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +28 BattleTank/Source/BattleTank/Public/Tank.h
badd +45 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +16 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +36 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +170 ~/.vimrc
badd +70 BattleTank/.ycm_extra_conf.py
badd +25 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +22 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +1 BattleTank/Source/BattleTank/Private/MyProjectileMovementComponent.cpp
badd +15 BattleTank/Source/BattleTank/Public/MyProjectileMovementComponent.h
badd +29 BattleTank/Source/BattleTank/Public/Projectile.h
badd +24 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +3 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +20 BattleTank/Source/BattleTank/Public/TankTurret.h
badd +41 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +12 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +1532 BattleTank/BattleTankSource.pri
badd +1329 BattleTank/BattleTankHeader.pri
badd +0 term://.//4615:/bin/bash
badd +1 term://.//12913:/bin/bash
badd +19 BattleTank/Source/BattleTank/Public/TankMovementComponent.h
badd +17 BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
badd +19 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +1 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +62 BattleTank/.kdev4/Includes.txt
badd +105 BattleTank/.kdev4/Defines.txt
badd +71 BattleTank/2ycm.py
badd +72 BattleTank/3ycm.py
badd +7 .grepignorefile
argglobal
%argdel
$argadd ./
set stal=2
edit BattleTank/Source/BattleTank/Public/Tank.h
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 12 + 28) / 56)
exe '2resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
argglobal
if bufexists("term://.//12913:/bin/bash") | buffer term://.//12913:/bin/bash | else | edit term://.//12913:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10012 - ((11 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10012
normal! 0
lcd ~/projects/battle_tank_game
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
21
normal! zo
21
normal! zo
21
normal! zo
let s:l = 40 - ((13 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 09|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
13
normal! zo
13
normal! zo
13
normal! zo
let s:l = 17 - ((12 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 60 - ((26 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
60
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 12 + 28) / 56)
exe '2resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 48 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 48 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 4 + 28) / 56)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 21 - ((20 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 07|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankMovementComponent.h") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankMovementComponent.h | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankMovementComponent.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
16
normal! zo
16
normal! zo
16
normal! zo
16
normal! zo
let s:l = 25 - ((22 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 011|
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
exe '1resize ' . ((&lines * 48 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 48 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 4 + 28) / 56)
tabedit ~/projects/battle_tank_game/BattleTank/.ycm_extra_conf.py
set splitbelow splitright
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
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
3
normal! zo
4
normal! zo
4
normal! zo
let s:l = 25 - ((24 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
let s:c = 17 - ((15 * winwidth(0) + 59) / 119)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 17 . '|'
else
  normal! 017|
endif
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("term://.//4615:/bin/bash") | buffer term://.//4615:/bin/bash | else | edit term://.//4615:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 527 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
527
normal! 056|
lcd ~/projects/battle_tank_game
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
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
