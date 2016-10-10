" ------------------------------------------------------------------------------
"
" Vim filetype plugin file
"
"   Language :  C / C++
"     Plugin :  c.vim 
" Maintainer :  Fritz Mehner <mehner@fh-swf.de>
"   Revision :  $Id: c.vim,v 1.72 2012/04/17 18:43:34 mehner Exp $
"
"
" ------------------------------------------------------------------------------
"
" Only do this when not done yet for this buffer
" 
if exists("b:did_python_ftplugin")
finish
endif

" Indentation settings
:set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    
