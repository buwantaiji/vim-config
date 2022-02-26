" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 开启行号显示
set number
" 高亮显示搜索结果
set hlsearch
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim自身命令行模式智能补全
set wildmenu
 
" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的文件类型加载对应的插件
filetype plugin on


" 关闭自动折行显示
set nowrap
" 自动切换是否折行显示的快捷键
nnoremap <Leader>w :set wrap!<CR>

" 重新设置一次翻页的行数
nnoremap <C-D> 10<C-D>
nnoremap <C-U> 10<C-U>

" 在指定列添加竖线以提醒遵循对应的代码规范
set colorcolumn=85

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" Make vsplit put the new buffer on the right of the current buffer
set splitright
" Make split put the new buffer below the current buffer
set splitbelow




" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'derekwyatt/vim-fswitch'
" Plugin 'kshenoy/vim-signature'
" Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
" Plugin 'majutsushi/tagbar'
" Plugin 'vim-scripts/indexer.tar.gz'
" Plugin 'vim-scripts/DfrankUtil'
" Plugin 'vim-scripts/vimprj'
" Plugin 'dyng/ctrlsf.vim'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'vim-scripts/DrawIt'
" Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
" Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
" Plugin 'fholgado/minibufexpl.vim'
" Plugin 'gcmt/wildfire.vim'
" Plugin 'sjl/gundo.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'lilydjwg/fcitx.vim'
" 插件列表结束
call vundle#end()
filetype plugin indent on




" 配色方案
set background=dark
" colorscheme solarized
colorscheme molokai
" colorscheme phd

" 高亮显示当前行/列
set cursorline
" set cursorcolumn

" 设置cursorline的属性: 前景色, 后景色, etc
highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE




" 状态栏
set laststatus=2      " 总是显示状态栏
" Seems not working in the presence of vim-powerline plugin.
" highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
" function! CurDir()
        " let curdir = substitute(getcwd(), $HOME, "~", "g")
        " return curdir
" endfunction
" 设置在状态行显示的信息
" set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ %{$USER}\@\%{hostname()}




" nerdtree
" 查看工程文件的快捷键. 速记:file List
nnoremap <Leader>l :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
" let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1




" YouCompleteMe
" 打开c和c++文件时，分别默认打开的.ycm_extra_conf.py文件,
" 以使得clang能够执行基于语义分析的自动补全.
autocmd FileType c let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf_c.py'
autocmd FileType cpp let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf_cpp.py'
" 打开python文件时, 自动运行脚本的快捷键.
autocmd FileType python nnoremap <Leader><F5> :! ~/anaconda3/bin/python % <CR>




" Fortran
let s:extfname=expand("%:e")
if s:extfname==?"f90"
	let fortran_free_source=1
	unlet! fortran_fixed_source
else
	let fortran_fixed_source=1
	unlet! fortran_free_source
endif
