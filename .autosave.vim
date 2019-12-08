let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 term://.//25085:/bin/bash
badd +19 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +6 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +2 unrealdebug.vim
badd +35 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +1 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +10 BattleTank/Source/BattleTank/Public/Tank.h
badd +55 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +53 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +459 BattleTank/.vscode/c_cpp_properties.json
badd +4391 BattleTank/Binaries/Linux/BattleTankEditor.target
badd +41 BattleTank/Config/DefaultEngine.ini
badd +2 .grepignoredir
badd +493 ~/.vimrc
badd +12 ~/.vim/compiler/unreal.vim
badd +20 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +152 ~/.config/nvim/init.vim
badd +66 ~/.vim/after/ftplugin/cpp.vim
badd +1 term://.//25256:/bin/bash
badd +1 /tmp/.mount_nvimqdWR2b/usr/share/nvim/runtime/doc/eval.txt
badd +0 term://.//25407:/bin/bash
badd +0 term://.//25508:/bin/bash
badd +1 term://.//25874:/bin/bash
argglobal
%argdel
set stal=2
edit BattleTank/Source/BattleTank/Private/Tank.cpp
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
exe '1resize ' . ((&lines * 6 + 28) / 56)
exe '2resize ' . ((&lines * 46 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 46 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 46 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
argglobal
if bufexists("term://.//25407:/bin/bash") | buffer term://.//25407:/bin/bash | else | edit term://.//25407:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 5678 - ((5 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5678
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
10
normal! zo
10
normal! zo
10
normal! zo
35
normal! zo
let s:l = 12 - ((11 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
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
let s:l = 22 - ((21 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("term://.//25508:/bin/bash") | buffer term://.//25508:/bin/bash | else | edit term://.//25508:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 204 - ((45 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
204
normal! 067|
lcd ~/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 6 + 28) / 56)
exe '2resize ' . ((&lines * 46 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 46 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 46 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankBarrel.h
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
exe '1resize ' . ((&lines * 42 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe '2resize ' . ((&lines * 42 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 42 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 10 + 28) / 56)
argglobal
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
15
normal! zo
15
normal! zo
18
normal! zo
18
normal! zo
18
normal! zo
22
normal! zo
22
normal! zo
22
normal! zo
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankBarrel.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankBarrel.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankBarrel.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
10
normal! zo
10
normal! zo
10
normal! zo
35
normal! zo
let s:l = 32 - ((31 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
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
exe '1resize ' . ((&lines * 42 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe '2resize ' . ((&lines * 42 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 42 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe '4resize ' . ((&lines * 10 + 28) / 56)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankBarrel.cpp
set splitbelow splitright
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
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10 - ((9 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
26
normal! zo
26
normal! zo
33
normal! zo
let s:l = 47 - ((20 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 07|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
26
normal! zo
26
normal! zo
33
normal! zo
let s:l = 58 - ((35 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 011|
lcd ~/projects/battle_tank_game
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
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
let s:l = 52 - ((37 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 07|
lcd ~/projects/battle_tank_game
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
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
30
normal! zo
70
normal! zo
74
normal! zo
let s:l = 33 - ((24 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 03|
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
let s:l = 26 - ((25 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
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
if bufexists("term://.//25256:/bin/bash") | buffer term://.//25256:/bin/bash | else | edit term://.//25256:/bin/bash | endif
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
tabnext 3
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
