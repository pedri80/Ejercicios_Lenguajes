package main

import (
	"fmt"
	"strings"
)

// Escriba un programa que utilice métodos que reciban como parámetros dos cadenas de caracteres, y que
//muestre por pantalla un mensaje que indique si la primera de ellas es una subcadena de la segunda.
//Para dicho ejercicio, intente utilizar alguna función predefinida para dicho fin e intente implementar otra versión
//que NO utilice ninguna función predefinida. OBJETIVO: uso de librerías, métodos, paso de parámetros, retornos, ciclos.
func main() {
	cadena := "Las clases de lenguajes son los viernes en la mañana"
	subcadena := "clases"
	if comprobarConPre(subcadena, cadena) {
		fmt.Println("Es subcadena")
	} else {
		fmt.Println("No es subcadena")
	}
	if comprobarSinPre(subcadena, cadena) {
		fmt.Println("Es subcadena")
	} else {
		fmt.Println("No es subcadena")
	}
}

//func NombreDeLaFuncion(NombreParametro Tipo) TipoDeRetorno
func comprobarConPre(palabra string, oracion string) bool {
	//string.Contains(oracion, buscar)
	if strings.Contains(oracion, palabra) {
		return true
	} else {
		return false
	}
}

func comprobarSinPre(palabra string, oracion string) bool {
	indice := 0
	for i := 0; i < len(oracion); i++ {
		//Letra coincidente a la palabra
		if oracion[i] == palabra[indice] {
			//Verifica si es la palabra buscada
			indice++
			//Encuentra la palabra
			if indice == len(palabra) {
				return true
			}
			//Si no es la misma se reinicia
		} else {
			indice = 0
		}
	}
	return false
}
