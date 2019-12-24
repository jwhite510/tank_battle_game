" unreal pull from debug file
fun! UnrealDebug()
	" check if unreal debug buffer is set
	if stridx(bufname("%"),"term") == -1 && exists("g:unreal_debug_buffer")

		" check if semantic highlighting is set
		let s:set_semantic = 0
		if exists('b:semanticOn')
			if b:semanticOn == 1
				let s:set_semantic = 1
			endif
		endif

		" set marks for current screen position
		:execute ":w"
		:execute "normal! msHmt"

		" switch to buffer
		:execute ":b ".g:unreal_debug_buffer
		" run the debug
		call feedkeys("GV?Starting HotReload"."\<CR>".":cgetbuffer"."\<CR>"." :call ProcessQF()"."\<CR>")

		" return to original position
		call feedkeys("\<C-o>")
		call feedkeys("\<C-o>")
		call feedkeys("\<C-o>")
		call feedkeys("")
		call feedkeys("`tzt`s")

		if s:set_semantic == 1
			" :execute ":SemanticHighlight"
			call feedkeys(":SemanticHighlight\<CR>")
		endif
	endif
endfun

fun! SetRunBuffer()
	let g:unreal_debug_buffer = bufnr('%')
endfun

" debug
" nnoremap <leader>db GV?Running Mono<CR>:cgetbuffer<CR> :call ProcessQF()<CR>a
nnoremap <leader>db :call UnrealDebug()<CR>
" set buffer
"nnoremap <leader>ds GV?Running Mono<CR>:cgetbuffer<CR> :call ProcessQF()<CR>a
nnoremap <leader>ds :call SetRunBuffer()<CR>

