Funcion inverso <- obtener_inverso (num)
	Definir a, inverso, res Como Entero
	
	a <- num
	inverso <- 0
	
	Mientras a > 0
		res <- a%10
		inverso <- inverso*10 + res
		a <- trunc(a/10)
	FinMientras	
Fin Funcion


Algoritmo CAPIC�A
	Definir n Como Entero
	
	Escribir "Programa que indica si un n�mero es capic�a o no."
	Escribir "Ingrese un n�mero: "
	Leer n
	
	Si n = obtener_inverso(n)
		Escribir "El n�mero ",n," es capic�a."
	SiNo
		Escribir "El n�mero ",n," NO es capic�a."
	FinSi
FinAlgoritmo