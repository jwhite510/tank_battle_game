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
badd +39 BattleTank/Source/BattleTank/Public/Projectile.h
badd +21 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +11 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +11 BattleTank/Source/BattleTank/Private/TankTurret.cpp
badd +1310 term://.//12646:/bin/bash
badd +20 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +21 unrealdebug.vim
badd +586 ~/.vimrc
badd +11 ~/.vim/compiler/unreal.vim
badd +53 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +16 BattleTank/Source/BattleTank/BattleTank.Build.cs
badd +33 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
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
badd +48 term://.//21012:/bin/bash
badd +126 term://.//2571:/bin/bash
badd +1 mntc\\
argglobal
%argdel
$argadd ./
set stal=2
edit BattleTank/Source/BattleTank/Private/Projectile.cpp
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
exe 'vert 1resize ' . ((&columns * 118 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 118 + 118) / 237)
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
let s:l = 21 - ((20 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 09|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("/mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Projectile.h") | buffer /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Projectile.h | else | edit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Projectile.h | endif
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
26
normal! zo
38
normal! zo
38
normal! zo
38
normal! zo
let s:l = 29 - ((28 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
exe 'vert 1resize ' . ((&columns * 118 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 118 + 118) / 237)
tabedit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Projectile.cpp
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
exe '1resize ' . ((&lines * 11 + 33) / 66)
exe '2resize ' . ((&lines * 51 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 118 + 118) / 237)
exe '3resize ' . ((&lines * 51 + 33) / 66)
exe 'vert 3resize ' . ((&columns * 118 + 118) / 237)
argglobal
if bufexists("term://.//2571:/bin/bash") | buffer term://.//2571:/bin/bash | else | edit term://.//2571:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 157 - ((8 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
157
normal! 057|
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
10
normal! zo
10
normal! zo
10
normal! zo
let s:l = 21 - ((20 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 023|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("/mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Projectile.h") | buffer /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Projectile.h | else | edit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Public/Projectile.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((28 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 035|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 11 + 33) / 66)
exe '2resize ' . ((&lines * 51 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 118 + 118) / 237)
exe '3resize ' . ((&lines * 51 + 33) / 66)
exe 'vert 3resize ' . ((&columns * 118 + 118) / 237)
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
