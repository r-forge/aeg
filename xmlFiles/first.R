#
# inicjacja
#
rootDir       = "c:/_Przemek_/Dane/R/aeg/"
numberOfTasks = 30
setwd(rootDir)

#
# generowanie TeX'a
#
plik    = paste(rootDir, "xmlFiles/first.xml", sep="")

Sweave("tex/main.Snw",output="outputTex/main.tex")

#
# generowanei pdf'a
#
setwd(paste(rootDir,"outputTex/",sep=""))
system("pdflatex main.tex")
system("pdflatex main.tex")
sufix = format(Sys.time(),".%d.%b.%Y.%H.%M.%S")
system(paste("cmd /C ren main.pdf main",sufix,".pdf",sep=""),show.output.on.console=T)
