  "    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

set timeout timeoutlen=3000
set nuw=6
" General Settings
 if !exists('g:vscode')
   source $HOME/.config/nvim/plug-config/polyglot.vim
   source $HOME/.config/nvim/general/settings.vim
 endif
 source $HOME/.config/nvim/vim-plug/plugins.vim
 source $HOME/.config/nvim/general/functions.vim
 source $HOME/.config/nvim/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
   source $HOME/.config/nvim/plug-config/quickscope.vim
   source $HOME/.config/nvim/vscode/settings.vim
   source $HOME/.config/nvim/plug-config/easymotion.vim
   source $HOME/.config/nvim/plug-config/surround.vim
   source $HOME/.config/nvim/plug-config/targets.vim
   source $HOME/.config/nvim/plug-config/highlightyank.vim
else

"  Themes
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/nvcode.vim

   source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/surround.vim
  " " Plugin Configuration
   source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  source $HOME/.config/nvim/plug-config/vim-wiki.vim
  luafile $HOME/.config/nvim/lua/nvcodeline.lua
   luafile $HOME/.config/nvim/lua/treesitter.lua
  source $HOME/.config/nvim/plug-config/coc/coc.vim
  source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  " source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  " source $HOME/.config/nvim/plug-config/gitgutter.vim
  " source $HOME/.config/nvim/plug-config/git-messenger.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/barbar.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/tagalong.vim
  source $HOME/.config/nvim/plug-config/bracey.vim
  source $HOME/.config/nvim/plug-config/asynctask.vim
  source $HOME/.config/nvim/plug-config/window-swap.vim
  source $HOME/.config/nvim/plug-config/markdown-preview.vim
  source $HOME/.config/nvim/plug-config/neovide.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
  source $HOME/.config/nvim/plug-config/vimspector.vim
  " source $HOME/.config/nvim/plug-config/sneak.vim
  " source $HOME/.config/nvim/plug-config/rainbow.vim
  " source $HOME/.config/nvim/plug-config/illuminate.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  " source $HOME/.config/nvim/plug-config/xtabline.vim
  " source $HOME/.config/nvim/plug-config/ale.vim
endif

" Add paths to node and python here
"if !empty(glob("~/.config/nvim/paths.vim"))
 " source $HOME/.config/nvim/paths.vim
"endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" greatest remap ever
vnoremap <leader><leader>p "_dP

vnoremap <leader><leader>p "_dP
vnoremap <leader><leader>p "_dP
" next greatest remap ever : asbjornHaland
nnoremap <leader><leader>y "+y€ý,€ý,
vnoremap <leader><leader>y "+y
nnoremap <leader><leader>Y gg"+yG

nnoremap <leader><leader>d "_d
vnoremap <leader><leader>d "_d
nnoremap <leader>dq "_di"P
nnoremap <leader>dQ "_di'P
nnoremap <leader>db "_di)P
nnoremap <leader>dB "_di}P
" Move to last postion when insert was used
"nnoremap <leader>r `^
" Move cursor to line with last change
nnoremap <leader>l `.
" Move line up annd down like cscode ctrl+alt
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" Delete all occurange of word
nnoremap <Leader><Leader>s :%s/\<<C-r><C-w>\>/
" MArks mappings
" nnoremap <leader>c `.
" nnoremap <leader>i `^
" nnoremap <leader>v `<
" nnoremap <leader>V `>
" nnoremap <leader>y `[
" nnoremap <leader>Y `]
" Surround mappings

" automatically jump to the end of the text you just copied/pasted:
xnoremap <silent> y y`]
nnoremap <silent> yy yy`]
xnoremap <silent> p p`]
xnoremap <silent> P P`]
nnoremap <silent> p p`]
nnoremap <silent> P P`]

nnoremap <leader>r .
" <Leader>f{char} to move to {char}
nnoremap gs i<CR><ESC>

nnoremap <leader>m ]m
nnoremap <leader>M [m

nnoremap yaf va{Vy
nnoremap daf va{Vd
" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" esc and save
" disable above for normal mode
" highlight QuickScopePrimary guifg='#e40a2d' gui=underline ctermfg=155 cterm=underline
" highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" Folding
" nnoremap gk :<C-u>call VSCodeCall('cursorMove', { 'to': 'up', 'by': 'wrappedLine', 'value': v:count ? v:count : 1 })<CR> 
 " nnoremap gj :<C-u>call VSCodeCall('cursorMove', { 'to': 'down', 'by': 'wrappedLine', 'value': v:count ? v:count : 1 })<CR>
