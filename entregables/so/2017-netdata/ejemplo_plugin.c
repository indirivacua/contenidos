#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]){
    // netdata invoca al plugin con un argumento: el tiempo entre cada
    // actualización en segundos
    int update_every = strtol(argv[1], NULL, 10);


    // Cada CHART es un gráfico, el formato con puntos es del estilo. El
    // formato es type.id que debe ser un string único. Por defecto se usará
    // type como como nombre de la sección donde se mostrará el gráfico.
    printf("CHART pruebas_en_c.so '' '' partes\n");
    // Cada DIMENSION es una curva en el gráfico
    printf("DIMENSION random1\n");
    printf("DIMENSION random2 nombre_alternativo\n");

    // Se pueden especificar múltiples CHARTs con sus DIMENSIONs
    printf("CHART pruebas_en_c.so_otro_grafico '' '' litros '' '' stacked\n");
    printf("DIMENSION random1\n");
    printf("DIMENSION random2 nombre_alternativo\n");

    while (1){
        // Para cada CHART va un conjunto de datos entre BEGIN y END
        printf("BEGIN pruebas_en_c.so\n");
        printf("SET random1 = %d\n", rand() % 100);
        printf("SET random2 = %d\n", rand() % 100);
        printf("END\n");

        printf("BEGIN pruebas_en_c.so_otro_grafico\n");
        printf("SET random1 = %d\n", rand() % 100);
        printf("SET random2 = %d\n", rand() % 100);
        printf("END\n");

        // Forzamos a que lo impreso se transfiera del buffer usado por libc a
        // stdout antes del sleep().
        fflush(stdout);

        // Demoramos la ejecución del proceso
        sleep(update_every);
    }

    return 0;
}
