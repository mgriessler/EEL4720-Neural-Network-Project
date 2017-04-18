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
#define ADDR_WIDTH 15
#define MAX_SIZE (1<<ADDR_WIDTH)
//#define MEM_IN_ADDR 442
//#define MEM_OUT_ADDR_0
#define C_GO_ADDR 1
#define C_SIZE_ADDR 2
#define C_DONE_ADDR 3
#define SHIFT_VAL 256.0

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
  
  
  
  unsigned int input0 = 0x00000080;
  unsigned int input1 = 0x00000040;
  unsigned int input2 = 0x0000FF9A;
  unsigned int input3 =  0x0000FF40;

  board->write(&input0, 400, 1);
  board->write(&input1, 500, 1);
  board->write(&input2, 600, 1);
  board->write(&input3, 700, 1);

  unsigned int one = 1;
  unsigned int zero = 0;
  board->write(&one, C_SIZE_ADDR, 1);
  board->write(&one, C_GO_ADDR, 1);
  board->write(&zero, C_GO_ADDR, 1);
  unsigned int done;
  unsigned int count = 0;
  do{
     board -> read(&done, C_DONE_ADDR, 1);
     count++;
   }while(done == 0 && count != 3);

  unsigned int output0;
  unsigned int output1;
  unsigned int output2;

  board -> read(&output0, 800, 1);
  board -> read(&output1, 900, 1);
  board -> read(&output2, 1000, 1);

  cout<<"Output 0 is "<<output0<<endl;
  cout<<"Output 1 is "<<output1<<endl;
  cout<<"Output 2 is "<<output2<<endl;
  
  



  return 1;
}
