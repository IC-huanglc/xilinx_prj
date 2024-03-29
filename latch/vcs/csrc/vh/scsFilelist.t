#include "stdio.h"
#ifdef __cplusplus
extern "C" {
#endif
extern char at_least_one_object_file;
extern void *kernel_scs_file_ht_new(const void *, int);
extern int kernel_scs_file_ht_get(void *, const char *, int *);
extern int  strcmp(const char*, const char*);
  typedef struct {
    char* dFileName;
  } lPkgFileInfoStruct;

  typedef struct {
    char* dFileName;
    char* dRealFileName;
    long dFileOffset;
    unsigned long dFileSize;
    int dFileModTime;
    unsigned int simFlag;
  } lFileInfoStruct;

static int lNumOfScsFiles;
  static lFileInfoStruct lFInfoArr[] = {
  {"synopsys_sim.setup_0", "./synopsys_sim.setup", 76398, 94, 1710918749, 0},
  {"synopsys_sim.setup_1", "/home/ICer/xilinx_vcs_lib/synopsys_sim.setup", 76492, 31366, 1710300753, 0},
  {"synopsys_sim.setup_2", "/home/ICer/synopsys_sim.setup", 107858, 31366, 1710300752, 0},
  {"synopsys_sim.setup_3", "/home/synopsys/vcs-mx/O-2018.09-1/bin/synopsys_sim.setup", 139224, 3536, 1539412377, 0},
  {"linux64/packages/synopsys/lib/64/NOVAS__.sim", "", 0, 76398, 0, 0},
  {"linux64/packages/synopsys/lib/64/NOVAS.sim", "", 142760, 50089, 0, 0},
