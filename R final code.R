###############CARGAR BASE DE DATOS###############
#install.packages("readr")
library(readr)
games <- read_csv("data/games.csv")
View(games)
######ESTRUCTURA DE DATOS######
###1.Crear vectores con los títulos de la dataset###
titulos=c(names(games))
titulos
###2.Crear vector numérico con el precio final de los videojuegos###
precio_final=c(games$price_final)
precio_final
###3.Crear una condición lógica de precios bajos###
precios_bajos=ifelse(precio_final<10.99,TRUE,FALSE)
precios_bajos
###4.Sumar 5 al vector creado###
precio_final_mas5=precio_final+5
precio_final_mas5
###5.Dividir la puntuación entre 2###
puntuacion=c(games$positive_ratio)
puntuacion_entre2=puntuacion/2
puntuacion_entre2
###6.Calcular la media, moda, max, min de los datos de tipo numérico###
###(Verificar con la función Class)###
class(games$app_id) #numeric
class(games$title) #character
class(games$date_release) #date
class(games$win) #logical
class(games$mac) #logical
class(games$linux) #logical
class(games$rating) #character
class(games$positive_ratio) #numeric
class(games$user_reviews) #numeric
class(games$price_final) #numeric
class(games$price_original) #numeric
class(games$discount) #numeric
class(games$steam_deck) #logical
#crear funcion para calculo de la moda
mode=function(f) {
  uf=unique(f)
  tab=tabulate(match(f, uf))
  uf[tab==max(tab)]
}
#para app_id
app_id=c(games$app_id)
mean(app_id)
mode(app_id)
max(app_id)
min(app_id)
#para positive_ratio = puntuacion
mean(puntuacion)
mode(puntuacion)
max(puntuacion)
min(puntuacion)
#para user_reviews
cant_reseñas=c(games$user_reviews)
mean(cant_reseñas)
mode(cant_reseñas)
max(cant_reseñas)
min(cant_reseñas)
#para price_final = precio_final
mean(precio_final)
mode(precio_final)
max(precio_final)
min(precio_final)
#para price_original
precio_original=c(games$price_original)
mean(precio_original)
mode(precio_original)
max(precio_original)
min(precio_original)
#para discount
descuento=c(games$discount)
mean(descuento)
mode(descuento)
max(descuento)
min(descuento)
###7.Crear un dataFrame de 13 col con la base de datos y guardar en una nueva variable###
games_matriz=as.matrix(games)
View(games_matriz)
###8.Agregar filas y columnas a la matriz###
###9.Agregar columna de "1"###
###10.Agregar fila con los datos de un video juego de tu preferencia###
games_matriz=cbind(games_matriz,1)
games_matriz=rbind(c(" 12345","Batman: Arkham Knight","2015-06-23","TRUE","FALSE","FALSE","Very Positive"," 89"," 63132"," 19.99"," 19.99"," 0","TRUE","1"),games_matriz)
View(games_matriz)
###11.Eliminar filas y columnas de la matriz###
games_matriz=games_matriz[,-14]
games_matriz=games_matriz[-1,]
View(games_matriz)
###12.Seleccionar los elementos de la matriz###
games_matriz[14,2]
games_matriz[28,10]
games_matriz[c(154,168),c(2,4)]
games_matriz[c(200,249,282),c(2,5,7)]
###13.Convertir la matriz en data.frame y asignar nombres a las columnas###
games_df=data.frame(games_matriz)
View(games_df)
colnames(games_df)=c("id","titulo","fecha_salida","windows","macos","linux","reseñas","porcentaje_positivo","cant_reseñas","precio_final","precio_original","descuento","steam_deck")
colnames(games_df)
View(games_df)
###14.Acceder a los datos del dataframe###
games_df[32,5]
games_df[79,11]
games_df[c(591,613),c(2,4)]
games_df[c(795,834,946),c(2,5,7)]
###15.Cambiar nombre de dataframe###
games_dataframe=games_df
rm(games_df)
View(games_dataframe)
###16.Seleccionar un elemento del dataframe###
games_dataframe[1,2]
######IMPORTAR DATOS######
###1.Importar Datos desde Excel y Ordenar los datos con la función order()###
#Para importar datos
library(readr)
games <- read_csv("data/games.csv")
View(games)
#Para odenar datos
games[order(games$price_final),]
###2.Mostrar el dataframe ordenado de manera ascendente y descendente###
#Para ordenar de manera ascendente
orden_menor_mayor=order(games$price_final,decreasing=FALSE)
games_asc=games[orden_menor_mayor,]
View(games_asc)
#Para ordenar de manera descendente
orden_mayor_menor=order(games$price_final,decreasing=TRUE)
games_desc=games[orden_mayor_menor,]
View(games_desc)
###3.Calcular el resumen estadístico de los datos con la función que corresponde###
resumen_games=list(summary(games))
resumen_games
###4.Realizar las graficas###
#Grafica 1
a=rainbow(9)
b=rainbow(9,alpha=0.2)
c=rainbow(9,v=0.5)
boxplot(games_asc$price_final~games_asc$rating,
        col=b,       
        boxcol=c,     
        medcol=c,   
        whiskcol=a,  
        staplecol=c,   
        outcol=c,    
        outbg=c,     
        pch=20,        
        cex=1,         
        horizontal=T,  
        main="Precio final según valoraciones",
        xlab="Precio final",
        ylab="Reseñas positivas",
        yax ="n"
)
legend("right", title="Rating", levels(games_asc$rating), fill=b, legend=c("Mixed","Mostly Negative","Mostly Positive","Negative","Overwhelming Negative","Overwhelming Positive","Positive","Very Negative","Very Positive"))
#Grafica 2
hist(games_desc$price_final,
     breaks=20,
     main="Distribución del precio final",
     freq = FALSE,
     xlab= "Precio final en dólares",
     ylab="Frecuencia relativa",
     xlim=c(0,60),
     ylim=c(0,0.05),
     col="lightblue",
     border="black"
     )
#####PROGRAMACION######
###1.Implementar una función para la multiplicación de dos vectores(xy) y probar con valores###
mult_vectores=function(x, y) x * y
mult_vectores(c(1,2,3),c(4,5,6))
mult_vectores(c(67,83,27,56),c(35,19,76,94))
###2.Implementar una función que muestre el resultado de la ecuación de Bhaskara y probar con valores.###
bhaskara=function(a,b,c) {
  menor=(-b-sqrt(b**2-4*a*c))/(2*a)
  mayor=(-b+sqrt(b**2-4*a*c))/(2*a)
  resultado=c(menor,mayor)
  return(resultado)
}
bhaskara(1,5,4)
bhaskara(1,-7,12)
###3.Se quiere conocer la media muestral de n observaciones obtenidas independientemente de una distribución normal con media = 0 y varianza =1.
###Realizar una simulación, luego calcular las estadísticas descriptivas aplicando la función que corresponde y graficar.###
set.seed(1)
rep=100000
n=10
Mean=numeric(rep)
for(irep in 1:rep) {
  x=runif(n)
  Mean[irep]=mean(x)
}
hist(Mean,breaks=50,main=paste("n=",n))
