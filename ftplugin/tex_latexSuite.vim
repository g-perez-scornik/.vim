" LaTeX filetype
"	  Language: LaTeX (ft=tex)
"	Maintainer: Srinath Avadhanula
"		 Email: srinath@fastmail.fm

if !exists('s:initLatexSuite')
	let s:initLatexSuite = 1
	exec 'so '.fnameescape(expand('<sfile>:p:h').'/latex-suite/main.vim')

	silent! do LatexSuite User LatexSuiteInitPost
endif

silent! do LatexSuite User LatexSuiteFileType

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
call IMAP('DF', '\( <++> \)<++>', 'tex')
call IMAP('ddx', '\ddx{<++>}{<++>}<++>','tex')
call IMAP('ddn', '\ddxn{<++>}{<++>}{<++>}<++>','tex')
call IMAP('vv', '\vec ', 'tex')
let g:Tex_SmartKeyDot=0
let g:Tex_CompileRule_dvi='latex -interaction=nonstopmode -file-line-error-style'
