#include <fcntl.h>
#include <semaphore.h>
#include <stdio.h>
#include <unistd.h>

#define SEM_SYNCHRO "/sem_synchro"
#define SEM_PING "/sem_ping"
#define SEM_PONG "/sem_pong"

int main(void) {
    // First: ping creates semaphores
    // O_CREAT: creates if does not exist. Initial value = 0
    sem_t *sem_synchro = sem_open(SEM_SYNCHRO, O_CREAT, 0644, 0);
    sem_t *sem_ping = sem_open(SEM_PING, O_CREAT, 0644, 0);
    sem_t *sem_pong = sem_open(SEM_PONG, O_CREAT, 0644, 1);
    if ((sem_ping == SEM_FAILED) || (sem_pong == SEM_FAILED)) {
        perror("sem_open");
        return 1;
    }

    // printf("\n\nWaiting for pong to start\n");
    sem_wait(sem_synchro);

    for (int i = 0; i < 5; i++) {
        sem_wait(sem_pong);
        printf("\nPing\n");
        sleep(1);
        sem_post(sem_ping);
    }

    // Cierra el descriptor en este proceso
    sem_close(sem_synchro);
    sem_unlink(SEM_SYNCHRO);
    sem_close(sem_ping);
    sem_unlink(SEM_PING);
    sem_close(sem_pong);
    sem_unlink(SEM_PONG);
    return 0;
}
