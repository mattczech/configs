function! ToggleCommentify()
	let lineString = getline(".")
	if lineString != $									" don't comment empty lines
		let isCommented = strpart(lineString,0,3)		" getting the first 3 symbols
		let fileType = &ft								" finding out the file-type, and specifying the comment symbol
		if fileType == 'ox' || fileType == 'cpp' || fileType == 'c'
			let commentSymbol = '///'
		elseif fileType == 'vim'
			let commentSymbol = '"""'
		elseif fileType == 'python'
			let commentSymbol = '###'
		else
			execute 'echo "ToggleCommentify has not (yet) been implemented for this file-type"'
			let commentSymbol = ''
		endif
		if isCommented == commentSymbol					
			call s:UnCommentify(commentSymbol)			" if the line is already commented, uncomment
		else
			call s:Commentify(commentSymbol)			" if the line is uncommented, comment
		endif
	endif
endfunction

function! s:Commentify(commentSymbol)	
	set nohlsearch	
	execute ':s+^+'.a:commentSymbol.'+'
	set hlsearch	
endfunction
	
function! s:UnCommentify(commentSymbol)	
	set nohlsearch	
	execute ':s+'.a:commentSymbol.'++'
	set hlsearch	
endfunction
			
