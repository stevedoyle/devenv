au BufRead,BufNewFile *.uc     setfiletype c
au BufRead,BufNewFile *.uc     set tabstop=4
au BufRead,BufNewFile *.uc     syntax keyword Keyword reg sig set_sig addr begin end xfer_order 
au BufRead,BufNewFile *.uc     syntax keyword Macro macro 
au BufRead,BufNewFile *.uc     syntax keyword Define define 

au BufRead,BufNewFile *.uc     syntax region Comment start=+;+ end=+$+
au BufRead,BufNewFile *.uc     syntax region Label   start=+^[a-zA-Z0-9_]\+#+ end=+:+
au BufRead,BufNewFile *.uc     syntax region PreCondit start=+^#ifdef\|#ifndef\|#if\|#else\|#elsif\|#endif+ end=+$+


au BufRead,BufNewFile *.uc     hi Label ctermfg=darkgreen 
au BufRead,BufNewFile *.uc     hi Keyword ctermfg=darkmagenta 

 
