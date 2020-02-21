" Configuration file for html files
" noremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd filetype html inoremap html; <!DOCTYPE html><Return><html><Return><head><Return><meta charset="UTF-8"><Return><meta name="viewport" content="width=device-width, initial-scale=1.0"><Return><meta http-equiv="X-UA-Compatible" content="ie=edge"><Return><title></title><Return><link><Return></head><Return><body><Return></body><Return></html><Esc>/<title><Return>6la

" Note: map space space to find closing brackets instead of pointer because if you quit editing then pointer still remains.
noremap <Space><Space> <Esc>/><<Enter>a

" Set tabs to 2 spaces instead of 4 only for html.
inoremap <Tab> <Space><Space>

autocmd filetype html inoremap ;i <em></em><Esc>FeT>i

autocmd filetype html inoremap ;b <b></b><Esc>FbT>i

autocmd filetype html inoremap ;h1 <h1></h1><Esc>F1T>i
autocmd filetype html inoremap ;h2 <h2></h2><Esc>F2T>i
autocmd filetype html inoremap ;h3 <h3></h3><Esc>F3T>i
autocmd filetype html inoremap ;h4 <h4></h4><Esc>F4T>i
autocmd filetype html inoremap ;h5 <h5></h5><Esc>F5T>i
autocmd filetype html inoremap ;h6 <h6></h6><Esc>F6T>i


autocmd filetype html inoremap <a <a src=""></a><Space><++><Esc>2F"
