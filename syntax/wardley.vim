if exists('b:current_syntax')
	finish
endif
let b:current_syntax = 'wardley'

syntax case match

" define some keywords
syntax keyword WardleyKeyword outsource build buy anchor annotation annotations
	\ style ecosystem market evolve inertia pipeline title evolution y-axis
	\ pioneers settlers townplanners note component submap url
syntax keyword WardleyStyleType wardley colour handwritten plain

" define some highlights for those keywords
highlight link WardleyStyleType Identifier
highlight link WardleyKeyword Statement

