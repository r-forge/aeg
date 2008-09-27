setwd("___HERE_SHOULD_BE_THE_WORKING_DIRECTORY_PATH_____")

Sweave("main.Snw")
system("pdflatex main.tex")
system("pdflatex main.tex")
sufix = format(Sys.time(),".%d.%b.%Y.%H.%M.%S")
system(paste("cmd /C ren main.pdf main",sufix,".pdf",sep=""),show.output.on.console=T)
