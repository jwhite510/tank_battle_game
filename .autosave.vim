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
badd +1 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +2 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +2 unrealdebug.vim
badd +15 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +28 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +7 BattleTank/Source/BattleTank/Public/Tank.h
badd +68 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +4 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +459 BattleTank/.vscode/c_cpp_properties.json
badd +4391 BattleTank/Binaries/Linux/BattleTankEditor.target
badd +41 BattleTank/Config/DefaultEngine.ini
badd +2 .grepignoredir
badd +493 ~/.vimrc
badd +12 ~/.vim/compiler/unreal.vim
badd +7 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +152 ~/.config/nvim/init.vim
badd +66 ~/.vim/after/ftplugin/cpp.vim
badd +168 term://.//25256:/bin/bash
badd +1 /tmp/.mount_nvimqdWR2b/usr/share/nvim/runtime/doc/eval.txt
badd +1 term://.//25407:/bin/bash
badd +0 term://.//25508:/bin/bash
badd +5 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +5 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +1 BattleTank/.gitignore
badd +121 BattleTank/Intermediate/Build/Linux/B4D820EA/UE4Editor/Inc/BattleTank/TankBarrel.gen.cpp
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
let s:l = 10006 - ((5 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10006
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
11
normal! zo
11
normal! zo
11
normal! zo
36
normal! zo
let s:l = 13 - ((12 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
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
let s:l = 20 - ((19 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
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
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
exe '1resize ' . ((&lines * 3 + 28) / 56)
exe '2resize ' . ((&lines * 44 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 21 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
exe '5resize ' . ((&lines * 4 + 28) / 56)
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
let s:l = 10006 - ((2 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10006
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
let s:l = 26 - ((25 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 036|
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
let s:l = 62 - ((10 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
62
normal! 023|
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
let s:l = 7 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
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
3wincmd w
exe '1resize ' . ((&lines * 3 + 28) / 56)
exe '2resize ' . ((&lines * 44 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 22 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 21 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
exe '5resize ' . ((&lines * 4 + 28) / 56)
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
let s:l = 314 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
314
normal! 056|
lcd ~/projects/battle_tank_game
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
