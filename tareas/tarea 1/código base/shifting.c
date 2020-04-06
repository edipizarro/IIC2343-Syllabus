#include<stdio.h>

void print_bin(int num);

int main() {
    int num;
    int num_shl;
    int num_shr;
    scanf("%d", &num);

    print_bin(num_shl);
    print_bin(num_shr);
    return 0;
}
