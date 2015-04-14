
let g:Movemap_current = "mov"


function Movemap_toggle()
	if g:Movemap_current == "mov"
		call Movemap_normal()
		let g:Movemap_current = "normal"
		echo "normal"
	else
	if g:Movemap_current == "normal"
		call Movemap_mov()
		let g:Movemap_current = "mov"
		echo "mov"
	endif
	endif
endfunction


function Movemap_normal()

	" normal

	nunmap J
	nunmap K
	nunmap U
	nunmap ci
	nunmap b
	" movment
	nunmap s
	nunmap S
	nunmap d
	nunmap D
	nunmap f
	nunmap F
	nunmap e
	nunmap E

	" visual

	vunmap i
	vunmap t
	" movment
	vunmap s
	vunmap d
	vunmap f
	vunmap e
endfunction


function Movemap_mov()

	" normal

	nnoremap J 20j
	nnoremap K 20k
	nnoremap U <C-R>
	nnoremap ci ciw
	nnoremap b <C-v>
	" movment
	nnoremap s b
	nnoremap S 0
	nnoremap d 8j
	nnoremap D 16j
	nnoremap f e<Right>
	nnoremap F $
	nnoremap e 8k
	nnoremap E 16k

	" visual

	vnoremap i I
	vnoremap t d
	" movment
	vnoremap s b
	vnoremap d 8j
	vnoremap f e
	vnoremap e 8k
endfunction




