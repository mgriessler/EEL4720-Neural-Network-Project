// Greg Stitt
// University of Florida

#include <iostream>
#include <sstream>
#include <cassert>
#include <cstdio>
#include <cstring>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>

#include "Board.h"

using namespace std;

Board::Board(const char *bitfile) {
  
  loadBitfile(bitfile);
  initMemoryMap();
}

Board::~Board() {
  
}

void Board::cp(const char *to, const char *from) {

  FILE *inFile, *outFile;
  unsigned long lSize;
  char * buffer;
  size_t result;
  
  // open input file
  inFile = fopen(from, "rb" );
  if (inFile==NULL) {handleError("Error opening " + (string) from);}

  // obtain file size:
  fseek (inFile , 0 , SEEK_END);
  lSize = ftell (inFile);
  rewind (inFile);

  // allocate memory to contain the whole file:
  buffer = (char*) malloc (sizeof(char)*lSize);
  if (buffer == NULL) {fputs ("Memory error",stderr); exit (2);}

  // copy the file into the buffer:
  result = fread (buffer,1,lSize,inFile);
  if (result != lSize) {handleError("Error reading " + (string) from);}

  // open and write to output file
  outFile = fopen (to, "w" );
  if (outFile==NULL) {handleError("Error opening " + (string) to);}
  fwrite(buffer, sizeof(char), lSize, outFile);

  // terminate
  fclose(inFile);
  fclose(outFile);
  free(buffer);
}

void Board::loadBitfile(const char* bitfile) {

  cp("/dev/xdevcfg", bitfile);
}

void Board::initMemoryMap() {
  
  /* Open /dev/mem file */
  int fd = open("/dev/mem", O_RDWR);
  if (fd < 1) {
    handleError("Can't open /dev/mem");
  }

  unsigned pageSize=sysconf(_SC_PAGESIZE);
  unsigned pageAddr = (AXI_MMAP_ADDR & (~(pageSize-1)));
  unsigned pageOffset = AXI_MMAP_ADDR - pageAddr;
  void *ptr = mmap(NULL, pageSize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, pageAddr);
  //  mmapPtr = (unsigned *)(ptr + pageOffset);
  mmapPtr = (unsigned *) ptr + pageOffset;
}


inline void Board::handleError(std::string str) {
	std::cerr << str << std::endl;
	throw 1;
}

inline bool Board::write(unsigned int *data, unsigned long addr, unsigned long words) {

  memcpy(mmapPtr+addr, data, words*sizeof(unsigned));
  return true;
}

inline bool Board::read(unsigned int *data, unsigned long addr, unsigned long words) {

  memcpy(data, mmapPtr+addr, words*sizeof(unsigned));
  return true;
}
