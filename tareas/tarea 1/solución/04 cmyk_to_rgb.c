#include <stdio.h>
#include <stdlib.h>

int maximum(int a, int b);                                         // Declaramos nuestra funcion
int maximum(int a, int b)                                          // Formula para calcular el máximo entre dos enteros
{
	if(a > b)
		return a;
	else
		return b;		
}

int main() {
    printf("Ingrese número: ");
    unsigned char red, green, blue;
    unsigned char cyan, magenta, yellow, k;
    unsigned int color_n;
    unsigned int mask_cyan = 61440;                             // Se genera una mascara de la forma 1111000000000000
    unsigned int mask_magenta = 3840;                           // Se genera una mascara de la forma 0000111100000000
    unsigned int mask_yellow = 240;                             // Se genera una mascara de la forma 0000000011110000
    unsigned int mask_k = 15;                                   // Se genera una mascara de la forma 0000000000001111
    scanf("%u", &color_n);

    // Aplicamos las mascaras binarias para obtener los colores en formato de 4 bits
    // y procedemos a escalarlos a 8 bits.
    cyan = ((color_n & mask_cyan) >> 12) * 255 / 15;
    magenta = ((color_n & mask_magenta) >> 8) * 255 / 15;
    yellow = ((color_n & mask_yellow) >> 4) * 255 / 15;
    k = (color_n & mask_k) * 255 / 15;
    printf("C: %u M: %u Y: %u K: %u\n", cyan, magenta, yellow, k);
    
    // Aplicamos las formulas para convertir a RGB
    red = (255 - cyan)*(255- k) / 255;
    green = (255 - magenta)*(255- k) / 255;
    blue = (255 - yellow)*(255- k) / 255;
    printf("R: %u G: %u B: %u\n", red, green, blue);

    // Ahora debemos pasar nuestros valores de RGB a valores en 5 - 6 - 5 bits y guardarlos juntos para mostrar un numero.
    unsigned int rgb_number = 0;
    red = red * 31 / 255;
    green = green * 63 / 255;
    blue = blue * 31 / 255;
    rgb_number |= (red << 11);
    rgb_number |= (green << 5);
    rgb_number |= blue;
    printf("RGB: %u\n", rgb_number);
    return 0;
}
