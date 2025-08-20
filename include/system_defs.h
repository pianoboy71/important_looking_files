#ifndef SYSTEM_DEFS_H
#define SYSTEM_DEFS_H

#define MAX_PROC 4096
#define TIMEOUT_MS 2500
#define DEFAULT_PORT 8081
#define LOG_PATH "/var/log/sysmon.log"

typedef struct {
  int pid;
  char name[64];
  long mem_usage;
} proc_info_t;

#endif // !SYSTEM_DEFS_H
