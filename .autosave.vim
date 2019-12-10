let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +5 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +40 BattleTank/Source/BattleTank/Public/Tank.h
badd +45 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +16 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +64 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +1 ~/.vimrc
badd +25 BattleTank/.ycm_extra_conf.py
badd +24 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +22 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +1 BattleTank/Source/BattleTank/Private/MyProjectileMovementComponent.cpp
badd +15 BattleTank/Source/BattleTank/Public/MyProjectileMovementComponent.h
badd +29 BattleTank/Source/BattleTank/Public/Projectile.h
badd +7 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +3 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +20 BattleTank/Source/BattleTank/Public/TankTurret.h
badd +41 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +12 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +1532 BattleTank/BattleTankSource.pri
badd +1329 BattleTank/BattleTankHeader.pri
badd +53 term://.//1588:/bin/bash
badd +16 BattleTank/Source/BattleTank/Public/TankMovementComponent.h
badd +2 BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
badd +19 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +1 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +62 BattleTank/.kdev4/Includes.txt
badd +105 BattleTank/.kdev4/Defines.txt
badd +71 BattleTank/2ycm.py
badd +72 BattleTank/3ycm.py
badd +7 .grepignorefile
badd +1 ~/projects/unreal_engine/UnrealEngine/Engine/Source/Runtime/Engine/Classes/GameFramework/NavMovementComponent.h
badd +1 ~/.config/nvim/init.vim
badd +9 term://.//7812:/bin/bash
badd +1 term://.//7991:/bin/bash
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
if bufexists("term://.//7991:/bin/bash") | buffer term://.//7991:/bin/bash | else | edit term://.//7991:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((9 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
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
let s:l = 38 - ((10 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
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
let s:l = 16 - ((11 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 065|
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
51
normal! zo
let s:l = 59 - ((25 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 06|
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 12 + 28) / 56)
exe '2resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 40 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
tabedit ~/projects/unreal_engine/UnrealEngine/Engine/Source/Runtime/Engine/Classes/GameFramework/NavMovementComponent.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 7 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 45 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
65
normal! zo
65
normal! zo
65
normal! zo
let s:l = 92 - ((2 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
92
normal! 039|
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
let s:l = 29 - ((20 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 024|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 29 - ((28 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 040|
lcd ~/projects/battle_tank_game
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 7 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 45 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/.vimrc
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 502 - ((0 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
502
normal! 02|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/.config/nvim/init.vim") | buffer ~/.config/nvim/init.vim | else | edit ~/.config/nvim/init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 149 - ((23 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
149
normal! 010|
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
