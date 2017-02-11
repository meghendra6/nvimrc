"Key bindings -----------------------------------------------------------------

"Move to beginning of the current line
map <C-a> 0
"Move to end of line
map <C-e> $

"Map Quit without save
map <C-q> :q<Enter>

"Nerdtree
nmap q :NERDTreeToggle<cr>
let NERDTreeMapOpenVSplit="<C-v>"
let NERDTreeMapOpenSplit="<C-s>"

"Vim surround
"surround a word & insert surround text mode
nmap s ysiw

"FZF
nmap fz :FZF <ENTER>
"fzf key map to be equal with NerdTree
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }

"Tern for js, auto key map not working now
autocmd FileType javascript nnoremap <silent> <buffer> td :TernDef<CR>

"End Key bindings -------------------------------------------------------------
