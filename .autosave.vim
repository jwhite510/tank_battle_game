let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +10 BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
badd +13 BattleTank/Source/BattleTank/Public/TankMovementComponent.h
badd +11 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +43 BattleTank/Source/BattleTank/Public/Tank.h
badd +22 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +6 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +1 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +32 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +29 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +16 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +31 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +33 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +53 term://.//5028:/bin/bash
badd +4 BattleTank/BattleTank.uproject
badd +20 BattleTank/Source/BattleTank/Public/TankTurret.h
badd +28 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +1 term://.//17804:/bin/bash
badd +1 ~/.vimrc
badd +23 unrealdebug.vim
badd +6 BattleTank/.autosave.vim
badd +6 BattleTank/.save.vim
badd +6 BattleTank/.vscode/.autosave.vim
badd +6 BattleTank/.vscode/.save.vim
badd +8 .grepignorefile
badd +1 BattleTank/.gitignore
badd +3 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +1 BattleTank/Source/BattleTank/Public/Projectile.h
badd +80 ~/.vim/after/ftplugin/cpp.vim
badd +1 BattleTank/Source/BattleTank/Public
badd +1 term://.//20241:/bin/bash
argglobal
%argdel
set stal=2
edit BattleTank/Source/BattleTank/Private/TankAIController.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 16 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 36 + 28) / 56)
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
12
normal! zo
let s:l = 27 - ((26 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
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
let s:l = 25 - ((5 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 011|
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
16
normal! zo
16
normal! zo
16
normal! zo
22
normal! zo
let s:l = 22 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 013|
lcd ~/projects/battle_tank_game
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 16 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 36 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/TankPlayerController.h
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
let s:l = 26 - ((25 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
lcd ~/projects/battle_tank_game
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
exe '1resize ' . ((&lines * 47 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 47 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 5 + 28) / 56)
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
let s:l = 26 - ((25 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 06|
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
16
normal! zo
16
normal! zo
16
normal! zo
22
normal! zo
let s:l = 19 - ((17 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
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
exe '1resize ' . ((&lines * 47 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 47 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 5 + 28) / 56)
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
if bufexists("term://.//20241:/bin/bash") | buffer term://.//20241:/bin/bash | else | edit term://.//20241:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10047 - ((46 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10047
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
if bufexists("term://.//17804:/bin/bash") | buffer term://.//17804:/bin/bash | else | edit term://.//17804:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 434 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
434
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
