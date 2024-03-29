cat("\\section*{Zadanie 4}")

#
# Test na wspolczynnik korelacji i/lub test znakow
#


 x = rnorm(40)
 y = rnorm(40) + x/4
 
 t = cor.test(x,y)

 cat("Zmierzono korelacj� pomi�dzy st�eniem albumin w krwi a liczb� wypalonych dziennie papieros�w. Badania przeprowadzono na 39 elementowej pr�bie wybranej losowo z populacji. Otrzymano wsp�czynnik korelacji $\\hat\\rho=",format(t$estimate, digits=4),"$. Sprawd� czy ta zale�no�� jest istotna statystycznie. \n\n\n\n ")
 cat("Sformu�uj hipotez� zerow� i alternatywn�. Podaj nazw� najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz warto�� statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotno�ci $\\alpha=0.05$. Napisz jak� decyzj� sugeruje wynik testowania. Oszacuj p-warto��. \n")
 
 co = t$estimate
 odpowiedz4 = paste(" korelacja: ", format(t$estimate, digits=6), "\n\n\n\n fp: ", format(log((1+co)/(1-co))/2, digits=6), "\n\n\n\n t: ", format(3*log((1+co)/(1-co)), digits=6), "\n\n\n\n p.value: ", format(t$p.value, digits=6), "\n\n\n\n ",  sep="")
