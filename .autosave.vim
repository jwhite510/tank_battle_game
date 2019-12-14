let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +14 BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
badd +22 BattleTank/Source/BattleTank/Public/TankMovementComponent.h
badd +6 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +1 BattleTank/Source/BattleTank/Public/Tank.h
badd +21 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +30 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +19 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +1 BattleTank/Source/BattleTank/Private/Tank.cpp
badd +22 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +21 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +72 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +17 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +53 term://.//5028:/bin/bash
badd +4 BattleTank/BattleTank.uproject
badd +1 BattleTank/Source/BattleTank/Public/TankTurret.h
badd +28 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +1 ~/.vimrc
badd +23 unrealdebug.vim
badd +6 BattleTank/.autosave.vim
badd +6 BattleTank/.save.vim
badd +6 BattleTank/.vscode/.autosave.vim
badd +6 BattleTank/.vscode/.save.vim
badd +8 .grepignorefile
badd +1 BattleTank/.gitignore
badd +13 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +1 BattleTank/Source/BattleTank/Public/Projectile.h
badd +80 ~/.vim/after/ftplugin/cpp.vim
badd +1 BattleTank/Source/BattleTank/Public
badd +1 term://.//20241:/bin/bash
badd +2 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +1 BattleTank/Source/BattleTank/Private/TankTurret.cpp
badd +0 term://.//15746:/bin/bash
badd +0 .git/index
badd +1 fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankTrack.cpp
argglobal
%argdel
set stal=2
edit BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
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
let s:l = 14 - ((13 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 03|
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTrack.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTrack.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTrack.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 15 - ((14 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 03|
lcd ~/projects/battle_tank_game
wincmd w
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
exe '1resize ' . ((&lines * 16 + 28) / 56)
exe '2resize ' . ((&lines * 36 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 36 + 28) / 56)
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
let s:l = 8 - ((7 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankTrack.cpp") | buffer fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankTrack.cpp | else | edit fugitive:///home/jonathon/projects/battle_tank_game/.git//0/BattleTank/Source/BattleTank/Private/TankTrack.cpp | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 16 - ((5 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/projects/battle_tank_game
wincmd w
argglobal
if bufexists("~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTrack.cpp") | buffer ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTrack.cpp | else | edit ~/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/TankTrack.cpp | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 37 - ((21 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 03|
lcd ~/projects/battle_tank_game
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 16 + 28) / 56)
exe '2resize ' . ((&lines * 36 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 36 + 28) / 56)
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
if bufexists("term://.//20241:/bin/bash") | buffer term://.//20241:/bin/bash | else | edit term://.//20241:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8353 - ((24 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8353
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
if bufexists("term://.//15746:/bin/bash") | buffer term://.//15746:/bin/bash | else | edit term://.//15746:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 146 - ((52 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
146
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
