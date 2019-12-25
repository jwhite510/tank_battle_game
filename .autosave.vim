let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /mnt/c/Users/jonathon/projects/battle_tank_game
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +414 BattleTank/.ycm_extra_conf.py
badd +1 BattleTank/Source/BattleTank/Public/TankAIController.h
badd +23 BattleTank/Source/BattleTank/Private/Projectile.cpp
badd +11 BattleTank/Source/BattleTank/Private/TankBarrel.cpp
badd +11 BattleTank/Source/BattleTank/Private/TankTurret.cpp
badd +652 term://.//12646:/bin/bash
badd +20 BattleTank/Source/BattleTank/Private/TankAIController.cpp
badd +21 unrealdebug.vim
badd +586 ~/.vimrc
badd +11 ~/.vim/compiler/unreal.vim
badd +53 BattleTank/Source/BattleTank/Private/TankTrack.cpp
badd +16 BattleTank/Source/BattleTank/BattleTank.Build.cs
badd +117 BattleTank/Source/BattleTank/Private/TankAimingComponent.cpp
badd +6 BattleTank/.vscode/c_cpp_properties.json
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
badd +39 BattleTank/Source/BattleTank/Public/TankAimingComponent.h
badd +591 term://.//17664:/bin/bash
badd +0 term://.//18469:/bin/bash
badd +0 term://.//18565:/bin/bash
argglobal
%argdel
$argadd .
set stal=2
edit BattleTank/Source/BattleTank/Public/TankAimingComponent.h
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
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
33
normal! zo
33
normal! zo
33
normal! zo
let s:l = 36 - ((34 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 09|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("/mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Projectile.cpp") | buffer /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Projectile.cpp | else | edit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/Source/BattleTank/Private/Projectile.cpp | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
10,21fold
10,21fold
10,21fold
10,21fold
28,28fold
28,28fold
28,28fold
28,28fold
35,35fold
35,35fold
35,35fold
35,35fold
41,42fold
10
normal! zo
10
normal! zo
10
normal! zo
let s:l = 22 - ((21 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 09|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
tabedit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/.vscode/c_cpp_properties.json
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
exe '1resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe '2resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
exe 'vert 3resize ' . ((&columns * 105 + 105) / 211)
argglobal
if bufexists("term://.//18565:/bin/bash") | buffer term://.//18565:/bin/bash | else | edit term://.//18565:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 23 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 067|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
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
let s:l = 541 - ((17 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
541
normal! 017|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
argglobal
if bufexists("/mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/.ycm_extra_conf.py") | buffer /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/.ycm_extra_conf.py | else | edit /mnt/c/Users/jonathon/projects/battle_tank_game/BattleTank/.ycm_extra_conf.py | endif
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
846
normal! zo
let s:l = 9 - ((8 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 017|
lcd /mnt/c/Users/jonathon/projects/battle_tank_game
wincmd w
exe '1resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe '2resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
exe 'vert 3resize ' . ((&columns * 105 + 105) / 211)
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
let s:l = 581 - ((5 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
581
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
let s:l = 8 - ((7 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
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
if bufexists("term://.//12646:/bin/bash") | buffer term://.//12646:/bin/bash | else | edit term://.//12646:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1310 - ((37 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1310
normal! 063|
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
