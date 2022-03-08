package main

//Escriba un programa que a partir de una cadena (sea predefinida o leida del usuario),
//busque mediante iteracviones en dicha cadena, una palabra cualquiera.
//Debe indicar si se encuentra o no dicha palabra.
import "fmt"

func main() {
	cadenaO := "Clases lunes, miercoles y viernes"
	palabra := "lunes"
	indice := 0
	encontrado := false
	//Recorre cadenaO
	for i := 0; i < len(cadenaO); i++ {
		//Letra coincidente a la palabra
		if cadenaO[i] == palabra[indice] {
			indice++
			if indice == len(palabra) {
				encontrado = true
				break
			}
		} else {
			indice = 0
		}
	}
	if encontrado {
		fmt.Println("La palabra esta")
	} else {
		fmt.Println("La palabra no esta")
	}
}
