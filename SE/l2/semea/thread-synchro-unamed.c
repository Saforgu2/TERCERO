// Example of use of POSIX unnamed semaphores
#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <unistd.h>

sem_t sem_ping, sem_pong;

void *thread_ping(void *arg) {
    int i;
    for (i = 0; i < 5; i++) {
        sem_wait(&sem_ping);
        printf("Ping \n");
        sleep(2);
        sem_post(&sem_pong);
    }
    return NULL;
}

void *thread_pong(void *arg) {
    int i;
    for (i = 0; i < 5; i++) {
        sem_wait(&sem_pong);
        printf("\t\tpong\n");
        sleep(2);
        sem_post(&sem_ping);
    }
    return NULL;
}

int main() {
    sem_init(&sem_ping, 0, 1);
    sem_init(&sem_pong, 0, 0);
    pthread_t t1, t2;
    pthread_create(&t1, NULL, thread_ping, NULL);
    pthread_create(&t2, NULL, thread_pong, NULL);
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
    sem_destroy(&sem_ping);
    sem_destroy(&sem_pong);
    return 0;
}
