// hello.c
#include <stdio.h>
#include <stdlib.h>

int main() {
    char *hello = malloc(30);
    if (hello == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }

    strncpy(hello, "Hello, ", 8);
    printf("%s\n", hello);
    puts("World!");

    return 0;
}
