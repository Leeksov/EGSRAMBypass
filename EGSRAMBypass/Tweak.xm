#include <substrate.h>
#include <sys/sysctl.h>
#include <string.h>
#include <stdint.h>

static int (*orig_sysctlbyname)(const char *name, void *oldp, size_t *oldlenp, void *newp, size_t newlen);
int my_sysctlbyname(const char *name, void *oldp, size_t *oldlenp, void *newp, size_t newlen) {
    if (name != NULL && strcmp(name, "hw.memsize") == 0) {
        if (oldp != NULL && oldlenp != NULL && *oldlenp >= sizeof(uint64_t)) {
            uint64_t spoofedMemorySize = 4294967296;
            memcpy(oldp, &spoofedMemorySize, sizeof(spoofedMemorySize));
            *oldlenp = sizeof(spoofedMemorySize);
            return 0;
        }
        if (oldp != NULL && oldlenp != NULL) {
            *oldlenp = sizeof(uint64_t);
        }
        return -1;
    }
    return orig_sysctlbyname(name, oldp, oldlenp, newp, newlen);
}

__attribute__((constructor)) static void tweak_init() {
__attribute__
    MSHookFunction((void *)sysctlbyname, (void *)my_sysctlbyname, (void **)&orig_sysctlbyname);
}