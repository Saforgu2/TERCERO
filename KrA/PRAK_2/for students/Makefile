# Compiler
CC = gcc

# Compiler flags (optional: -Wall for warnings)
CFLAGS = -Wall
LDFLAGS = -lm

# Output binary name
TARGETS = test_des_twodes MITM BFA  

# Shared source file
COMMON_SRCS = des.c

# Source files
BFA_SRCS = BFA.c
MITM_SRCS = MITM.c
TWODES_SRCS = test_des_twodes.c

# Default rule
all: $(TARGETS)

test_des_twodes: $(TWODES_SRCS)
	$(CC) $(CFLAGS) -o test_des_twodes $(TWODES_SRCS) $(COMMON_SRCS) $(LDFLAGS)

MITM: $(MITM_SRCS)
	$(CC) $(CFLAGS) -o MITM $(MITM_SRCS) $(COMMON_SRCS) $(LDFLAGS)

BFA: $(BFA_SRCS)
	$(CC) $(CFLAGS) -o BFA $(BFA_SRCS) $(COMMON_SRCS) $(LDFLAGS)

# Clean rule
clean:
	rm -f $(TARGETS)
