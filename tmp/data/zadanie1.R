 cat("\\section*{Zadanie 1}")

 x = round(rnorm(15)*25)/10 + 9

 vx = var(x)
 sx = sd(x)

 cat("Zmierzono st�enie albumin we krwi dla 15 os�b. Wyniki pomiar�w bez jednostek przedstawione s� poni�ej. \n\n\n\n \\noindent")
 cat(paste("$$X=(",paste(format(x,digits=2),collapse=", "),").$$",sep=" "))
 cat("\n\n\n\n Przyjmuj�c, �e st�enie albumin we krwi ma rozk�ad normalny, wyznacz: �redni�, wariancj�, b��d standardowy dla �redniej oraz 99\\% przedzia� ufno�ci dla �redniej. ")
 
 odpowiedz1 = paste(" srednia: ", format(mean(x), digits=6), "\n\n\n\n wariancja ",format(vx, digits=6), " \n\n\n\n b�ad standardowy ",format(sx/sqrt(15), digits=6), " \n\n\n\n przedzial=(", paste(format(mean(x) + qt(0.005,14)*sx/sqrt(15),digits=6), format(mean(x) + qt(0.995,14)*sx/sqrt(15),digits=6), collapse=", "), ") \n\n\n ",  sep="")
