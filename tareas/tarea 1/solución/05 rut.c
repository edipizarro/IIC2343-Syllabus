#include<stdio.h>
#include<string.h>


int main() {
    char rut[256];
    int c = 0;
    int suma = 0;
    size_t len;
    printf("Indica un rut: ");
    scanf("%s", rut);
    len = strlen(rut);

    for (int i = len - 1; i >= 0; i--) {
        if (rut[i] - '0' >= 0 && rut[i] - '0' < 10) {
            suma += (rut[i] - '0') * (c + 2);
            c++;
            c %= 6;
        }
    }
    suma %= 11;
    suma = 11 - suma;
    if (suma == 11) {
        suma = 0;
    }
    
    if (suma == 10) {
        printf("Verificador: %c\n", 'k');
    } else {
        printf("Verificador: %c\n", suma + '0');
    }

    return 0;
}


