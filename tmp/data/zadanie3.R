cat("\\section*{Zadanie 3}")

#
# Test Wilcoxona dla dwoch prob lub dla jednej proby
#

zadanie = runif(1)

if (zadanie<0.5) {
  x = round(rexp(15)*30)
  y = round(rexp(15)*30+18)
  rxy= rank(abs(x-y))

  Wp = sum(rxy[x-y>0])
  Wm = sum(rxy[x-y<0])

  t = wilcox.test(x,y, paired=T)

  a = gsub(".00","",print(xtable(rbind(przed=(x),po=floor(y))), floating=F, file="clipboard",include.colnames=F))
  
  cat("Interesuje nas st�enie markera APE55  w organizmie. Wiemy, �e to st�enie przyjmuje warto�ci o rozk�adzie wyk�adniczym. Dla 15 pacjent�w zbadali�my st�enie przed i po podaniu pewnego leku, wyniki przedstawiono poni�ej.\n\n\n\n \\vspace{0.5cm} \\noindent")
  cat("\\begin{center} ")
  cat(a)
  cat("\\end{center} ")
  cat("\\vspace{0.5cm}\n\n\n\n Chcemy sprawdzi�, czy ten lek zmienia istotnie warto�� st�enia APE55.\n\n\n\n ")
  
  cat("Sformu�uj hipotez� zerow� i alternatywn�. Podaj nazw� najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz warto�� statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotno�ci $\\alpha=0.05$. Napisz jak� decyzj� sugeruje wynik testowania. Oszacuj p-warto��. \n")
  
  a = paste(rxy, collapse=", ")
  odpowiedz3 = paste("Test Wilcoxona dla danych sparowanych. \n\n\n\n rangi: ",a, "\n\n\n\n Wp, Wm: ",Wp, ", " , Wm, " \n\n\n\n W=[0, 26]  \n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}


if (zadanie>=0.5) {

  x = round(rexp(10)*30)
  y = round(rexp(10)*30+25)
  rxy= rank(abs(x-y))

  Wp = sum(rxy[x-y>0])
  Wm = sum(rxy[x-y<0])

  t = wilcox.test(x,y)

  a = gsub(".00","",print(xtable(rbind(zdrowi=x,chorzy=y)), floating=F, file="clipboard",include.colnames=F))

  cat("Interesuje nas st�enie markera APE55 w organizmie. Wiemy, �e to st�enie przyjmuje warto�ci o rozk�adzie wyk�adniczym. Zbadali�my st�enie u 10 os�b zdrowych i 10 os�b chorych, wyniki przedstawiono poni�ej.\n\n\n\n \\vspace{0.5cm} \\noindent")
  cat("\\begin{center} ")
  cat(a)
  cat("\\end{center} ")
  cat("\\vspace{0.5cm} \n\n\n\n Chcemy sprawdzi�, czy warto�� st�enia APE55 w organizmie r�ni si� u os�b zdrowych i chorych.\n\n\n\n ")
  
  cat("Sformu�uj hipotez� zerow� i alternatywn�. Podaj nazw� najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz warto�� statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotno�ci $\\alpha=0.05$. Napisz jak� decyzj� sugeruje wynik testowania. Oszacuj p-warto��. \n")
  
  a = print(xtable(cbind(rank(x),rank(y))), floating=F, file="clipboard",include.colnames=F,include.rownames=F)
  odpowiedz3 = paste("Test Wilcoxona dla dwoch grup. \n\n\n\n W=[0, 24] i [76,100]  \n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}

