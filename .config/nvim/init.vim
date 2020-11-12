let mapleader ="\\"


if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
       "echo "Downloading junegunn/vim-plug to manage plugins..."
       "silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
       "silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
       "autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

"Plug 'tpope/vim-surround'
"Plug 'preservim/nerdtree'
"Plug 'junegunn/goyo.vim'
"Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'jreybert/vimagit'
"Plug 'lukesmithxyz/vimling'
"Plug 'vimwiki/vimwiki'
"Plug 'bling/vim-airline'
"Plug 'tpope/vim-commentary'
"Plug 'kovetskiy/sxhkd-vim'
"Plug 'ap/vim-css-color'
"Plug 'dense-analysis/ale'
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"For html
"Plug 'mattn/emmet-vim'
"Plug 'ctrlpvim/ctrlp.vim'



call plug#end()

set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus

" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
"	inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

	autocmd FileType md inoremap ;t ---<Enter>title:<Space><--><Enter>author:<Space>Mark<Space>Nhel<Space>Besonia<Enter>output:<Space>pdf_document<Enter>---<Enter><Enter><++><Esc>/<--><Enter>"_c4l

"autofill header in rmarkdown docs


" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    if has('nvim')
        let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
    else
        let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
    endif

" vimling:
	nm <leader>d :call ToggleDeadKeys()<CR>
	imap <leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader>i :call ToggleIPA()<CR>
	imap <leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader>q :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Replace ex mode with gq
	map Q gq

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

"Compile Rmd
	map <leader>w :!clear && rcomp %<CR>

" Open my bibliography file in split
	map <leader>b :vsp<space>$BIB<CR>
	map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Enable Goyo by default for mutt writing
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost files,directories !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
" Run build dwmblocks when edited.
	autocmd BufWritePost ~/git/repos/dwmblocks/config.h !cd ~/git/repos/dwmblocks/; sudo make install && notify-send --urgency=low "Build" "Built dwmblocks Successfully" && { killall -q dwmblocks; setsid dwmblocks &}

" Run buid dwm when config is edited.
	autocmd BufWritePost ~/git/repos/dwm/config.h !cd ~/git/repos/dwm/; sudo make install && notify-send --urgency=low "Build" "Built dwm Successfully"

" Run build when st config is edited.
	autocmd BufWritePost ~/git/repos/st/config.h !cd ~/git/repos/st/; sudo make install && notify-send --urgency=low "Build" "Built st Successfully"

" Run build dmenu when config is edited.
	autocmd BufWritePost ~/git/repos/dmenu/config.h !cd ~/git/repos/dmenu/; sudo make install && notify-send --urgency=low "Build" "Built dmenu Successfully!"
"Run build LaTex doc when edited
	autocmd BufWritePost ~/documents/latex-docs/kapitan-bato.tex ! pdflatex ~/documents/latex-docs/kapitan-bato.tex

"Kill and start dunstrc is edited.
	autocmd BufWritePost ~/.config/dunst/dunstrc ! killall -q dunst && dunst &; notify-send --urgency=low "Sample 😝" "This has low level urgency." && notify-send "Second 🤪" "This has normal level urgency." && notify-send --urgency=critical "Notification 👿" "This has critical level urgency."


" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
    highlight! link DiffText MatchParen
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
"if (has("termguicolors"))
" set termguicolors
"endif

" Theme
"syntax enable
"colorscheme OceanicNext
