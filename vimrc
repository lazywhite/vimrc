set ts=4 sts=4 sw=4 et ai nu

"==============================================================================
" vim 内置配置 
"==============================================================================

" 设置 vimrc 修改保存后立刻生效，不用在重新打开
" 建议配置完成后将这个关闭，否则配置多了之后会很卡
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 关闭兼容模式
set nocompatible

" set cursorline "突出显示当前行
" set cursorcolumn " 突出显示当前列
set showmatch " 显示括号匹配

" 定义快捷键的前缀，即<Leader>
let mapleader=";" 

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全

"==============================================================================
" 插件配置 
"==============================================================================

" 插件开始的位置
call plug#begin('~/.vim/plugged')


" ==============
" for markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" ==============

" ==============
" for go.mod
Plug 'mattn/vim-gomod'
" ==============
"
" 有道词典在线翻译
Plug 'ianva/vim-youdao-translater'

Plug 'xuhdev/SingleCompile'

Plug 'ervandew/supertab'

Plug 'stephpy/vim-yaml'

" 插件结束的位置，插件全部放在此行上面
call plug#end()


"==============================================================================
" 主题配色 
"==============================================================================

" 开启24bit的颜色，开启这个颜色会更漂亮一些
" set termguicolors
set t_Co=256
" 列出自带配色方案 ls /usr/share/nvim/runtime/colors/
colorscheme default
" 配色方案, 可以从上面插件安装中的选择一个使用 
"set background=light " 主题背景 dark-深色; light-浅色


"==============================================================================
"  有道翻译插件
"==============================================================================
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>


"==============================================================================
" singleCompile 
"==============================================================================
nmap <F5> :SCCompile<cr>
nmap <F6> :SCCompileRun<cr>


"==============================================================================
" markdown
"==============================================================================
"zR: open all fold
"zc: fold code on cursor
"zo: open fold on cursor
"
"let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_override_foldtext = 0


" add yaml stuffs
"au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et noai
"autocmd FileType yaml let b:did_indent = 1
