let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +9 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +98 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +48 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +17 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +11 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +1 term://.//3606:/bin/bash
badd +0 term://.//4223:/bin/bash
badd +1 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +63 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +25 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +15 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +17 BattleTank/Source/BattleTank/Public/TankTurret.h
badd +6 BattleTank/Source/BattleTank/Private/TankTurret.cpp
badd +12 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +1 .git/index
badd +1 fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +1 BattleTank/.vscode/settings.json
argglobal
%argdel
$argadd .
set stal=2
edit BattleTank/Source/BattleTank/Private/TankAIController.cpp
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
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
17
normal! zo
let s:l = 32 - ((27 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 05|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankAIController.h") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankAIController.h | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankAIController.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
15
normal! zo
19
normal! zo
19
normal! zo
19
normal! zo
26
normal! zo
26
normal! zo
26
normal! zo
let s:l = 20 - ((19 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 036|
lcd ~/projects/battle_tank_game
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/projects/battle_tank_game/.git/index
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
exe '1resize ' . ((&lines * 14 + 28) / 56)
exe '2resize ' . ((&lines * 38 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 38 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp") | buffer fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | else | edit fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 96 - ((4 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 96 - ((4 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 14 + 28) / 56)
exe '2resize ' . ((&lines * 38 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 38 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
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
if bufexists("term://.//3606:/bin/bash") | buffer term://.//3606:/bin/bash | else | edit term://.//3606:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10008 - ((37 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10008
normal! 0
lcd ~/projects/battle_tank_game
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
if bufexists("term://.//4223:/bin/bash") | buffer term://.//4223:/bin/bash | else | edit term://.//4223:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 670 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
670
normal! 056|
lcd ~/projects/battle_tank_game
tabnext 1
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
