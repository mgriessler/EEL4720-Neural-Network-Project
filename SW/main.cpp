// Greg Stitt
// University of Florida
// main.cpp
//
// Description: This file is intended as a tutorial for the 5721/4720 ZedBoard
// cluster. It demonstrates how to read and write from an AXI peripheral.

#include <iostream>
#include <cstdlib>
#include <cassert>
#include <cstring>

#include "Board.h"

using namespace std;

// AXI addresses for the input and output
#define C_OUTPUT_0_ADDR 1
#define C_OUTPUT_1_ADDR 2
#define C_OUTPUT_2_ADDR 3
#define C_MEMTEST_START_ADDR 400
#define C_MEMTEST_END_ADDR 500

//#define DEBUG

int main(int argc, char* argv[]) {

  // make sure unsigned is 4 bytes on this machine
  assert(sizeof(unsigned) == 4);

  if (argc != 2) {
    cerr << "Usage: " << argv[0] << " bitfile" << endl;
    return -1;
  }

  // initialize board
  Board *board;
  try {
    board = new Board(argv[1]);
  }
  catch(...) {
    exit(-1);
  }
  int output[3];
  board->read(&output[0], C_OUTPUT_0_ADDR, 1);
  board->read(&output[1], C_OUTPUT_1_ADDR, 1);
  board->read(&output[2], C_OUTPUT_2_ADDR, 1);

  for (int i = 0; i < 3; i++){
   std::cout<<"Output "<<i<<" is: ";
   std::cout<<std::hex<<output[i]<<std::endl;
  }

  int write_value = 42;
  int read_value;
  board->write(&write_value, C_MEMTEST_START_ADDR + 42, 1);
  board->read(&read_value, C_MEMTEST_START_ADDR + 42, 1);
  if(write_value == read_value) std::cout<<"Memory Map test success!"<<std::endl;
  

  return 1;
}
