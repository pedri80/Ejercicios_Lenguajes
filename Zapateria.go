package main

//Defina una estructura para un inventario de una tienda que vende zapatos.
//Cada zapato debe contar con la información de su modelo (marca), su precio y la talla del mismo que debe ir únicamente del 34 al 44.
//a)Escriba un programa que lea la información anterior para 10 zapatos del inventario y los almacene en un arreglo.
//b)Escriba una función que reciba de parámetro dicho arreglo y dos tallas: minimo y máximo, y
//que retorne un nuevo arreglo con los zapatos que concuerden con un el rango de tallas entre dichos mínimo y máximo.
//Documente la estrategia utilizada para crear un nuevo conjunto de elementos en tiempo de ejecución para ser retornado por la función.
import (
	"fmt"
)

//Zapato type: definir nuevo tipo
//		 struct: atributos del tipo
//Con esta estructura se puede guardar los datos que se tiene los zapatos
type Zapato struct {
	modelo string
	precio int
	talla  int
}

func main() {
	//zapato = new (Zapato) Declara puntero
	//(*zapato).atributo extrae de la dirección el nombre
	//zapato.atributo = tipo de atributo Le asigna un valor a lo que apunta el puntero
	//Tallas 34-44
	z0 := Zapato{"Nike", 15000, 35}
	z1 := Zapato{"Babolat", 25000, 34}
	z2 := Zapato{"Puma", 15500, 44}
	z3 := Zapato{"Adidas", 14500, 39}
	z4 := Zapato{"Adidas", 10000, 40}
	z5 := Zapato{"Nike", 14000, 37}
	z6 := Zapato{"Nike", 20000, 41}
	z7 := Zapato{"Babolat", 22000, 38}
	z8 := Zapato{"Nike", 18000, 36}
	z9 := Zapato{"Puma", 17500, 42}
	inventario := []Zapato{z0, z1, z2, z3, z4, z5, z6, z7, z8, z9}
	tallaMin := 40
	tallaMax := 4
	filtro := buscarTallas(inventario, tallaMin, tallaMax)
	fmt.Println("Resultados del filtro: ")
	//Recorrer el resultado de la funcion para mostrar de manera más cómoda los resultados
	for i := 0; i < len(filtro); i++ {
		fmt.Println("	Marca: ", filtro[i].modelo)
		fmt.Println("	Talla: ", filtro[i].talla)
		fmt.Println("	Precio: ", filtro[i].precio)
		fmt.Println("-------------------------------------")
	}
}
func buscarTallas(zapatos []Zapato, min int, max int) []Zapato {
	lista := make([]Zapato, 0, 10)
	//Recorrer lista de zapatos
	for i := 0; i < len(zapatos); i++ {
		//No sustenta intermedios sin usar un separador lógico
		if min <= zapatos[i].talla && zapatos[i].talla <= max {
			//Si está entre los parámetros de talla se añade a la lista
			lista = append(lista, zapatos[i])
		}
	}
	return lista
}
