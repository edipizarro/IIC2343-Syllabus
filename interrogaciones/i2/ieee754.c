#include<stdio.h>
#include<math.h>

int main() {
    float x = (float)pow(2, 31);  // hago que me salga como float
    float y = x + 1.0;  // forzamos a que el resultado de la operación
                        // sea un float.
                        // Si no lo hacemos, sería un double y el
                        // ejemplo no funcionaría.
    
    if (x == y)         // Comparamos los dos valores
        printf("SON IGUALES! :o\n");
    else
        printf("SON DISTINTOS! :)\n");
    return 0;
}

