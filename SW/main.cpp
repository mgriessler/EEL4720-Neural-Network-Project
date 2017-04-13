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
  
  vector<float> clocks(Board::NUM_FPGA_CLOCKS);
  clocks[0] = 100.0;
  clocks[1] = 0.0;
  clocks[2] = 0.0;
  clocks[3] = 0.0;

  // initialize board
  Board *board;
  try {
    board = new Board(argv[1], clocks);
  }
  catch(...) {
    exit(-1);
  }
  unsigned output0;
  unsigned output1;
  unsigned output2;
  board->read(&output0, C_OUTPUT_0_ADDR, 1);
  board->read(&output1, C_OUTPUT_1_ADDR, 1);
  board->read(&output2, C_OUTPUT_2_ADDR, 1);


   std::cout<<"Output 1 is: ";
   std::cout<<std::hex<<output0<<std::endl;
   std::cout<<"Output 2 is: ";
   std::cout<<std::hex<<output1<<std::endl;
   std::cout<<"Output 3 is: ";
   std::cout<<std::hex<<output2<<std::endl;
  

  /*int write_value = 42;
  int read_value;
  board->write(&write_value, C_MEMTEST_START_ADDR + 42, 1);
  board->read(&read_value, C_MEMTEST_START_ADDR + 42, 1);
  if(write_value == read_value) std::cout<<"Memory Map test success!"<<std::endl;*/
  

  return 1;
}
