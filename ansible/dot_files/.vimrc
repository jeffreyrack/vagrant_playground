set ts=4
set sw=4
set expandtab

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
if !isdirectory($HOME . "/.vim/undodir")
  call mkdir($HOME . "/.vim/undodir", "p")
endif
set undofile
set undodir=~/.vim/undo

call plug#begin()
Plug 'https://github.com/simnalamburt/vim-mundo.git'
nnoremap <F5> :MundoToggle<CR>
call plug#end()

