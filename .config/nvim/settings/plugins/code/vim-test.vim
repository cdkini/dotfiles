nmap <silent><leader>Tn :TestNearest<CR>
nmap <silent><leader>Tf :TestFile<CR>
nmap <silent><leader>Ts :TestSuite<CR>
nmap <silent><leader>Tf :TestLast<CR>
nmap <silent><leader>Tv :TestVisit<CR>

let test#strategy="neovim"
let test#python#runner = 'pytest'
