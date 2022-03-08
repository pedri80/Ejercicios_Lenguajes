package main

import "fmt"

//Escriba un programa que inserte un elemento en una determinada posición de un arreglo mediante el uso de punteros
//Debe contemplar la perdida mediante sustitución del elemento existente en dicho arreglo para la posición seleccionada
//Una vez terminado el ejercicio, intente implementar otra variante del mismo que permita no perder el elemento sustituido,
//si no ampliar el tamaño original del arreglo. Mencione sus hallazgos mediante documentación interna
func main() {
	//Con perdida:
	arreglo := [10]int{34, 13, 45, 25, 93, 10, 5, 87, 22}
	fmt.Println("Arreglo original: ", arreglo)
	inserta := 8
	ind := 2
	//El puntero se declara de una forma similar a C
	punteroVal := &inserta
	punteroInd := &ind
	arreglo[*punteroInd] = *punteroVal
	fmt.Println("Arreglo original: ", arreglo)
	//Sin perdida:
	arreglo2 := [10]int{34, 13, 45, 25, 93, 10, 5, 87, 22}
	inserta2 := 67
	ind2 := 7
	
}
