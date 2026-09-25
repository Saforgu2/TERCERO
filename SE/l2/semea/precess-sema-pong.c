#include <fcntl.h>
#include <semaphore.h>
#include <stdio.h>
#include <unistd.h>

#define SEM_SYNCHRO "/sem_synchro"
#define SEM_PING "/sem_ping"
#define SEM_PONG "/sem_pong"

int main(void) {
    sem_t *sem_synchro = sem_open(SEM_SYNCHRO, 0);
    sem_t *sem_ping = sem_open(SEM_PING, 0);
    sem_t *sem_pong = sem_open(SEM_PONG, 0);
    if ((sem_ping == SEM_FAILED) || (sem_pong == SEM_FAILED)) {
        perror("sem_open");
        return 1;
    }

    sleep(3);
    /* printf("\t\tPong is already running...\n"); */
    sem_post(sem_synchro);

    for (int i = 0; i < 5; i++) {
        sem_wait(sem_ping);
        printf("\t\tPong\n");
        sleep(1);
        sem_post(sem_pong);
    }

    // Cierra el descriptor en este proceso
    // sem_close(sem_synchro);
    sem_close(sem_ping);
    sem_close(sem_pong);
    return 0;
}
