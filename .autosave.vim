let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 term://.//11836:/bin/bash
badd +11 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +12 BattleTank/Source/BattleTank/Public/Tank.h
badd +1 ~/projects/05_BuildingEscape/BuildingEsc2/Source/BuildingEsc2/openttheeedorrrr.cpp
badd +17 ~/projects/05_BuildingEscape/BuildingEsc2/Source/BuildingEsc2/openttheeedorrrr.h
badd +73 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +41 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +42 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +26 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +32 term://.//11880:/bin/bash
badd +1 term://.//11992:/bin/bash
badd +23 BattleTank/Intermediate/Build/Linux/B4D820EA/UE4Editor/Inc/BattleTank/Tank.generated.h
badd +2 .grepignoredir
badd +47 ~/projects/05_BuildingEscape/BuildingEsc2/Source/BuildingEsc2/Grabber.h
badd +112 ~/projects/05_BuildingEscape/BuildingEsc2/Source/BuildingEsc2/Grabber.cpp
badd +1 BattleTank/Source/BattleTank/Public/TankPlayerController.cpp
badd +1 BattleTank/Source/BattleTank/Private
badd +0 term://.//11918:/bin/bash
badd +35 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +0 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
argglobal
%argdel
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
if bufexists("term://.//11836:/bin/bash") | buffer term://.//11836:/bin/bash | else | edit term://.//11836:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 53 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 0
lcd ~/projects/battle_tank_game
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
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
exe '1resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 26 + 28) / 56)
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
30
normal! zo
43
normal! zo
70
normal! zo
74
normal! zo
let s:l = 36 - ((14 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 07|
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
let s:l = 31 - ((5 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Tank.h") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Tank.h | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Tank.h | endif
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
29
normal! zo
29
normal! zo
29
normal! zo
let s:l = 1 - ((0 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Tank.cpp
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
exe '1resize ' . ((&lines * 9 + 28) / 56)
exe '2resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
argglobal
if bufexists("term://.//11880:/bin/bash") | buffer term://.//11880:/bin/bash | else | edit term://.//11880:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 9992 - ((3 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9992
normal! 0102|
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
10
normal! zo
10
normal! zo
10
normal! zo
22
normal! zo
22
normal! zo
22
normal! zo
42
normal! zo
let s:l = 42 - ((28 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 026|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Tank.h") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Tank.h | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Tank.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((27 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 08|
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 9 + 28) / 56)
exe '2resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
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
exe '1resize ' . ((&lines * 9 + 28) / 56)
exe '2resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
argglobal
if bufexists("term://.//11880:/bin/bash") | buffer term://.//11880:/bin/bash | else | edit term://.//11880:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 9990 - ((6 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9990
normal! 061|
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
10
normal! zo
10
normal! zo
10
normal! zo
38
normal! zo
let s:l = 38 - ((26 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 033|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankAimingComponent.h") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankAimingComponent.h | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankAimingComponent.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
24
normal! zo
24
normal! zo
24
normal! zo
let s:l = 27 - ((21 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 038|
lcd ~/projects/battle_tank_game
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 9 + 28) / 56)
exe '2resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 43 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
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
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 8 + 28) / 56)
exe '2resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 21 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
exe '5resize ' . ((&lines * 21 + 28) / 56)
exe 'vert 5resize ' . ((&columns * 119 + 119) / 239)
argglobal
if bufexists("term://.//11918:/bin/bash") | buffer term://.//11918:/bin/bash | else | edit term://.//11918:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
30
normal! zo
43
normal! zo
let s:l = 50 - ((13 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 06|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
30
normal! zo
43
normal! zo
let s:l = 47 - ((6 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 05|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankPlayerController.h") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankPlayerController.h | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankPlayerController.h | endif
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
20
normal! zo
20
normal! zo
20
normal! zo
25
normal! zo
25
normal! zo
25
normal! zo
let s:l = 41 - ((18 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 011|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
43
normal! zo
70
normal! zo
let s:l = 80 - ((12 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
80
normal! 05|
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 8 + 28) / 56)
exe '2resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 21 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
exe '5resize ' . ((&lines * 21 + 28) / 56)
exe 'vert 5resize ' . ((&columns * 119 + 119) / 239)
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
if bufexists("term://.//11992:/bin/bash") | buffer term://.//11992:/bin/bash | else | edit term://.//11992:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 102 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
102
normal! 056|
lcd ~/projects/battle_tank_game
tabnext 4
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
