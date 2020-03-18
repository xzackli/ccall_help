#include "sht.h"

int sht(double** origin, dcmplx** target, 
        int array_size, int num_components) {
    // copy origin elements to target for each component
    for (int i=0;i<(int)(num_components);++i) {
        for (int j=0;j<(int)(array_size);++j) {
            (target[i])[j] = (origin[i])[j];
        }
    }
    return 1;
}
