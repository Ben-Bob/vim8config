let mapleader=" "


source ~/.vim/myconfig/simple.vim
source ~/.vim/myconfig/plug.vim

" Compile c,c++,java source file
map <C-r> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -lpthread -o %< && time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %< && time ./%<"
    elseif &filetype == 'java'
        exec "!javac % && time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
        exec "!time python3.6 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %< && time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
