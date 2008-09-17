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
  
  cat("Interesuje nas stê¿enie markera APE55  w organizmie. Wiemy, ¿e to stê¿enie przyjmuje wartoœci o rozk³adzie wyk³adniczym. Dla 15 pacjentów zbadaliœmy stê¿enie przed i po podaniu pewnego leku, wyniki przedstawiono poni¿ej.\n\n\n\n \\vspace{0.5cm} \\noindent")
  cat("\\begin{center} ")
  cat(a)
  cat("\\end{center} ")
  cat("\\vspace{0.5cm}\n\n\n\n Chcemy sprawdziæ, czy ten lek zmienia istotnie wartoœæ stê¿enia APE55.\n\n\n\n ")
  
  cat("Sformu³uj hipotezê zerow¹ i alternatywn¹. Podaj nazwê najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz wartoœæ statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotnoœci $\\alpha=0.05$. Napisz jak¹ decyzjê sugeruje wynik testowania. Oszacuj p-wartoœæ. \n")
  
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

  cat("Interesuje nas stê¿enie markera APE55 w organizmie. Wiemy, ¿e to stê¿enie przyjmuje wartoœci o rozk³adzie wyk³adniczym. Zbadaliœmy stê¿enie u 10 osób zdrowych i 10 osób chorych, wyniki przedstawiono poni¿ej.\n\n\n\n \\vspace{0.5cm} \\noindent")
  cat("\\begin{center} ")
  cat(a)
  cat("\\end{center} ")
  cat("\\vspace{0.5cm} \n\n\n\n Chcemy sprawdziæ, czy wartoœæ stê¿enia APE55 w organizmie ró¿ni siê u osób zdrowych i chorych.\n\n\n\n ")
  
  cat("Sformu³uj hipotezê zerow¹ i alternatywn¹. Podaj nazwê najbardziej odpowiedniego testu do weryfikacji tej hipotezy. Wyznacz wartoœæ statystyki testowej. Wyznacz obszar odrzucenia dla poziomu istotnoœci $\\alpha=0.05$. Napisz jak¹ decyzjê sugeruje wynik testowania. Oszacuj p-wartoœæ. \n")
  
  a = print(xtable(cbind(rank(x),rank(y))), floating=F, file="clipboard",include.colnames=F,include.rownames=F)
  odpowiedz3 = paste("Test Wilcoxona dla dwoch grup. \n\n\n\n W=[0, 24] i [76,100]  \n\n\n\n T=",format(t$statistic, digits=6), " \n\n\n\n p=", format(t$p.value, digits=6), "\n\n\n ",  sep="")
}

