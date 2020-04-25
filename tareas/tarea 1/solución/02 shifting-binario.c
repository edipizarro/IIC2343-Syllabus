#include<stdio.h>

void print_bin(int num);

int main() {
    int num;
    int num_shr;
    int num_shl;
    printf("Ingresa un número entero: ");
    scanf("%d", &num);
    printf("Vamos a calcular el resultado.\n\n");
    // opero con los binarios
    num_shl = num << 1;
    num_shr = num >> 1;
    if (num < 0) {
        num_shr = num_shr & 0x7FFFFFFF; // es un cero seguido de 31 unos.
    }
    printf("Shift left: ");
    print_bin(num_shl);
    printf("Shift right: ");
    print_bin(num_shr);
    return 0;
}

void print_bin(int num) {
    int base = 1;
    for (int i = 0; i < 32; i++) {
        if ((base << i) & num) {
            printf("1");
        } else {
            printf("0");
        }
    }
    printf("\n");
}
