#include <stdio.h>  /* Standard I/O functions */
#include <stdlib.h> /* Prototypes of commonly used library functions, */
                    /*  plus EXIT_SUCCESS and EXIT_FAILURE constants */
#include <errno.h>  /* Declares errno and defines error constants */
#include <pthread.h>
#include <string.h>
#include <unistd.h> /* Prototypes for many system calls */

#define LOOPS 100000
#define MAXTHREADS 10

struct thread_param_t {
	int id;
	int iteractions_thread;
};

// Shared variable that will be concurrently modified
static int shared_variable = 0;

static void *threadAdd(void *param) {  // Harien funtzioen parametroak void
                                       // moduan erazaguta egon behar dute
	//
	struct thread_param_t *thread_param = (struct thread_param_t *)param;

	printf("\tThread %d: starting...\n", thread_param->id);

	for (int i = 0; i < thread_param->iteractions_thread; i++) {
		shared_variable++;
	}
	printf("\t\tThread %d: finished\n", thread_param->id);
	free(thread_param);
	return NULL;
}

void launchThreads(int numberThreads) {
	pthread_t threads[MAXTHREADS];
	int iteractions_thread = LOOPS / numberThreads;
	shared_variable = 0;

	printf("Threads: %d - Iteractions/Thread: %d\n", numberThreads, iteractions_thread);

	for (int i = 0; i < numberThreads; i++) {
		struct thread_param_t *thread_param = malloc(sizeof(*thread_param));
		if (!thread_param) {
			perror("malloc");
			exit(EXIT_FAILURE);
		}
		thread_param->id = i;
		thread_param->iteractions_thread = iteractions_thread;
		int ret = pthread_create(&threads[i], NULL, threadAdd, thread_param);
		if (ret != 0) {
			fprintf(stderr, "pthread_create error: %s\n", strerror(ret));
			free(thread_param);
		}
	}

	for (int i = 0; i < numberThreads; i++) {
		int ret = pthread_join(threads[i], NULL);
		if (ret != 0) {
			fprintf(stderr, "pthread_join error: %s\n", strerror(ret));
		}
	}
	printf("\n\tFinal shared_variable value= %d\n\n", shared_variable);
}

int main(void) {
	launchThreads(1);
	launchThreads(2);
	launchThreads(5);
	launchThreads(10);

	return EXIT_SUCCESS;
}
