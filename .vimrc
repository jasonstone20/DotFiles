set number
set relativenumber
syntax on
set tabstop=4
set autoindent
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cursorline
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+P
set exrc
set secure
set colorcolumn=4
highlight ColorColumn ctermbg=0 guibg=lightgrey
let &path.="src/include,/usr/include/AL"
" esc in instert mode
inoremap jk <esc>

"Remove numbers and relativenumbers
nmap <C-N><C-N> :set invnumber invrelativenumber<CR>

	
"Compile in C++
command Compile !set $1 `echo "%" | sed 's/\.cpp//g'` ;g++ -o $1 "%" ; chmod o+x $1; ./$1


" esc in command mode
cnoremap jk <C-C>
" powerline
set  rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" How to do %90 of what plugins do with just VIM
"enter the current millenium
set nocompatible

" enable syntax for plugins (netrw)
syntax enable
filetype plugin on

" Finding Files:
"
" Search down into subfolders
" Provides tab-completion for all file related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Now we can:
" - Hit tab to :find by partial match
" -- Use * to make it fuzzy
"
"  Things to consider:
"  :b lets you autocomplete any open buffer
"  
"

" Tag Jumping (needs ctags installed first)
command! MakeTags !ctags -R .

" Now we can use:
" Use ^] to jump to tag under cursor
" Use g^] for ambiguous tags
" Use ^t to jump back to the tag stack



" File Browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_listhide=netrw_gitignore#Hide()
let g:netrw_listhide.=',\(^\|\s\s)\zs\.\S\+'

" Disable arrow keys in insert mode
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
"
"Display Tabs as Characters
set list
set listchars=eol:$,tab:>.,trail:~,extends:>,precedes:<
map <F6> :setlocal spell! spelllang=en_us<CR>

