#include<math.h>
#include<stdio.h>


int main() {

    int num_bits;

    long unsigned int years;
    long unsigned int days;
    long unsigned int hours;
    long unsigned int minutes;
    long unsigned int seconds;

    printf("¿Cuántos bits quieres?\n> ");
    // restricción: menor o igual a 64.
    // Eliminamos el test 64, el máximo en la práctica fue 48.

    scanf("%d", &num_bits);
    seconds = (long unsigned int)(pow(2, num_bits - 1) - 1);

    minutes = seconds / 60;
    seconds = seconds % 60;

    hours = minutes / 60;
    minutes = minutes % 60;

    days = hours / 24;
    hours = hours % 24;

    years = days / 365;
    days = days % 365;

    printf("%04ld/%02ld %02ld:%02ld:%02ld\n", years, days, hours, minutes, seconds);

    return 0;
}
