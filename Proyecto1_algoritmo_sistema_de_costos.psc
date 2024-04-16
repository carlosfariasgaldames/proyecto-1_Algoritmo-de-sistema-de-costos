Algoritmo CalcularCostoProducto
	
	
	//Declaracion de variables
	
	definir precioOriginal Como Real
	definir descuento Como Real
	definir iva Como Real
	definir cantidad Como Real
	definir peso Como Real
	definir costoEnvio Como Real
	definir costoFinal Como Real
	definir precioDescuento Como Real
	definir precioImpuestos Como Real
	
	//DEfinir destinos y costos de envio
	
	Dimensionar destinos[5,2]
	
	destinos[1,1] = "Arica"
	destinos[1,2] = "10"
	destinos[2,1] = "Chillan"
	destinos[2,2] = "14"
	destinos[3,1] = "Concepcion"
	destinos[3,2] = "18"
	destinos[4,1] = "Santiago"
	destinos[4,2] = "20"
	destinos[5,1] = "Talagante"
	destinos[5,2] = "10"
	
	
	// LEctura de datos
	
	Escribir "Ingrese el precio origianl del producto"
	Leer precioOriginal
	
	Escribir "Ingrese porcentaje de descuento ( 0 si no tiene):"
	Leer descuento
	
	Escribir "Ingrese porcentaje de impuestos ( 0 si no tiene):"
	Leer iva
	
	Escribir "Ingrese cantidad de productos:"
	Leer cantidad
	
	Escribir "Ingrese el peso del paquete:"
	Leer peso
	
	Escribir "Seleccione el destino del envio:"
	Para i = 1 hasta 5 con paso 1 Hacer
		Escribir  i, ".",destinos[i,1]
	FinPara
	Leer destino
	
	// Convertir el costo de en envío a numero
	
	cadenaCostoEnvio <- destinos[destino,2] //Almacenar el valor del arreglo en una variable de tipo de cadena
	costoEnvio <- convertirANumero(cadenaCostoEnvio) // convertir la cadena de caracteres a numero
	
	//Cálculos
	
	Si descuento > 0 Entonces
		precioDescuento = precioOriginal - (precioOriginal * (descuento/ 100))
	SiNo
		precioDescuento = precioOriginal
	FinSi
	
	
	precioImpuestos  = precioDescuento * (1 + (iva / 100))
	
	si cantidad > 1 Entonces
		precioCantidad = (precioImpuestos - (precioImpuestos * (5 / 100))) * cantidad
          SiNo
		precioCantidad = precioImpuestos
	FinSi

       costoEnvioTotal = costoEnvio + (peso * 5)
	
	costoFinal = precioCantidad +costoEnvioTotal
	
	// Mostrar resultados
	Escribir "COSTO FINAL DEL PRODUCTO"
	Escribir "Precio con descuento:$", PrecioDescuento
	Escribir "Precio con impuestos:$", precioImpuestos
	Escribir "Precio con descuento por cantidad:$", precioCantidad
	Escribir "Costo de envio:$", costoEnvioTotal
	Escribir "Costo Final:$", costoFinal
	
FinAlgoritmo
