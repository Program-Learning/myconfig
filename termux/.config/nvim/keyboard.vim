
"编辑模式下指令：
imap <c-a> <ESC>:wq<CR>
imap <c-q> <esc>:q<CR>
imap <c-space> <ESC>:w<CR>:FloatermNew<CR>

"普通模式下指令
nmap <c-a> :wq<CR>
nmap <c-q> :q!<CR>
nmap <LEADER><space> :FloatermNew<CR>
"TAB键
inoremap <silent><expr> <TAB>
			\ pumvisible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


"快捷切换tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"调试
nmap <leader>B <Plug>VimspectorToggleBreakpoint
nmap <leader>A <Plug>VimspectorContinue
