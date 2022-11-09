inoremap ;start .TL<Enter><--><Enter>.AU<Enter><++><Enter>.AI<Enter><++><Enter><Enter><++><Esc>/<--><Enter>"_4cl
inoremap ;refer %X <--><Enter>%A <++><Enter>%T <++><Enter>%D <++><Enter>%I <++><Enter>%B <++><Enter>%E <++><Enter>
map <leader>t :w <CR>!comptbl %<CR><CR>
inoremap ;bu .IP \(bu <--><Enter><++><Esc>/<--><Enter>"_4cl
inoremap <Space><Space> <Esc>/<++><Enter>"_4cl
inoremap ;nh .NH <--><Enter><++><Esc>/<--><Enter>"_4cl
inoremap ;sh .SH <--><Enter><++><Esc>/<--><Enter>"_4cl
inoremap ;pp .PP<Enter>
inoremap ;qp .QP<Enter>
inoremap ;b .B "<-->"<Enter><++><Esc>/<--><Enter>"_4cl
inoremap ;i .I "<-->"<Enter><++><Esc>/<--><Enter>"_4cl

map <leader>z :!opdf %<CR><CR>
