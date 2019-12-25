let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /mnt/c/Users/jonathon/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 BattleTank/.ycm_extra_conf.py
badd +1 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +18 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +11 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +11 BattleTank/Source/BattleTank/Private/TankTurret.cpp
badd +1310 term://.//12646:/bin/bash
badd +20 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +21 unrealdebug.vim
badd +586 ~/.vimrc
badd +11 ~/.vim/compiler/unreal.vim
badd +53 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +16 BattleTank/Source/BattleTank/BattleTank.Build.cs
badd +117 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +541 BattleTank/.vscode/c_cpp_properties.json
badd +35 BattleTank/Source/BattleTank/Public/TankTrack.h
badd +39 BattleTank/Source/BattleTank/Private/TankPlayerController.cpp
badd +1 ~/.vim/compiler
badd +12 ~/.vim/compiler/unreal422.vim
badd +1 C:\\Users\\jonathon\\projects\\battle_tank_game\\BattleTank\\Source\\BattleTank\\Private\\TankAIController.cpp
badd +40 BattleTank/Source/BattleTank/Public/TankPlayerController.h
badd +21 BattleTank/Source/BattleTank/Private/TankMovementComponent.cpp
badd +18 BattleTank/Source/BattleTank/Public/TankMovementComponent.h
badd +1 BattleTank/Source/BattleTank/Public/TankBarrel.h
badd +2 .gitignore
badd +20 BattleTank/Source/BattleTank/Public/TankTurret.h
badd +29 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +591 term://.//17664:/bin/bash
badd +0 term://.//18469:/bin/bash
badd +0 term://.//19850:/bin/bash
argglobal
%argdel
$argadd .
set stal=2
edit BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
13,17fold
13,17fold
13,17fold
13,17fold
30,30fold
30,30fold
33,42fold
33,42fold
45,47fold
22,48fold
22,48fold
61,61fold
65,65fold
52,67fold
73,74fold
80,83fold
89,89fold
93,93fold
97,97fold
100,100fold
88,102fold
107,107fold
112,113fold
123,126fold
123,126fold
119,129fold
117,131fold
135,135fold
22
normal! zo
22
normal! zo
30
normal! zo
33
normal! zo
117
normal! zo
119
normal! zo
let s:l = 33 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 09|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
tabnew
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
argglobal
if bufexists("term://.//17664:/bin/bash") | buffer term://.//17664:/bin/bash | else | edit term://.//17664:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 582 - ((6 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
582
normal! 013|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("term://.//18469:/bin/bash") | buffer term://.//18469:/bin/bash | else | edit term://.//18469:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 13 - ((12 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 075|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
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
if bufexists("term://.//19850:/bin/bash") | buffer term://.//19850:/bin/bash | else | edit term://.//19850:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 49 - ((31 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 0
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
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
