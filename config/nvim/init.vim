" ayyekou nvim config
" github.com/ayyekou


" vundle 
		set nocompatible
		filetype off
		set rtp+=~/.config/nvim/bundle/Vundle.vim

		call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'vim-airline/vim-airline'
		Plugin 'vim-airline/vim-airline-themes'
		call vundle#end()
		filetype plugin indent on


" appearance
		syntax on
		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
			let g:airline_symbols.maxlinenr = ''
		endif
		colorscheme slate
		hi Normal guibg=NONE ctermbg=NONE
		let g:airline_theme='minimalist'									" airline theme


" statusbar
		set laststatus=1																	" turns status bar on
		set statusline+=%{wordcount().words}\ words				" wordcount


" basic settings
		set clipboard+=unnamedplus												" sets clipboard to global
		set mouse=a																				" allows mouse usage
		set number																				" sets numberline on and relative
		set wrap lbr																			" wraps text
		set tabstop=2																			" set tabs to two spaces
		set shiftwidth=2																	" set tabs to two spaces
"		set spell spelllang=en														" enables spellchecking
		set breakindent																		" hanging indentation
		set splitright splitbelow													" fixes splits which are normally opposite
		set wildmenu																			" better tab auto-completion
		set wildmode=longest,list,full										" expands on wildmenu
		set foldmethod=manual															" folding sets to manual use zf to fold
		set conceallevel=2																" conceal


" global mapping
		" let mapleader=";"																	" set map leader
		nnoremap j gj
		nnoremap k gk
		map <F4> :w<cr>
		map <F8> :setl noai nocin nosi inde=<cr>
		map <C-y> "+y
		map ZC :w! \| !compile "<c-r>%"<CR>

" documents
		autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
		autocmd FileType tex,groff,pdf nnoremap ZP :<c-u> !zathura %:p:r:S.pdf & disown <cr><cr>


" filetypes
		au BufRead,BufNewFile *.tikz setfiletype tex

" conceal
hi Conceal ctermbg=NONE
hi Conceal ctermfg=NONE
hi Conceal guifg=NONE
hi Conceal guibg=NONE
