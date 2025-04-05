Algoritmo adivinador
	
	//empezamos definiendo nuestras variables.
	Definir intentos, num_secreto, num_ingresado como entero;
	
	//Les damos un valor
	intentos = 10
	num_secreto = azar(100) + 1
	
	//Estructuramos el bloque de codigo principal.
	Repetir
		
		//le mostramos al usuario lo que debe hacer.
		Escribir Sin Saltar "Adivine el numero (de 1 a 100): "
		Leer num_ingresado;
		
		//Introducimos los puntos de decision.
		//si el numero ingresado por el usuario es distinto al secreto.
		si num_ingresado <> num_secreto y intentos>1 Entonces
			
			//si el numero del usuario es menor que el secreto.
			si num_secreto > num_ingresado Entonces
				Limpiar Pantalla
				Escribir "muy bajo";
				intentos = intentos - 1
				Escribir "le quedan " + ConvertirATexto(intentos) + " intentos";
				
			//si el numero del usuario es mayor que el secreto.
			Sino 
				Limpiar Pantalla
				Escribir "muy alto"
				intentos = intentos- 1
				Escribir "le quedan " + ConvertirATexto(intentos) + " intentos";
			finSi
		SiNo
			
			//si el numero introducido por el usuario es igual al secreto.
			si num_secreto = num_ingresado Entonces
				Limpiar Pantalla
				Escribir "Exacto! Usted adivino en " ConvertirATexto(11- intentos) + " intentos"
				
			//si al usuario se le acabaron los intentos.
			SiNo
				Escribir "el numero era: " + ConvertirATexto(num_secreto)
				num_ingresado = num_secreto
			FinSi
		FinSi
	Mientras Que num_ingresado <> num_secreto
	
FinAlgoritmo
