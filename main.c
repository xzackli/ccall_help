#include <stdlib.h>
#include <stdio.h>
#include "sht.h"

int main()
{
    int ncomp = 1;
    int array_size = 3;

    // initialize 2D arrays
    double **origin;
    origin = (double **) malloc(ncomp * sizeof(double *));
    origin[0] = (double *) malloc(ncomp * array_size * sizeof(double));

    dcmplx **target;
    target = (dcmplx **) malloc(ncomp * sizeof(dcmplx *));
    target[0] = (dcmplx *) malloc(ncomp * array_size * sizeof(dcmplx));
    
    // set some numbers in the origin array
    for (int i=0; i<array_size; ++i)
        (origin[0])[i] = i + 1.0;

    // call our function
    sht(origin, target, array_size, ncomp);

    // print target array
    for (int i=0; i<array_size; ++i)
        printf("%e + i%e\n", creal(target[0][i]), cimag(target[0][i]));
    printf("\n");
    return 0;
}