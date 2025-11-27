#include <stdio.h>
int main() {
    int d[100], n, i, s = 0, c, r = 0;
    printf("Enter length: ");
    scanf("%d", &n);
    printf("Enter data: ");
    for (i = 0; i < n; i++) {
        scanf("%d", &d[i]);
        s += d[i];
    }
    c = ~s;
    printf("Checksum: %d\n", c);
    for (i = 0; i < n; i++)
        r += d[i];
    r += c;
    if (~r == 0)
        printf("No error\n");
    else
        printf("Error detected\n");
}
