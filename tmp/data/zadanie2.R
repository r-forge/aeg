cat("\\section*{Zadanie 2}")

#
# jakis test chi2, albo zgodnosci, albo niezaleznosci
#

zadanie = runif(1)

#
# test chi2
if (zadanie<0.5) {
  x = rbinom(3,100,c(0.35,0.35,0.25))
  t = chisq.test(rbind(x, 100-x))

  cat("Przeprowadzono eksperyment, maj�cy na celu ustalenie, czy zachorowalno�� na przezi�bienie zale�y od rasy.\n\n\n\n ")
  cat("Do badania wybrano 100 osobnik�w rasy bia�ej, 100 osobnik�w rasy ��tej i 100 osobnik�w rasy czarnej. \n")
  cat(paste("W wyniku badania okaza�o si�, �e zachorowa�o ",x[1]," osobnik�w rasy bia�ej, ", x[2]," osobnik�w rasy ��ej oraz ",x[3]," osobnik�w rasy czarnej. \n \\ \n\n\n ",sep=""))
  cat("Sformu�uj hipotez� zerow� i alternatywn�. Podaj nazw� najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz warto�� statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotno�ci $\\alpha=0.05$. Napisz jak� decyzj� sugeruje wynik testowania. Oszacuj p-warto��. \n")
  
  a = print(xtable(rbind(x, 100-x)), floating=F, file="clipboard")
  b = print(xtable(rbind(sum(x)*c(1,1,1)/3, 100-sum(x)*c(1,1,1)/3)), floating=F, file="clipboard")
  odpowiedz2 = paste("Test chi2 dla niezale�no�ci \n\n\n\n liczebnosci: ",a, "\n\n\n\n oczekiwane: ",b , " \n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n W=[",format(qchisq(0.95,2), digits=6), ", $\\infty$) \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}


if (zadanie>=0.5) {
  x = as.numeric(table(cut(runif(200),c(-0.1,0.15,0.3,0.6,1.1))))
  t = chisq.test(x, p=c(0.1,0.2,0.3,0.4))

  cat("Obserwujemy losow� gr� w kt�rej wygra� mo�na jedn� z czterech nagr�d A, B, C lub D (zawsze co� wygrywamy). W�a�ciciel gry twierdzi, �e nagroda A jest wygrywana w 40\\% przypadk�w, nagroda B w 30\\% przypadk�w, nagroda C w 20\\%przypadk�w a nagroda D w 10\\%przypadk�w.\n\n\n\n ")
  cat(paste("Zebrali�my wyniki pomiar�w 200 rozgrywek i okaza�o si�, �e wygrano ", x[4], " razy nagrod� A, ", x[3], " razy nagrod� B, ", x[2], " razy nagrod� C, ", x[1], " razy nagrod� D. "))
  cat("Chcemy sprawdzi�, czy te obserwacje s� zgodne z deklaracjami w�a�ciciela gry. \n\n\n\n")
  cat("Sformu�uj hipotez� zerow� i alternatywn�. Podaj nazw� najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz warto�� statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotno�ci $\\alpha=0.05$. Napisz jak� decyzj� sugeruje wynik testowania. Oszacuj p-warto��. \n")
  
  a = print(xtable(as.table(x)), floating=F, file="clipboard")
  odpowiedz2 = paste("Test chi2 dla zgodno�ci \n\n\n\n liczebnosci: ",a, "\n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n W=[",format(qchisq(0.95,3), digits=6), ", $\\infty$) \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}

