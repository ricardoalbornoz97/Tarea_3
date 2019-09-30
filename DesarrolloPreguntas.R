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
for(i in listaDeNumeros){print(paste("elemento",i," de listaDeNumeros"))}
}
## al cambiar i por listaDeNumeros, se crea una secuencia correspondiente con los valores de la lista.

#Ejercicio 8 : Usando los condicionales vistas en clases, adapte el código anterior para que
#muestre si un número es par o impar.

for (i in listaDeNumeros){
  print(i)
  if(i%%2==0) {print("par")} else {print("impar")}
}
#Al codigo realizado, se prueba con numero 2 y entrega como resultado numero par.


##Ejercicio 9 : Suponga que existe un sistema de plebiscitos (resultado SI o NO) con las siguientes reglas: 
##- El padrón electoral consiste de total personas (número entero). 
##- Hay dos opciones de voto: SI o NO. La cantidad de votos se representan con las variables votosSI y votosNO (números enteros). 
##- Considerando que el quórum corresponde al 50% + 1 del padrón electoral: Si hay menos votos que el quórum, pero una de las opciones (SI o NO) tiene una votación mayor o igual al 30%, gana dicha opción. Si no, no hay quórum y gana la opción NO./ Si hay suficientes votos para el quórum, gana la opción con más votos. En caso de empate, gana la opción SI. 
##- Suponga que no hay votos blancos o nulos. Implemente una función que reciba los parámetros total, votosSI y votosNO, y devuelva un String con la opción ganadora (‘SI’ o ‘NO’).

Determinar_Ganador<-function(total,votosSI,votosNO){
  if (votosSI+votosNO>total){
    "votaciones alteradas"
  }else if (votosSI>=votosNO && votosSI>=0.3*total){
    paste ("SI")
  }else {
    paste ("NO")
  }
}
Determinar_Ganador(100,100,50)
Determinar_Ganador(100,51,49)
Determinar_Ganador(100,25,3)

#Al aplicar la funcion se determino que las votaciones estaban alteradas, en el segundo caso gano el "SI" y por ultimo, que gano el "NO".


##Ejercicio 10 : Una función es un grupo de instrucciones que toma valores de entradas para generar un resultado. Por ejemplo, si se crea una función que sume dos elementos, a y b, de la siguiente manera:  
##Suma<-function(a,b){       a+b }  
##Y luego de esto ejecute lo siguiente en R:  
##Suma(3,4)  
##¿Qué resultado genera? Pruébelo con operaciones resta,multiplicación, división.

Resta<-function(a,b){a-b}
Resta(3,4)
Multiplicacion<-function(a,b){a*b}
Multiplicacion(3,4)
Division<-function(a,b){a/b}
Division(3,4)
#El resultado que genera la suma es [1] 7, la resta da [1] -1, la multiplicacion [1] 12 y la division [1] 0.75.


##Ejercicio 10 : Cree dos funciones, una que genere la diferencia entre las áreas de dos rectángulos(área sombreada figura 1) y otra de las áreas de un círculo (área sombreada figura 2), como muestran las siguientes figuras:  

#Circulo
#Anillo: double double -> double
#Anillo: Diferencia de Areas

AreaAnillo<-function(radio1,radio2){
  abs((pi*radio1^2)-(pi*(radio2^2)))
}
AreaAnillo(7,3)
AreaAnillo(6,2)
#Ej.1: AreaAnillo(7.3), da como resultado [1] 125.6637
#Ej.2: AreaAnillo(6,2), da como resultado [1] 100.531

#Rectangulo:
AreaRectangulo<-function(base1,altura1,base2,altura2){
  abs((base1*altura1)-(base2*altura2))
}
AreaRectangulo(20,10,10,5)
# La funcion da como resultado [1] 150

##Ejercicio optativo:

for( i in listaDeNumeros){
  print(i)
}
#La ventaja de este codigo es que da un resultado automaticamente con solo poner el nombre de la lista.

