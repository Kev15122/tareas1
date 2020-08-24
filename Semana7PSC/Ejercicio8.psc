Algoritmo VALIDAR_FECHA
	
	Definir dia, mes, year, max_mes Como Entero
	Definir mes_literal Como Texto
	
	Escribir "Programa que valida una fecha ingresada."
	
	Repetir
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
				2:
					max_mes <- 29
					mes_literal <- "febrero"
				3:
					max_mes <- 31
					mes_literal <- "marzo"
				4:
					max_mes <- 30
					mes_literal <- "abril"
				5:
					max_mes <- 31
					mes_literal <- "mayo"
				6:
					max_mes <- 30
					mes_literal <- "junio"
				7:
					max_mes <- 31
					mes_literal <- "julio"
				8:
					max_mes <- 31
					mes_literal <- "agosto"
				9:
					max_mes <- 30
					mes_literal <- "setiembre"
				10:
					max_mes <- 31
					mes_literal <- "octubre"
				11:
					max_mes <- 30
					mes_literal <- "noviembre"
				12:
					max_mes <- 31
					mes_literal <- "diciembre"
			Fin Segun
			Si dia > max_mes
				Escribir "La fecha ingresada no es v�lida, ",mes_literal," no tiene ",dia," d�as."
			FinSi
		Mientras Que dia > max_mes
		
		Escribir "Ingrese el a�o: "
		Leer year
		
		Si mes = 2
			Si year % 4 = 0 y ((year % 400 = 0) o (year % 100 <> 0))
				max_mes <- 29
			SiNo
				max_mes <- 28
			FinSi
		FinSi
		
		Si dia > max_mes
			Si mes = 2
				Escribir year," no es bisiesto, por lo tanto, febrero de ",year," no puede"
				Escribir "tener m�s de 28 d�as. La fecha ingresada es inv�lida."
			SiNo
				Escribir "La fecha ingresada (",dia," de ",mes_literal," del ",year,") no es v�lida."
				Escribir "debido a que ",mes_literal," no tiene ",dia," d�as."
			FinSi
			Escribir "Int�ntelo nuevamente."
		FinSi
		
	Mientras Que dia > max_mes
	
	Escribir "La fecha ingresada (",dia," de ",mes_literal," del ",year,") es correcta."
	
FinAlgoritmo