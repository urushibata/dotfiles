set nocompatible
scriptencoding cp932
"scriptencoding�ƁA���̃t�@�C���̃G���R�[�f�B���O����v����悤���ӁI
"scriptencoding�́Avim�̓����G���R�[�f�B���O�Ɠ������̂𐄏����܂��B
"���s�R�[�h�� set fileformat=unix �ɐݒ肷���unix�ł��g���܂��B

"----------------------------------------
" ���[�U�[�����^�C���p�X�ݒ�
"----------------------------------------
"Windows, unix�ł�runtimepath�̈Ⴂ���z�����邽�߂̂��́B 
"$MY_VIMRUNTIME�̓��[�U�[�����^�C���f�B���N�g���������B 
":echo $MY_VIMRUNTIME�Ŏ��ۂ̃p�X���m�F�ł��܂��B 
if isdirectory($HOME . '/.vim') 
  let $MY_VIMRUNTIME = $HOME.'/.vim' 
elseif isdirectory($HOME . '\vimfiles') 
  let $MY_VIMRUNTIME = $HOME.'\vimfiles' 
elseif isdirectory($VIM . '\vimfiles') 
  let $MY_VIMRUNTIME = $VIM.'\vimfiles' 
endif 
"�����^�C���p�X��ʂ��K�v�̂���v���O�C�����g�p����ꍇ
"$MY_VIMRUNTIME���g�p����� Windows/Linux�Ő؂蕪����K�v�������Ȃ�܂��B 
"��) vimfiles/qfixapp (Linux�ł�~/.vim/qfixapp)�Ƀ����^�C���p�X��ʂ��ꍇ 
"set runtimepath+=$MY_VIMRUNTIME/qfixapp

"----------------------------------------
" �����G���R�[�f�B���O�w��
"----------------------------------------
"�����G���R�[�f�B���O��UTF-8���ƕ����R�[�h�̎����F���ݒ��encode.vim�ōs���B
"�I�[���C�������p�b�P�[�W�̏ꍇ vimrc�Őݒ肳��Ă���̂ŉ������Ȃ��B
"�G���R�[�f�B���O�w��╶���R�[�h�̎����F���ݒ肪�K�؂ɐݒ肳��Ă���ꍇ�A
"���s�� encode.vim�Ǎ������̓R�����g�A�E�g���ĉ������B�uencode.vim�ɂ��āv
"silent! source $MY_VIMRUNTIME/pluginjp/encode.vim

"scriptencoding�ƈقȂ�����G���R�[�f�B���O�ɕύX����ꍇ�A
"�ύX��ɂ�scriptencoding���w�肵�Ă����Ɩ�肪�N���ɂ����Ȃ�܂��B
"scriptencoding cp932

"----------------------------------------
" �V�X�e���ݒ�
"----------------------------------------
"mswin.vim��ǂݍ���
"source $VIMRUNTIME/mswin.vim
"behave mswin

"�t�@�C���̏㏑���̑O�Ƀo�b�N�A�b�v�����/���Ȃ�
"set writebackup���w�肵�Ă��I�v�V���� 'backup' ���I���łȂ�����A
"�o�b�N�A�b�v�͏㏑���ɐ���������ɍ폜�����B
set nowritebackup
"�o�b�N�A�b�v/�X���b�v�t�@�C�����쐬����/���Ȃ�
set nobackup
"set noswapfile
"�ēǍ��Avim�I������p������A���h�D(7.3)
if version >= 703
  "Persistent undo��L����(7.3)
  set undofile
  "�A���h�D�̕ۑ��ꏊ(7.3)
  set undodir=C://usr/tmp/vim/.
endif

"viminfo���쐬���Ȃ�
"set viminfo=
"�N���b�v�{�[�h�����L
set clipboard+=unnamed
"8�i���𖳌��ɂ���B<C-a>,<C-x>�ɉe������
set nrformats-=octal
"�L�[�R�[�h��}�b�s���O���ꂽ�L�[�񂪊�������̂�҂���(�~���b)
set timeoutlen=3500
"�ҏW���ʔ�ۑ��̃o�b�t�@����A�V�����o�b�t�@���J���Ƃ��Ɍx�����o���Ȃ�
set hidden
"�q�X�g���̕ۑ���
set history=50
"���{��̍s�̘A�����ɂ͋󔒂���͂��Ȃ�
set formatoptions+=mM
"Visual block���[�h�Ńt���[�J�[�\����L���ɂ���
set virtualedit=block
"�J�[�\���L�[�ōs���^�s���̈ړ��\�ɐݒ�
set whichwrap=b,s,[,],<,>
"�o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=indent,eol,start
"���⁛�̕����������Ă��J�[�\���ʒu������Ȃ��悤�ɂ���
set ambiwidth=double
"�R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��
set wildmenu
"�}�E�X��L���ɂ���
if has('mouse')
  set mouse=a
