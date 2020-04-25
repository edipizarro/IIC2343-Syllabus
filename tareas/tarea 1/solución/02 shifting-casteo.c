#include<stdio.h>

void print_bin(int num);

int main() {
    int num;
    int num_shr;
    int num_shl;
    printf("Ingresa un número entero: ");
    scanf("%d", &num);
    printf("Vamos a calcular el resultado.\n\n");
    // casteo a unsigned y soy feliz
    unsigned int unum = (unsigned int)num;
    num_shl = (int)(unum << 1);
    num_shr = (int)(unum >> 1);
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
