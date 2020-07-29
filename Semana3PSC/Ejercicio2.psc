Algoritmo CalculoAreaPerimetro
	Definir figura Como Cadena
	Definir area, perimetro Como Real
	Escribir "Bienvenido a la calculadora de �reas y per�metros. Por favor elija la figura del siguiente men�"
	Escribir "Escriba 1 para seleccionar el cuadrado."
	Escribir "Escriba 2 para seleccionar el rombo."
	Escribir "Escriba 3 para seleccionar el trapecio."
	Escribir "Escriba 4 para seleccionar el paralelep�pedo."
	Escribir "Su opci�n:"
	Leer figura
	Segun figura Hacer
		"1":
			Definir lado como Real
			Escribir "Ingrese el lado del cuadrado:"
			Leer lado
			area <- lado^2
			perimetro <- 4 * lado
			Escribir "El cuadrado tiene un �rea de ",area," unidades cuadradas y un per�metro de ",perimetro," unidades"
		"2":
			Definir dMayor, dMenor Como Real
			Escribir "Ha elegido trabajar con un rombo."
			Escribir "Ingrese la medida de la diagonal mayor:"
			Leer dMayor
			Escribir "Ingrese la medida de la diagonal menor: "
			Leer dMenor
			area <- (dMayor*dMenor)/2
			perimetro <- 4 * (rc(dMayor^2 + dMenor^2) / 2)
			Escribir "El rombo tiene un �rea de ",area," unidades cuadradas y un per�metro de ",perimetro," unidades."
		"3":
			Definir  bMenor, bMayor, l1, l2, difBases, difLados Como Real
			Escribir "Ha elegido trabajar con un trapecio."
			Escribir "Ingrese la medida de la base mayor: "
			Leer bMayor
			Escribir  "Ingrese la medida de la base menor: "
			Leer bMenor
			Escribir  "Ingrese la medida del lado menor: "
			Leer l1
			Escribir "Ingrese la medida del lado mayor: "
			Leer l2
			Mientras l1 > l2 Hacer
				Escribir "El lado menor ingresado es m�s grande que el lado menor. Por favor ingr�selos en orden correcto."
				Escribir "Ingrese el lado menor: "
				Leer l1
				Escribir "Ingrese el lado mayor: "
				Leer l2
			Fin Mientras
			difBases <- abs(bMayor - bMenor)
			area <- abs(bMayor+bMenor)/2 * rc(abs(l2^2 - ((l2^2 - l1^2 + difBases^2) / (2 * difBases))^2))
			perimetro <- bMayor + bMenor + l1 + l2
			Escribir "El �rea del trapecio es ",area," unidades cuadradas, y el per�metro mide ",perimetro," unidades."
		"4":
			Definir largo, ancho, altura Como Real
			Escribir "Ha elegido trabajar con el paralelep�pedo."
			Escribir "Ingrese el largo: "
			Leer largo
			Escribir "Ingrese el ancho: "
			Leer ancho
			Escribir "Ingrese la altura: "
			Leer altura
			area <- 2 * (largo * ancho) + 4 * (largo * altura)
			perimetro <- 4 * (largo + ancho + altura)
			Escribir "El �rea total del paralelep�pedo es: ",area," unidades cuadradas, y el per�metro mide: ",perimetro," unidades."
		De Otro Modo:
			Escribir "La opci�n ingresada es inv�lida."
	Fin Segun
FinAlgoritmo