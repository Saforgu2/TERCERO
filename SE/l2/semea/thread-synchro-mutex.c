#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

// Shared synchronization primitives
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

// State variable: 0 = Ping's turn, 1 = Pong's turn
int turn = 0;

void *thread_ping(void *arg) {
    for (int i = 0; i < 5; i++) {
        pthread_mutex_lock(&lock);

        // Wait while it is not Ping's turn
        while (turn != 0) {
            pthread_cond_wait(&cond, &lock);
        }

        printf("Ping \n");
        sleep(1);

        // Hand over the turn to Pong and notify
        turn = 1;
        pthread_cond_signal(&cond);

        pthread_mutex_unlock(&lock);
    }
    return NULL;
}

void *thread_pong(void *arg) {
    for (int i = 0; i < 5; i++) {
        pthread_mutex_lock(&lock);

        // Wait while it is not Pong's turn
        while (turn != 1) {
            pthread_cond_wait(&cond, &lock);
        }

        printf("\t\tpong\n");
        sleep(1);

        // Hand over the turn to Ping and notify
        turn = 0;
        pthread_cond_signal(&cond);

        pthread_mutex_unlock(&lock);
    }
    return NULL;
}

int main() {
    pthread_t t1, t2;

    pthread_create(&t1, NULL, thread_ping, NULL);
    pthread_create(&t2, NULL, thread_pong, NULL);

    pthread_join(t1, NULL);
    pthread_join(t2, NULL);

    // Clean up synchronization resources
    pthread_mutex_destroy(&lock);
    pthread_cond_destroy(&cond);

    return 0;
}
