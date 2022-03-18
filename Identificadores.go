package main

import (
	"fmt"
)

type Indentificador struct {
	nombre       string
	id           [5]int
	coincidencia int
}

//Imprimir los nombres de las tres personas más similares a la identificación de muestra que se envíe de parámetro.
//Función que realice el cálculo de los más parecidos a la muestra y debe devolver los nombres de las tres personas.
//La forma en que se represente la "identificación" se sugiere un arreglo de enteros para ser concordante con la explicación hecha en clase.
func main() {
	id0 := [5]int{2, 2, 2, 2, 2}
	id1 := [5]int{2, 2, 5, 8, 1}
	id2 := [5]int{2, 2, 0, 8, 1}
	id3 := [5]int{3, 9, 7, 5, 3}
	id4 := [5]int{9, 6, 4, 4, 7}
	p0 := Indentificador{"Juan", id0, 0}
	p1 := Indentificador{"Felipe", id1, 0}
	p2 := Indentificador{"Adriana", id2, 0}
	p3 := Indentificador{"Mariana", id3, 0}
	p4 := Indentificador{"Ariana", id4, 0}
	personas := []Indentificador{p0, p1, p2, p3, p4}
	idSondeo := 22591
	top3 := similitudes(personas, idSondeo)
	fmt.Println("ID ingresada: ", idSondeo)
	fmt.Println("Top 3 coincidencias:")
	for i := 0; i < len(top3); i++ {
		fmt.Println("\tTop", i+1, ": ", top3[i].nombre, " ", top3[i].id, " con ", top3[i].coincidencia, " coincidencias")
	}

}

//Se debe haber concordancia entre los tamaños de los arreglos para las funciones
func similitudes(personas []Indentificador, id int) [3]Indentificador {
	topID := [3]Indentificador{}
	//Recorre la lista personas
	for i := 0; i < len(personas); i++ {
		comparaID := id
		punteroPe := &personas[i]
		//Recorre el ID y compara con la del parámetro
		for x := len(punteroPe.id) - 1; x >= 0; x-- {
			//El proceso de división particular va de derecha a izquierda por lo que se ajusta
			punteroID := &punteroPe.id[x]
			if *punteroID == comparaID%10 {
				punteroPe.coincidencia++
			}
			//Reduce el temp para que funcione conforme salga
			comparaID /= 10
		}
	}
	//Encuentra el top 3
	//Manera más óptima para encontrar el top 3
	top1 := Indentificador{coincidencia: 0}
	top2 := Indentificador{coincidencia: 0}
	top3 := Indentificador{coincidencia: 0}
	for i := 0; i < len(personas); i++ {
		punteroPe := &personas[i]
		if top1.coincidencia < punteroPe.coincidencia {
			top3 = top2
			top2 = top1
			top1 = *punteroPe
		} else {
			if top2.coincidencia < punteroPe.coincidencia {
				top3 = top2
				top2 = *punteroPe
			} else {
				if top3.coincidencia < punteroPe.coincidencia {
					top3 = *punteroPe
				}
			}
		}
	}
	topID[0] = top1
	topID[1] = top2
	topID[2] = top3
	return topID
}
