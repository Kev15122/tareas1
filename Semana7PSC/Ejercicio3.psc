Algoritmo DETERMINAR_ESTACION
	
	Definir dia, mes, max_mes Como Entero
	Definir mes_literal, estacion Como Texto
	
	Escribir "Programa que calcula qu� estaci�n del a�o transcurre durante una fecha espec�fica."
	
	Repetir
		
		Repetir
			Escribir "Ingrese el d�a del mes:"
			Leer dia
			Si dia<1 o dia>31
				Escribir "El d�a ingresado no es v�lido. Por favor ingrese valores entre 1 y 31."
			FinSi
		Mientras Que dia<1 o dia>31
		
		Repetir
			Escribir "Ingrese el n�mero del mes:"
			Leer mes
			Si mes<1 o mes>12
				Escribir "El d�a ingresado no es v�lido. Por favor ingrese valores entre 1 y 12."
			FinSi
		Mientras Que mes<1 o mes>12
		
		Segun mes Hacer
			1:
				max_mes <- 31
				mes_literal <- "enero"
				estacion <- "verano"
			2:
				max_mes <- 29
				mes_literal <- "febrero"
				estacion <- "verano"
			3:
				max_mes <- 31
				mes_literal <- "marzo"
				Si dia >= 21
					estacion <- "oto�o"
				SiNo
					estacion <- "verano"
				FinSi
			4:
				max_mes <- 30
				mes_literal <- "abril"
				estacion <- "oto�o"
			5:
				max_mes <- 31
				mes_literal <- "mayo"
				estacion <- "oto�o"
			6:
				max_mes <- 30
				mes_literal <- "junio"
				Si dia >= 22
					estacion <- "invierno"
				SiNo
					estacion <- "oto�o"
				FinSi
			7:
				max_mes <- 31
				mes_literal <- "julio"
				estacion <- "invierno"
			8:
				max_mes <- 31
				mes_literal <- "agosto"
				estacion <- "invierno"
			9:
				max_mes <- 30
				mes_literal <- "setiembre"
				Si dia >= 23
					estacion <- "primavera"
				SiNo
					estacion <- "invierno"
				FinSi
			10:
				max_mes <- 31
				mes_literal <- "octubre"
				estacion <- "primavera"
			11:
				max_mes <- 30
				mes_literal <- "noviembre"
				estacion <- "primavera"
			12:
				max_mes <- 31
				mes_literal <- "diciembre"
				Si dia >= 21
					estacion <- "verano"
				SiNo
					estacion <- "primavera"
				FinSi
		Fin Segun
		
		Si dia > max_mes
			Escribir "La fecha ingresada no es v�lida, ",mes_literal," no tiene ",dia," d�as."
		FinSi
		
	Mientras Que dia > max_mes
	
	Escribir "Durante el ",dia," de ",mes_literal," estaremos en ",estacion
	
FinAlgoritmo