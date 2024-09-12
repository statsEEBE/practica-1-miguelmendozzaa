#Codigo para problema 1

mis_dades <- mtcars
 
mean(mis_dades$qsec) #Media (Promedio), mitjana
hist(mis_dades$qsec, breaks = 15)
cut(mis_dades$qsec,9) #Recortar en x intervalos
table(cut(mis_dades$qsec,9)) #Frecuencia absoluta (ni)
table(cut(mis_dades$qsec,9))/32 #fi

freq <- table(cut(mis_dades$qsec,9))
freq
tabla <- data.frame(ni=freq,
                    fi=freq/32,
                    Ni=cumsum(freq),
                    Fi=cumsum(freq/32))
tabla

mis_dades$drat
median(mis_dades$drat) #Mediana. Punto medio de observaciones
hist(mis_dades$drat)
sort(mis_dades$drat)

quantile(mis_dades$drat)
quantile(mis_dades$mpg, 0.18)
IQR(mis_dades$cyl)
sd(mis_dades$cyl) #Desviación típica (s)
var(mis_dades$cyl) #Varianza (s^2)
