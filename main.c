#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ADTStack.h"

typedef struct intl_passenger {
    char given_name[MAX_LENGTH];
    char surname[MAX_LENGTH];
    char passport_id[MAX_LENGTH];
    char country[MAX_LENGTH];
} p_psn;


/* The generic function to init the Stack */

/* Deep copy for the element*/
void *cpy_elm(void *data) {

    p_psn *elm = (p_psn *) (struct intl_passenger *) malloc(sizeof(struct intl_passenger));
    strcpy(elm->given_name, ((p_psn *) data)->given_name);
    strcpy(elm->surname, ((p_psn *) data)->surname);
    strcpy(elm->passport_id, ((p_psn *) data)->passport_id);
    strcpy(elm->country, ((p_psn *) data)->country);
    return elm;
}
/* Free each field in the element(passenger) */
void free_elm(void *elm) {
    p_psn *psn = elm;
    free(psn->country);
    free(psn->passport_id);
    free(psn->given_name);
    free(psn->surname);
    free(elm);
}
/* create and return a string that contains some details on the passenger */
char *label_elm(void *psn) {
    p_psn *new_psn = psn;
    unsigned long size_given_name = strlen(new_psn->given_name);
    unsigned long size_passport_id = strlen(new_psn->passport_id);
    unsigned long size_surname = strlen(new_psn->surname);
    unsigned long sum = size_given_name + size_passport_id + size_surname + 3;
    char *str_return = (char *) malloc(sum * sizeof(char));
    strncat(str_return, new_psn->given_name, sizeof(size_given_name));
    strncat(str_return, " ", sizeof(char));
    strncat(str_return, new_psn->surname, sizeof(size_surname));
    strncat(str_return, " ", sizeof(char));
    strncat(str_return, new_psn->passport_id, sizeof(size_given_name));
    strncat(str_return, "\n", sizeof(char));
    printf("%s",str_return);
    return str_return;

}
/* split each line to 4 field and return passenger */
void *input_to_psn(char *string, struct Stack_t *stack) {
    p_psn *passenger = (p_psn *) (struct intl_passenger *) malloc(sizeof(struct intl_passenger));
    int x = 0;
    char *token = strtok(string, " ");
    strcpy(passenger->given_name, token);
    x++;
    while (token != NULL) {
        token = strtok(NULL, " ");
        if (x == 1) {
            strcpy(passenger->surname, token);
        }
        if (x == 2) {
            strcpy(passenger->passport_id, token);
        }
        if (x == 3) {
            strcpy(passenger->country, token);
        }
        x++;
    }
//    push(stack, passenger);
//    printf("%s ", passenger->given_name);
//    printf("%s ", passenger->surname);
//    printf("%s ", passenger->passport_id);
//    printf("%s\n", passenger->country);
    label_elm(passenger);
    return passenger;

}
/* read the file and spilt to line , each line contains the details of the passenger */
void read_from_file(char *file_name, struct Stack_t *stack) {
    FILE *file = NULL;
    file = fopen(file_name, "r");

    struct p_psn *psn;
    if (file == NULL) {
        printf("open file Failed");
        exit(1);
    }
    char *line = NULL;
    size_t s;

    while (getline(&line, &s, file) != EOF) {
        input_to_psn(line, stack);
//        printf("%s", line);

    }

    fclose(file);

}

int main() {
//    Stack stack = init(100, cpy_elm, free_elm, label_elm);
    Stack stack ;
    read_from_file("international_passengers.dat", stack);
    return 0;
}
/*
char given_names[MAX_LENGTH];
char passport_id[MAX_LENGTH];
char surname[MAX_LENGTH];
char country[MAX_LENGTH];
 */