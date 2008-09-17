 cat("\\section*{Zadanie 1}")

 x = round(rnorm(15)*25)/10 + 9

 vx = var(x)
 sx = sd(x)

 cat("Zmierzono stê¿enie albumin we krwi dla 15 osób. Wyniki pomiarów bez jednostek przedstawione s¹ poni¿ej. \n\n\n\n \\noindent")
 cat(paste("$$X=(",paste(format(x,digits=2),collapse=", "),").$$",sep=" "))
 cat("\n\n\n\n Przyjmuj¹c, ¿e stê¿enie albumin we krwi ma rozk³ad normalny, wyznacz: œredni¹, wariancjê, b³¹d standardowy dla œredniej oraz 99\\% przedzia³ ufnoœci dla œredniej. ")
 
 odpowiedz1 = paste(" srednia: ", format(mean(x), digits=6), "\n\n\n\n wariancja ",format(vx, digits=6), " \n\n\n\n b³ad standardowy ",format(sx/sqrt(15), digits=6), " \n\n\n\n przedzial=(", paste(format(mean(x) + qt(0.005,14)*sx/sqrt(15),digits=6), format(mean(x) + qt(0.995,14)*sx/sqrt(15),digits=6), collapse=", "), ") \n\n\n ",  sep="")
