

let g:optionstar = 0

function Togglestar()
	if g:optionstar == 1
		let g:optionstar = 0
		set nolist
		echo "nostar"
	else
		let g:optionstar = 1
		set list
		set listchars=tab:>.,eol:$,nbsp:.,extends:<,precedes:>
		echo "star"
	endif
endfunction











