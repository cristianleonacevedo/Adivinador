Algoritmo adivinador
	Definir intentos, num_secreto, num_ingresado como entero;
	intentos = 10
	num_secreto = azar(100) + 1
	Repetir
		Escribir Sin Saltar "Adivine el numero (de 1 a 100): "
		Leer num_ingresado;
		
		si num_ingresado <> num_secreto y intentos>1 Entonces
			si num_secreto > num_ingresado Entonces
				Limpiar Pantalla
				Escribir "muy bajo";
				intentos = intentos - 1
				Escribir "le quedan " + ConvertirATexto(intentos) + " intentos";
			Sino 
				Limpiar Pantalla
				Escribir "muy alto"
				intentos = intentos- 1
				Escribir "le quedan " + ConvertirATexto(intentos) + " intentos";
			finSi
			
		SiNo
			si num_secreto = num_ingresado Entonces
				Limpiar Pantalla
				Escribir "Exacto! Usted adivino en " ConvertirATexto(11- intentos) + " intentos"
			SiNo
				Escribir "el numero era: " + ConvertirATexto(num_secreto)
				num_ingresado = num_secreto
			FinSi
		FinSi
	Mientras Que num_ingresado <> num_secreto
	
FinAlgoritmo