endif
"plugin���g�p�\�ɂ���
filetype plugin indent on

"----------------------------------------
" ����
"----------------------------------------
"�����̎��ɑ啶������������ʂ��Ȃ�
"�������啶���������̗������܂܂�Ă���ꍇ�͑啶������������ʂ���
set ignorecase
set smartcase
"�������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂�
set wrapscan
"�C���N�������^���T�[�`
set incsearch
"���������̋����\��
set hlsearch
"w,b�̈ړ��ŔF�����镶��
"set iskeyword=a-z,A-Z,48-57,_,.,-,>
"vimgrep ���f�t�H���g��grep�Ƃ���ꍇinternal
"set grepprg=internal

"----------------------------------------
" �\���ݒ�
"----------------------------------------
"�X�v���b�V��(�N�����̃��b�Z�[�W)��\�����Ȃ�
"set shortmess+=I
"�G���[���̉��ƃr�W���A���x���̗}��(gvim��.gvimrc�Őݒ�)
set noerrorbells
set novisualbell
set visualbell t_vb=
"�}�N�����s���Ȃǂ̉�ʍĕ`����s��Ȃ�
"set lazyredraw
"Windows�Ńf�B���N�g���p�X�̋�؂蕶���\���� / ���g����悤�ɂ���
"set shellslash
"�s�ԍ��\��
set number
"���ʂ̑Ή��\������
set showmatch matchtime=1
"�^�u��ݒ�
set ts=4 sw=4 sts=4
"�����I�ɃC���f���g����
set autoindent
"C�C���f���g�̐ݒ�
set cinoptions+=:0
"�^�C�g����\��
set title
"�R�}���h���C���̍��� (gvim��gvimrc�Ŏw��)
set cmdheight=2
set laststatus=2
"�R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
"��ʍŌ�̍s���ł������\������
set display=lastline
"Tab�A�s���̔��p�X�y�[�X�𖾎��I�ɕ\������
set list
set listchars=tab:^\ ,trail:~

" �n�C���C�g��L���ɂ���
if &t_Co > 2 || has('gui_running')
  syntax on
endif

"�F�e�[�}�ݒ�
"gvim�̐F�e�[�}��.gvimrc�Ŏw�肷��
colorscheme default

""""""""""""""""""""""""""""""
"�X�e�[�^�X���C���ɕ����R�[�h��BOM�A16�i�\�����\��
"iconv���g�p�\�̏ꍇ�A�J�[�\����̕����R�[�h���G���R�[�h�ɉ������\���ɂ���FencB()���g�p
""""""""""""""""""""""""""""""
if has('iconv')
  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=[0x%{FencB()}]\ (%v,%l)/%L%8P\ 
else
  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
endif

function! FencB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return s:Byte2hex(s:Str2byte(c))
endfunction

function! s:Str2byte(str)
  return map(range(len(a:str)), 'char2nr(a:str[v:val])')
endfunction

function! s:Byte2hex(bytes)
  return join(map(copy(a:bytes), 'printf("%02X", v:val)'), '')
endfunction

"----------------------------------------
" diff/patch
"----------------------------------------
" diff�̐ݒ�
if has('win95') || has('win16') || has('win32') || has('win64')
  set diffexpr=MyDiff()
  function! MyDiff()
    silent! let saved_sxq=&shellxquote
    silent! set shellxquote=
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    " let cmd = '!diff ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
    let cmd = '!""' . $VIM . '\diff" ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . '"'
    silent exe cmd
    silent! let &shellxquote = saved_sxq
  endfunction
endif
"���o�b�t�@�̍����\��(�ύX�ӏ��̕\��)
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
"�t�@�C���܂��̓o�b�t�@�ԍ����w�肵�č����\���B#�Ȃ痠�o�b�t�@�Ɣ�r
command! -nargs=? -complete=file Diff if '<args>'=='' | browse vertical diffsplit|else| vertical diffsplit <args>|endif
"�p�b�`�R�}���h
set patchexpr=MyPatch()
function! MyPatch()
   :call system($VIM."\\'.'patch -o " . v:fname_out . " " . v:fname_in . " < " . v:fname_diff)
endfunction

"----------------------------------------
" �m�[�}�����[�h
"----------------------------------------
"�w���v����
nnoremap <F1> K
"���݊J���Ă���vim�X�N���v�g�t�@�C�������s
nnoremap <F8> :source %<CR>
"�����S�ۑ��I���𖳌���
nnoremap ZZ <Nop>
"�J�[�\����j k �ł͕\���s�ňړ�����B�����s�ړ���<C-n>,<C-p>
"�L�[�{�[�h�}�N���ɂ͕����s�ړ��𐄏�
"h l �̓m�[�}�����[�h�̂ݍs���A�s���𒴂��邱�Ƃ��\�ɐݒ�(whichwrap) 
" zv�̓J�[�\���ʒu�̐܂��݂��J���R�}���h
nnoremap <Down> gj
nnoremap <Up>   gk
nnoremap h <Left>zv
nnoremap j gj
nnoremap k gk
nnoremap l <Right>zv

