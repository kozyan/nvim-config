let mapleader=";"
set clipboard^=unnamed,unnamedplus

if has('unix')
	set thesaurus+=/usr/share/dict/words
endif

if exists("g:vscode")
    call plug#begin('~/.nvim/plugins')
        " inside；plug#begin:
        " Plug 'easymotion/vim-easymotion'
        Plug 'tpope/vim-surround'
        Plug 'asvetliakov/vim-easymotion'
        Plug 'vim-scripts/argtextobj.vim'
        Plug 'kylechui/nvim-surround'
    call plug#end()
elseif exists("g:neovide")
	lua require('core.init')
	
	" Neovide config
	let g:neovide_refresh_rate=24	" come on it's just a text editor
	let g:neovide_transparency=1.0
	let g:neovide_scroll_animation_length = 0.3
	let g:neovide_remember_window_size = v:true
	let g:neovide_input_use_logo=v:true	" the super/command/win key
	let g:neovide_input_macos_alt_is_meta=v:false
	let g:neovide_touch_deadzone=0.0
	let g:neovide_cursor_animation_length=0.05
	let g:neovide_cursor_trail_length=0.8
	let g:neovide_cursor_antialiasing=v:false	" i dont need it
	let g:neovide_cursor_vfx_mode = "wireframe"
	let g:neovide_remember_window_size = v:true
endif


let g:EasyMotion_smartcase = 1
nmap <Leader><Leader>z <Plug>(easymotion-jumptoanywhere)
nmap <Leader><Leader>x <Plug>(easymotion-s2)

autocmd FileType markdown setlocal spell

