#include <stdio.h>
#include <stdlib.h>

int maximum(int a, int b);                                         // Declaramos nuestra funcion


int main() {
    printf("Ingrese número: ");
    unsigned char red, green, blue;
    unsigned char cyan, magenta, yellow;
    unsigned int color_n;
    unsigned int mask_blue = 31;                                   // Se genera una mascara de la forma 0000000000011111
    unsigned int mask_green = 63 << 5;                             // Se genera una mascara de la forma 0000011111100000
    unsigned int mask_red = 31 << 11;                              // Se genera una mascara de la forma 1111100000000000
    scanf("%u", &color_n);

    // A continuacion se aplican las mascaras binarias sobre el valor que obtenemos como input
    // De esta forma sacamos cada color por separado
    red = ((color_n & mask_red) >> 11) * 255 / 31; 
    green = ((color_n & mask_green) >> 5) * 255 / 63;
    blue = (color_n & mask_blue) * 255 / 31;
    printf("En 8 bits => R: %u G: %u B: %u\n", red, green, blue);

    // Aplicamos las formulas para CMYK
    unsigned char k = 255 - maximum(maximum(red, green), blue);
    if (k == 255) {                                                 // Caso especial de conversion:
        cyan = 0;                                                  // si no se toma en cuenta habrán problemas de división por 0
        magenta = 0;
        yellow = 0;
    }
    else{
        cyan = 255 * (255 - red - k) / (255 - k);
        magenta = 255 * (255 - green - k) / (255 - k);
        yellow = 255 * (255 - blue - k) / (255 - k);
    }
    printf("En 8 bits => C: %u M: %u Y: %u K: %u\n", cyan, magenta, yellow, k);

    // Ahora debemos pasar nuestros valores de CMYK a valores en 4 bits y guardarlos juntos para mostrar un numero.
    unsigned int cmyk_number = 0;
    cyan = cyan * 15 / 255;
    magenta = magenta * 15 / 255;
    yellow = yellow * 15 / 255;
    k = k * 15 / 255;
    printf("En 4 bits => C: %u M: %u Y: %u K: %u\n", cyan, magenta, yellow, k);
    cmyk_number |= (cyan << 12);
    cmyk_number |= (magenta << 8);
    cmyk_number |= (yellow << 4);
    cmyk_number |= k;
    printf("CMYK: %u\n", cmyk_number);
    return 0;
}

int maximum(int a, int b) {                                        // Formula para calcular el máximo entre dos enteros
	if(a > b)
		return a;
	else
		return b;		
}
