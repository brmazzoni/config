set number
syntax on
set background=dark
set wildmenu
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set ai
set ruler
set hlsearch
autocmd Filetype python,arduino,c,cpp,verilog setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype make setlocal tabstop=2 shiftwidth=4 noexpandtab
autocmd BufNewFile,BufRead *.jack set syntax=cpp
highlight Comment ctermfg=green

autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

augroup tmux
  autocmd!
  if exists('$TMUX')
    autocmd BufReadPost,FileReadPost,BufNewFile,FocusGained * call system("tmux rename-window " . expand("%:t"))
    autocmd VimLeave,FocusLost * call system("tmux set-window-option automatic-rename")
  endif
augroup END
