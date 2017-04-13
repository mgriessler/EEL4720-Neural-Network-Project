// Greg Stitt
// University of Florida

#ifndef _BOARD_
#define _BOARD_

#include <string>


#define MEM_INT_ADDR_SPACE (1 << 20)

#define AXI_MMAP_ADDR 0x43c00000

enum MemId {
  MEM_INTERNAL,
  MEM_LAST  // this is an invalid memory and is used for bounds checking only
};

class Board {
public:
  
  Board(const char *bitfile);
  virtual ~Board();
  
  virtual bool write(unsigned int *data, unsigned long addr, unsigned long words);
  virtual bool read(unsigned int *data, unsigned long addr, unsigned long words);
  
  void cp(const char *to, const char *from);

protected:

  unsigned *mmapPtr;

  void loadBitfile(const char* bitfile);
  void initMemoryMap();
  void handleError(std::string str);     
};

#endif
