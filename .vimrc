" Referenced by How to Do 90% of What Plugins Do (With Just Vim) on YouTube
set nocompatible

" enable syntax ans plugins (for netrw)
syntax enable
filetype plugin indent on

" Finding files
" Search down into subfolders
set path+=**

" Display all matching files when tab complete
set wildmenu

set tabstop=4
set shiftwidth=4

" Create the `tags` file
" ^] jump to tag under the cursor
" g^] for ambiguous tags
" ^t jump back up the tag stack
command! MakeTags !ctags -R .

" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(\^|\s\s\)\zs\.\S\+'


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" pangloss/vim-javascript configuration
let g:javascript_plugin_ngdoc = 1

" Jellybean color scheme
colorscheme jellybeans

" vim airline Configuration
let g:airline#extensions#tabline#enabled = 1
