#include <stdio.h>

int main() {
    char string[81];
    char remover[81];
    char result[81];

    fgets(string, 81, stdin);
    fgets(remover, 81, stdin);

    int r = 0; // �ndice do result

    for (int i = 0; string[i] != '\0'; i++) {
        int found = 0;

        for (int k = 0; remover[k] != '\0'; k++) {
            if (string[i] == remover[k]) {
                found = 1;
                break;
            }
        }

        if (!found) {
            result[r++] = string[i];
        }
    }

    result[r] = '\0';

    printf("%s", result);
    return 0;
}
