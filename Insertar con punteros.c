#include <stdio.h>
#include <malloc.h>

int SIZE_ARRAY = 10;


void printArray(int *arreglo, int size){
    int* end_ptr = arreglo + size;
    while(arreglo < end_ptr){
        printf("%i ", *arreglo);
        arreglo++;
    }
    printf("\n");
}

void copyArray(int* sourcePointer, int* destinationPointer,int size){
    int* end_ptr = sourcePointer + size;
    while(sourcePointer < end_ptr){
        *destinationPointer = *sourcePointer;
        destinationPointer++;
        sourcePointer++;
    }
}
//Puntero de array, elemento, tamaño, posicion
int insert_array(int* source_ptr, int ele, int size, const int posicion) {
    source_ptr = realloc(source_ptr, (size + 1)* sizeof(int));//Modifica el tamaño asignado
    int* end_ptr = source_ptr + size;//Apunta final de arreglo
    int* puntoInser = source_ptr + posicion;//Apunta donde se inserta
    int* temp;
    // implementar ciclo para insertar en una posición específica que contemple mover todos los elementos posteriores... DEBE INCLUIR EL PARÁMETRO pos
    while(puntoInser < end_ptr){
        temp = end_ptr - 1;//Apunta a una posicion detrás del puntero
        *end_ptr = *temp;//Asigna el valor del contenido del puntero a temp
        end_ptr--;
    }
    *end_ptr = ele;
    return size + 1;
}
int main(){
    int arreglo[SIZE_ARRAY];
    int* arreglo2 = malloc(SIZE_ARRAY* sizeof(int));//Declaración de espacio de memoria, este si puede cambiar cuando se ejecuta
                    //Si salta error se hace casting
    arreglo[0] = 9;
    arreglo[1] = 8;
    arreglo[2] = 7;
    arreglo[3] = 6;
    arreglo[4] = 5;
    arreglo[5] = 4;
    arreglo[6] = 3;
    arreglo[7] = 2;
    arreglo[8] = 1;
    arreglo[9] = 0;
    //A diferencia de java, los cambios realizados por referencia no cambian el objeto, crea una copia
    //Son alterados si se modifica el puntero
    printArray(arreglo,SIZE_ARRAY);
    copyArray(arreglo, arreglo2, SIZE_ARRAY);
    printArray(arreglo2,SIZE_ARRAY);
    int newSize;
    newSize = insert_array(arreglo2, 100, SIZE_ARRAY, 6);
    printArray(arreglo2, newSize);
    //si después de ejecutar el código sale que salió un número diferente de 0, hay un error de punteros
}
