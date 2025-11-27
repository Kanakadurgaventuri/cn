#include <stdio.h>
int main() {
    int n, i, ack;
    printf("Enter number of frames: ");
    scanf("%d", &n);
    for (i = 1; i <= n; i++) {
        printf("\nSending frame %d...", i);
        printf("\nWaiting for ACK...");
        printf("\nEnter 1 for ACK received or 0 for lost: ");
        scanf("%d", &ack);
        if (ack)
            printf("Frame %d acknowledged.\n", i);
        else {
            printf("ACK lost! Resending frame %d...\n", i);
            i--; 
        }
    }
    printf("\nAll frames sent successfully.\n");
    return 0;
}