"----------------------------------------
" �}�����[�h
"----------------------------------------

"----------------------------------------
" �r�W���A�����[�h
"----------------------------------------

"----------------------------------------
" �R�}���h���[�h
"----------------------------------------

"----------------------------------------
" Vim�X�N���v�g
"----------------------------------------
""""""""""""""""""""""""""""""
"�t�@�C�����J������O��̃J�[�\���ʒu�ֈړ�
""""""""""""""""""""""""""""""
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line('$') |
    \   exe "normal! g`\"" |
    \ endif
augroup END

""""""""""""""""""""""""""""""
"�}�����[�h���A�X�e�[�^�X���C���̐F��ύX
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif
" if has('unix') && !has('gui_running')
"   " ESC�ŃL�[���͑҂��ɂȂ�΍�
"   inoremap <silent> <ESC> <ESC>
" endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
    redraw
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

""""""""""""""""""""""""""""""
"�S�p�X�y�[�X��\��
""""""""""""""""""""""""""""""
"�R�����g�ȊO�őS�p�X�y�[�X���w�肵�Ă���̂ŁAscriptencoding�ƁA
"���̃t�@�C���̃G���R�[�h����v����悤���ӁI
"�����\������Ȃ��ꍇ�A������scriptencoding���w�肷��Ƃ��܂�������������܂��B
"scriptencoding cp932

"�f�t�H���g��ZenkakuSpace���`
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpace���J���[�t�@�C���Őݒ肷��Ȃ玟�̍s�͍폜
    autocmd ColorScheme       * call ZenkakuSpace()
    " �S�p�X�y�[�X�̃n�C���C�g�w��
    autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
  augroup END
  call ZenkakuSpace()
endif

""""""""""""""""""""""""""""""
"grep,tags�̂��߃J�����g�f�B���N�g�����t�@�C���Ɠ����f�B���N�g���Ɉړ�����
""""""""""""""""""""""""""""""
"if exists('+autochdir')
"  "autochdir������ꍇ�J�����g�f�B���N�g�����ړ�
"  set autochdir
"else
"  "autochdir�����݂��Ȃ����A�J�����g�f�B���N�g�����ړ��������ꍇ
"  au BufEnter * execute ":silent! lcd " . escape(expand("%:p:h"), ' ')
"endif

""""""""""""""""""""""""""""""
"Windows�œ����G���R�[�f�B���O��cp932�ȊO�̏ꍇ
"make�̃��b�Z�[�W��������̂����
""""""""""""""""""""""""""""""
"if has('win32') || has('win64') || has('win95') || has('win16')
"  au QuickfixCmdPost make call QFixCnv('cp932')
"endif
"
"function! QFixCnv(enc)
"  if a:enc == &enc
"    return
"  endif
"  let qflist = getqflist()
"  for i in qflist
"    let i.text = iconv(i.text, a:enc, &enc)
"  endfor
"  call setqflist(qflist)
"endfunction

"----------------------------------------
" �e��v���O�C���ݒ�
"----------------------------------------
"set nocompatible
"filetype off
"
"if has('win32') || has('win64')
"  set rtp+=$HOME/dotfiles/vimfiles/vundle.git/
"  let $DOTVIM = expand('$HOME/dotfiles/vimfiles/bundle')
"else
"  let $DOTVIM = expand('~/.vim')
"endif
"
"call vundle#rc('$DOTVIM')
"
"Bundle 'gmarik/vundle'
"Bundle 'surround.vim'
"Bundle 'ref.vim'
"Bundle 'petdance/vim-perl'
"Bundle 'vim-perl'
"Bundle 'hotchpotch/perldoc-vim'
"Bundle 'thinca/vim-quickrun'
"
"filetype plugin indent on

set nocompatible               " Be iMproved
filetype off

if has('vim_starting')
  set runtimepath+=$HOME/dotfiles/vimfiles/bundle/neobundle.vim
  let $DOTVIM = expand('$HOME/dotfiles/vimfiles/bundle')
endif

call neobundle#rc('$DOTVIM')

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
  \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

NeoBundle 'neocomplete.vim'
NeoBundle 'surround.vim'
NeoBundle 'ref.vim'
NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'thinca/vim-quickrun'

syntax on
filetype on
filetype plugin indent on   " Required!

NeoBundleCheck

"----------------------------------------
" neocomplete.vim
"----------------------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

"AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"----------------------------------------
" �ꎞ�ݒ�
"----------------------------------------
