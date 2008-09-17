setwd("c:/_Przemek_/Dane/_wykladStatystyka/Slajdy/generatorZadanKolokwium")

Sweave("main.Snw")
system("pdflatex main.tex")
system("pdflatex main.tex")
sufix = format(Sys.time(),".%d.%b.%Y.%H.%M.%S")
system(paste("cmd /C ren main.pdf main",sufix,".pdf",sep=""),show.output.on.console=T)
