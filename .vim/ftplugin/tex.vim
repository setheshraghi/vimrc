let maplocalleader = "t"
map <localleader>s :! pdflatex -output-directory=../pdf/ % && open ../pdf/%:t:r.pdf && open -a Terminal<CR><CR>
map <localleader>d :! rm ../pdf/%:t:r.aux ../pdf/%:t:r.log<CR>
