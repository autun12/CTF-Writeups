#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>

#define M 16
#define N 1

uint8_t A[M][N];
uint8_t B[M][M];
uint8_t C[M][N];
char FLAG[128];

// Function Prototypes
void menu();
void load_flag();
void print_matrix(uint8_t *matrix, int rows, int cols);
void print_error();
void read_matrix(uint8_t *matrix, int rows, int cols);
void init_matrix(uint8_t *matrix, int rows, int cols);
void get_user_choice(int *choice);
void matvecmul(uint8_t *A, uint8_t *B, uint8_t *C, int m, int n, int p);

int main() {
    int choice = 0;

    load_flag();
    srand(time(NULL));

    init_matrix((uint8_t *)A, M, N);
    init_matrix((uint8_t *)B, M, M);
    init_matrix((uint8_t *)C, M, N);

    while (1) {
        get_user_choice(&choice);
        if (choice == 1) {
            print_matrix((uint8_t *)B, M, M);
        } else if (choice == 2) {
            read_matrix((uint8_t *)A, M, N);
            matvecmul((uint8_t *)B, (uint8_t *)A, (uint8_t *)C, M, M, N);
        } else if (choice == 3) {
            matvecmul((uint8_t *)B, (uint8_t *)C, (uint8_t *)A, M, M, N);
            print_matrix((uint8_t *)A, M, N);
        } else if (choice == 4) {
            break;
        } else {
            print_error();
        }
    }

    return 0;
}

// Load flag from file
void load_flag() {
    FILE *fp = fopen("FLAG.TXT", "r");
    if (fp == NULL) {
        perror("Unable to open flag file");
        exit(EXIT_FAILURE);
    }
    fgets(FLAG, sizeof(FLAG), fp);
    fclose(fp);
}

// Print the menu
void menu() {
    printf("MENU:\n");
    printf("1: PRINT TRANSFORM\n");
    printf("2: FORWARD PASS\n");
    printf("3: BACKWARD PASS\n");
    printf("4: EXIT\n");
    printf("> ");
}

// Prompt and get user's choice
void get_user_choice(int *choice) {
    menu();
    scanf("%d", choice);
}

// Print a matrix (row-major)
void print_matrix(uint8_t *matrix, int rows, int cols) {
    for (int j = 0; j < cols; j++) {
        for (int i = 0; i < rows; i++) {
            printf("%u\n", matrix[i * cols + j]);
        }
    }
}

// Print error message
void print_error() {
    printf("INVALID INPUT\n");
}

// Read matrix values from stdin
void read_matrix(uint8_t *matrix, int rows, int cols) {
    for (int j = 0; j < cols; j++) {
        for (int i = 0; i < rows; i++) {
            int val;
            scanf("%d", &val);
            matrix[i * cols + j] = (uint8_t)val;
        }
    }
}

// Initialize matrix with random bytes
void init_matrix(uint8_t *matrix, int rows, int cols) {
    for (int i = 0; i < rows * cols; i++) {
        matrix[i] = rand() % 256;
    }
}

// Matrix-vector multiplication: C = A x B
void matvecmul(uint8_t *A, uint8_t *B, uint8_t *C, int m, int n, int p) {
    // Zero the output matrix
    for (int i = 0; i < m * p; i++) {
        C[i] = 0;
    }

    // Matrix multiplication
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < p; j++) {
            for (int k = 0; k < n; k++) {
                C[i * p + j] += A[i * n + k] * B[k * p + j];
            }
        }
    }
}

// input = 1234567890987654
// 0x00007fffffffdef8│+0x0000: 0x0093be253364d183   ← $rsp
// 0x00007fffffffdf00│+0x0008: 0x90020213fc2730d3
// 0x00007fffffffdf08│+0x0010: 0x51d8cec092e4fa69
// 0x00007fffffffdf10│+0x0018: 0x90020213fc2730d3
// 0x00007fffffffdf18│+0x0020: 0x51d8cec092e4fa69
// 0x00007fffffffdf20│+0x0028: 0x0ee66a6c405ec23d
// 0x00007fffffffdf28│+0x0030: 0xae5df8987837fb60
// 0x00007fffffffdf30│+0x0038: 0xcedba7dead2e5251

// input = 1234567890987654
// 0x00007fffffffdef8│+0x0000: 0x008b84984011692f   ← $rsp
// 0x00007fffffffdf00│+0x0008: 0x90020213fc2730d3
// 0x00007fffffffdf08│+0x0010: 0x51d8cec092e4fa69
// 0x00007fffffffdf10│+0x0018: 0x90020213fc2730d3
// 0x00007fffffffdf18│+0x0020: 0x51d8cec092e4fa69
// 0x00007fffffffdf20│+0x0028: 0x0ee66a6c405ec23d
// 0x00007fffffffdf28│+0x0030: 0xae5df8987837fb60
// 0x00007fffffffdf30│+0x0038: 0xcedba7dead2e5251