let maplocalleader = "t"
map <localleader>p :! R -e "rmarkdown::render('%', 'pdf_document', '../pdf/Eshraghi_Seth_%:t:r')" && open ../pdf/Eshraghi_Seth_%:t:r.pdf && open -a Terminal<CR><CR>
map <localleader>h :! R -e "rmarkdown::render('%', 'html_document', '../html/Eshraghi_Seth_%:t:r')" && open ../html/Eshraghi_Seth_%:t:r.html && open -a Terminal<CR><CR>
map <localleader>d :! rm ../src/Eshraghi_Seth_%:t:r.log<CR>
