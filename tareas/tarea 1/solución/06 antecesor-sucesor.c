#include<stdio.h>


void print_bin(int num);

int main() {
    float num;
    printf("Indica un número: ");
    scanf("%f", &num);

    // Para poder trabajar con los floats con operaciones bitwise
    unsigned int bits = *(unsigned int*)(&num);
    int isucesor;
    int iantecesor;
    float sucesor;
    float antecesor;

    // La lógica del programa
    if (num > 0 && bits != 0) {
        isucesor = bits + 1;
        iantecesor = bits - 1;
    } else if (bits == 0) {
        isucesor = bits + 1;
        iantecesor = 0x80000000;
    } else if (bits == 0x80000000) {
        isucesor = 0;
        iantecesor = bits + 1;
    } else if (bits & 0x80000000) {
        isucesor = bits - 1;
        iantecesor = bits + 1;
    }

    // Los reinterpreto como floats antes de imprimirlos
    sucesor = *(float*)(&isucesor);
    antecesor = *(float*)(&iantecesor);

    printf("El número en binario es: ");
    print_bin(bits);
    printf("El antecesor es:         ");
    print_bin(iantecesor);
    printf("El sucesor es:           ");
    print_bin(isucesor);
    printf("número   : %.150f\n", num);
    printf("antecesor: %.150f\n", antecesor);
    printf("sucesor  : %.150f\n", sucesor);

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
