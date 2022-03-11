package main

import "fmt"

//Escriba un programa que inserte un elemento en una determinada posición de un arreglo mediante el uso de punteros
//Debe contemplar la perdida mediante sustitución del elemento existente en dicho arreglo para la posición seleccionada
//Una vez terminado el ejercicio, intente implementar otra variante del mismo que permita no perder el elemento sustituido,
//si no ampliar el tamaño original del arreglo. Mencione sus hallazgos mediante documentación interna
func main() {
	//Con perdida:
  arreglo := [9]int{34, 13, 45, 25, 93, 10, 5, 87, 22}
	fmt.Println("Arreglo original: ", arreglo)
	inserta := 8
	indice := 2
	//El puntero se declara de una forma similar a C
	punteroVal := &inserta
	punteroInd := &indice
	arreglo[*punteroInd] = *punteroVal
	fmt.Println("Arreglo modificado: ", arreglo)
	//Sin perdida:
	//Los slices son arreglos pero con un tamaño flexible a la hora de crearse
	slice := make([]int, 9)
	//make(tipo de variable, elementos existentes, tamaño máximo(no cuenta para el tamaño original, opcional)
	//Llenar arreglo
	slice[0] = 34
	slice[1] = 13
	slice[2] = 45
	slice[3] = 25
	slice[4] = 93
	slice[5] = 10
	slice[6] = 5
	slice[7] = 87
	slice[8] = 22
	fmt.Println("Slice original: ", slice)
	inserta2 := 67
	indice2 := 7
	punteroVal = &inserta2
	punteroInd = &indice2
	slice = append(slice, *punteroVal) //Extiende el arreglo
	for i := len(slice) - 2; i >= *punteroInd; i-- {
		//Forma para acomodar la lista sin perdida
		punteroVal = &slice[i]
		slice[i+1] = *punteroVal
		if i == *punteroInd {
			punteroVal = &inserta2
			slice[i] = *punteroVal
		}
	}
	fmt.Println("Slice modificado: ", slice)
=======
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
