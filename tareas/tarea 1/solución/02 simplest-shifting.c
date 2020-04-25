#include<stdio.h>

void bin_print(unsigned int);

int main() {
    unsigned int num;  // si lo recibo como unsigned ya
                       // funciona, si total, los bits
                       // son los mismos
    scanf("%u", &num);
    
    bin_print(num << 1);
    bin_print(num >> 1);
    return 0;
}

void bin_print(unsigned int num) {
    unsigned int mask = 0x80000000;
    for (int i=0; i < 32; i++) {
        printf("%u", mask & num ? 1 : 0);
        // operador ternario de C
        // https://es.wikipedia.org/wiki/Operador_ternario
        mask >>= 1;
    }
    printf("\n");
}
