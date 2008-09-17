cat("\\section*{Zadanie 4}")

#
# Test na wspolczynnik korelacji i/lub test znakow
#


 x = rnorm(40)
 y = rnorm(40) + x/4
 
 t = cor.test(x,y)

 cat("Zmierzono korelacjê pomiêdzy stê¿eniem albumin w krwi a liczb¹ wypalonych dziennie papierosów. Badania przeprowadzono na 39 elementowej próbie wybranej losowo z populacji. Otrzymano wspó³czynnik korelacji $\\hat\\rho=",format(t$estimate, digits=4),"$. SprawdŸ czy ta zale¿noœæ jest istotna statystycznie. \n\n\n\n ")
 cat("Sformu³uj hipotezê zerow¹ i alternatywn¹. Podaj nazwê najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz wartoœæ statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotnoœci $\\alpha=0.05$. Napisz jak¹ decyzjê sugeruje wynik testowania. Oszacuj p-wartoœæ. \n")
 
 co = t$estimate
 odpowiedz4 = paste(" korelacja: ", format(t$estimate, digits=6), "\n\n\n\n fp: ", format(log((1+co)/(1-co))/2, digits=6), "\n\n\n\n t: ", format(3*log((1+co)/(1-co)), digits=6), "\n\n\n\n p.value: ", format(t$p.value, digits=6), "\n\n\n\n ",  sep="")
