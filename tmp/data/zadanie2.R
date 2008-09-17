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

  cat("Przeprowadzono eksperyment, maj¹cy na celu ustalenie, czy zachorowalnoœæ na przeziêbienie zale¿y od rasy.\n\n\n\n ")
  cat("Do badania wybrano 100 osobników rasy bia³ej, 100 osobników rasy ¿ó³tej i 100 osobników rasy czarnej. \n")
  cat(paste("W wyniku badania okaza³o siê, ¿e zachorowa³o ",x[1]," osobników rasy bia³ej, ", x[2]," osobników rasy ¿ó³ej oraz ",x[3]," osobników rasy czarnej. \n \\ \n\n\n ",sep=""))
  cat("Sformu³uj hipotezê zerow¹ i alternatywn¹. Podaj nazwê najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz wartoœæ statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotnoœci $\\alpha=0.05$. Napisz jak¹ decyzjê sugeruje wynik testowania. Oszacuj p-wartoœæ. \n")
  
  a = print(xtable(rbind(x, 100-x)), floating=F, file="clipboard")
  b = print(xtable(rbind(sum(x)*c(1,1,1)/3, 100-sum(x)*c(1,1,1)/3)), floating=F, file="clipboard")
  odpowiedz2 = paste("Test chi2 dla niezale¿noœci \n\n\n\n liczebnosci: ",a, "\n\n\n\n oczekiwane: ",b , " \n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n W=[",format(qchisq(0.95,2), digits=6), ", $\\infty$) \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}


if (zadanie>=0.5) {
  x = as.numeric(table(cut(runif(200),c(-0.1,0.15,0.3,0.6,1.1))))
  t = chisq.test(x, p=c(0.1,0.2,0.3,0.4))

  cat("Obserwujemy losow¹ grê w której wygraæ mo¿na jedn¹ z czterech nagród A, B, C lub D (zawsze coœ wygrywamy). W³aœciciel gry twierdzi, ¿e nagroda A jest wygrywana w 40\\% przypadków, nagroda B w 30\\% przypadków, nagroda C w 20\\%przypadków a nagroda D w 10\\%przypadków.\n\n\n\n ")
  cat(paste("Zebraliœmy wyniki pomiarów 200 rozgrywek i okaza³o siê, ¿e wygrano ", x[4], " razy nagrodê A, ", x[3], " razy nagrodê B, ", x[2], " razy nagrodê C, ", x[1], " razy nagrodê D. "))
  cat("Chcemy sprawdziæ, czy te obserwacje s¹ zgodne z deklaracjami w³aœciciela gry. \n\n\n\n")
  cat("Sformu³uj hipotezê zerow¹ i alternatywn¹. Podaj nazwê najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz wartoœæ statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotnoœci $\\alpha=0.05$. Napisz jak¹ decyzjê sugeruje wynik testowania. Oszacuj p-wartoœæ. \n")
  
  a = print(xtable(as.table(x)), floating=F, file="clipboard")
  odpowiedz2 = paste("Test chi2 dla zgodnoœci \n\n\n\n liczebnosci: ",a, "\n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n W=[",format(qchisq(0.95,3), digits=6), ", $\\infty$) \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}

