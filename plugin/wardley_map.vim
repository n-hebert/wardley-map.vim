if exists('g:loaded_wardley_map_plugin')
	finish
endif
let g:loaded_wardley_map_plugin = 1

augroup wardley_map_augroup
	autocmd! BufNewFile,BufRead *.owm setf wardley | setlocal syntax=wardley
	autocmd! BufWritePost *.owm call wardley_map#renderer#RenderBuffer()
augroup END

command! RenderWardleyMap call wardley_map#renderer#RenderBuffer()

