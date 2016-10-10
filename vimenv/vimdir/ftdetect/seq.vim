au BufRead,BufNewFile *.seq     setfiletype c
au BufRead,BufNewFile *.seq     set tabstop=4
au BufRead,BufNewFile *.seq     syntax keyword Keyword WAIT WAIT_CLEAR SET STATIC NO_SWAP SWAP IO_SIZE IO_ADDR DEFAULT_SLICE
au BufRead,BufNewFile *.seq     syntax keyword Macro template template_expand
au BufRead,BufNewFile *.seq     syntax keyword Operator slice_write slice_read slice_x slice_lock slice_unlock order_put wait_for wait_and_free_all_signals useq_free ram_dt_read ram_dt_write buf_alloc buf_free

" au BufRead,BufNewFile *.seq    syntax region Function start=+SCBStart+ end=+(+

au BufRead,BufNewFile *.seq     hi Keyword  ctermfg=DarkCyan 
au BufRead,BufNewFile *.seq     hi Operator ctermfg=DarkCyan 
au BufRead,BufNewFile *.seq     hi Macro    ctermfg=DarkCyan
au BufRead,BufNewFile *.seq     hi Comment  ctermfg=DarkGreen

 
 
