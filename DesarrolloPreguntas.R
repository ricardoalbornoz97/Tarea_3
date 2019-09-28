listaDeNumeros <- list(2,5,6,2,1,5,6,10,11,20,15)
listaDeNumeros[5]

#Ejercicio 1 : ¿Qué pasa si reemplazamos el 5 por un 0?¿Qué pasa si en vez de poner un
#número positivo, menor igual al largo de la lista, colocamos un número mayor a la cantidad
#de elementos de la lista o un número negativo?
listaDeNumeros[0]
listaDeNumeros[13]
listaDeNumeros[-1]
##Al reemplazar el 5 por un 0, entrega "List()", ya que la posición 0 no existe en la lista
##Al reemplazar el 5 por un valor mayor (12), entrega un valor "Null", esto es porque no existe la posición de ese número en la lista creada
##Al reemplazar el 5 por un valor negativo (-1), entrega la lista, pero suprimiendo el valor que se encuentra en la posición ejecutada

#Ejercicio 2 : A continuación se le presenta la función unlist, la cual se puede usar de la
#siguiente manera: unlist(listaDeNumeros[5]) ¿Qué diferencia existe entre usar o no el unlist,
#y cómo cree ud que le podría ayudar esta función?, pista: experimente usando el
#condicional if , use estos como ejemplo:
#listaDeNumeros[5]
#unlist(listaDeNumeros[5])
#if(listaDeNumeros[5]+1>0){
#print(“se cumple”)
#}
#if(unlist(listaDeNumeros[5])+1>0{
#print(“se cumple”)
#}"
listaDeNumeros[5]
unlist(listaDeNumeros[5])
if(listaDeNumeros[5]+1>0){
print("se cumple")
}
if(unlist(listaDeNumeros[5])+1>0){
print("se cumple")
}
##Unlist sirve para cambiar el formato del valor, desde la posición, a un valor númerico como tal. Simplifica el uso del condicional que ejecuté más abajo
##En el primer if, se toma el valor no numerico, que es la posición 5, esto es porque hay un error en el comando
##En el segundo if, se toma el valor numerico porque se utilizó unlist, de esta forma se puede ejecutar la condición impuesta

#Ejercicio 3 : ¿Qué pasa cuando realizamos la siguiente acción: listaDeNumeros[5] <- 12 ?
listaDeNumeros[5]<-12
listaDeNumeros[5]
##Cuando realizo la acción anterior, el valor que entrega la posición 5 de la lista pasa de ser 1, a ser 12

#Ejercicio 4 : Existe una función llamada length, esta se usa de la siguiente manera:
#length(nombre_variable) , ¿por qué debería ser cambiado nombre_variable para que
#funcione con el ejemplo que estamos trabajando (listaDeNumeros)? ¿qué da como
#resultado?

help(length)
length(nombre_variable)
length(listaDeNumeros)
## Debe ser cambiado desde nombre_variable a listaDeNumeros, ya que la longitud se debe ejecutar a una data existente 
## Length me entrega la longitud de la lista, que es 11

#Ejercicio 5 : Para generar secuencias se tiene un valor inicial y un valor final, donde ambos
#valores son enteros, para el ejemplo, y la sintaxis en R es la siguiente:
#valorInicial : valorFinal
#¿Que sucede cuando valorInicial <- 5 y valorFinal <- 20 , si ahora los invertimos, valorInicial
#<- 20 y valorFinal <- 5 , y si ahora usamos el length visto en el ejercicio 3,
#length(listaDeNumeros) , en vez de valorInicial o valorFinal ?¿Que pasa si ambos números
#son iguales?

valorInicial<-5
ValorFinal<-20

valorInicial:ValorFinal

valorInicial<-20
ValorFinal<-5

valorInicial:ValorFinal
##Al cambiar el valor inicial por el valor final, y viceversa, se invierte la secuencia entregada por valorinicial:valorfinal
valorInicial:length(listaDeNumeros)
## entrega una secuencia entre el valor inicial (20) y la longitud de la lista de números creada
valorInicial:valorInicial
##Si ambos números son iguales, la secuencia será de sólo un número.


#FOR LOOP#

#Ejercicio 6 : Ejecute el ejemplo anterior y comente ¿Cuál es la condición establecida en el
#for, según el resultado que muestra la consola?
for(i in 1 : 100){
print(paste("cuento",i,"misisipis"))
}
##el For genera una variable, que entrega valores de 1 al 100

#Ejercicio 7 : Adapte el código anterior para que imprima los elementos de la lista que se
#creó anteriormente.
for(listaDeNumeros in 1 : 100){
  print(paste("cuento",listaDeNumeros,"misisipis"))
}
## al cambiar i por listaDeNumeros, se crea una secuencia correspondiente con los valores de la lista.

#Ejercicio 8 : Usando los condicionales vistas en clases, adapte el código anterior para que
#muestre si un número es par o impar.