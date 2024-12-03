#include <stdio.h>
#include <stdint.h>
#include <assert.h>
#include <stdlib.h>   // For rand() and srand()
#include <time.h>     // For time()

// Include the function declaration from bwa.h
#include "bwa.h"

// Define the number of test cases
#define NUM_TESTS 10

int main() {
    // Seed the random number generator
    srand(time(NULL));

    for (int i = 0; i < NUM_TESTS; ++i) {
        // Generate random parameters for the test
        int8_t mat[25];
        for (int j = 0; j < 25; ++j) {
            mat[j] = rand() % 256; // Generate random value between 0 and 255
        }
        int o_del = 1+rand() % 100;   // Example: Generate random value between 0 and 9
        int e_del = 1+rand() % 100;   // Example: Generate random value between 0 and 9
        int o_ins = 1+rand() % 100;   // Example: Generate random value between 0 and 9
        int e_ins = 1+rand() % 100;   // Example: Generate random value between 0 and 9
        int w_ = 1+ rand() % 100;      // Example: Generate random value between 0 and 9
        int64_t l_pac = 1 + rand() % 1000;   // Example: Generate random value between 0 and 999
        int l_query = 1+rand() % 100;    // Example: Generate random value between 0 and 99
        int64_t rb = 1+rand() % 100;  // Example: Generate random value between 0 and 99
        // int64_t re = rand() % 10;  // Example: Generate random value between 0 and 99
        int64_t re = rand() % (l_pac << 1);

        // int64_t rb = rand() % 100;  // Example: Generate random value between 0 and 9
        // int64_t re = 200 + rand() % (1000 - 200 + 1);  // Generate random value between 200 and 1000
        int score = 1+rand() % 10;
        int n_cigar = 1+rand() % 10;
        int NM = 1+rand() % 10;

        uint8_t pac[l_pac];
        for (int j = 0; j < l_pac; ++j) {
            pac[j] = rand() % 256; // Generate random value between 0 and 255
        }

        // Generate random values for query array
        uint8_t query[l_query];
        for (int j = 0; j < l_query; ++j) {
            query[j] = rand() % 256; // Generate random value between 0 and 255
        }



        // Call the function
        uint32_t *cigar = bwa_gen_cigar2(mat, o_del, e_del, o_ins, e_ins, w_, l_pac, pac, l_query, query, rb, re, &score, &n_cigar, &NM);

        // // Add your assertions here to check the correctness of the function output
        // assert(cigar != NULL);  // Check if cigar is not NULL, indicating successful allocation

        // // Clean up memory if necessary
        // free(cigar);

        // printf("Test %d passed!\n", i + 1);
    }

    return 0;
}
