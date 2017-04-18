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
#define C_OUTPUT_0_ADDR 1
#define C_OUTPUT_1_ADDR 2
#define C_OUTPUT_2_ADDR 3
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
  unsigned output0;
  unsigned output1;
  unsigned output2;
  board->read(&output0, C_OUTPUT_0_ADDR, 1);
  board->read(&output2, C_OUTPUT_2_ADDR, 1);
  board->read(&output1, C_OUTPUT_1_ADDR, 1);


   std::cout<<"Output 1 is: ";
   std::cout<<std::hex<<output0<<std::endl;
   std::cout<<"Output 2 is: ";
   std::cout<<std::hex<<output1<<std::endl;
   std::cout<<"Output 3 is: ";
   std::cout<<std::hex<<output2<<std::endl;
  
   std::cout<<"Output 1 is: ";
   std::cout<<output0/SHIFT_VAL<<std::endl;
   std::cout<<"Output 2 is: ";
   std::cout<<output1/SHIFT_VAL<<std::endl;
   std::cout<<"Output 3 is: ";
   std::cout<<output2/SHIFT_VAL<<std::endl;
  
  unsigned long MEM_IN_ADDR = 400;
  
  unsigned int read_value[100];

  //unsigned int write_value[5] = {42, 43, 44, 45, 46};

  for(unsigned int i = 0; i < 100; i++){
  board->write(&i, MEM_IN_ADDR+i, 1);
  }

  cout<<"Wait"<<endl;


  board->read(read_value, MEM_IN_ADDR, 100);
  for(int i = 0; i < 100; i++){
  cout<<"Item "<<i<<" is "<<read_value[i]<<endl;
  }
  for(int i = 2; i < 100; i++){
  cout<<"Item "<<i<<" is "<<read_value[i]<<endl;
  }
  for(int i = 2; i < 100; i++){
  cout<<"Item "<<2<<" is "<<read_value[2]<<endl;
  }

  /*if(read_value[0] == 42) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[0] << std::endl;

  if(read_value[1] == 43) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[1] << std::endl;

  if(read_value[2] == 44) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[2] << std::endl;

  if(read_value[3] == 45) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[3] << std::endl;

  if(read_value[4] == 46) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[4] << std::endl;

if(read_value[0] == 42) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[0] << std::endl;

  if(read_value[1] == 43) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[1] << std::endl;

  if(read_value[2] == 44) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[2] << std::endl;

  if(read_value[3] == 45) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[3] << std::endl;

  if(read_value[4] == 46) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[4] << std::endl;

  if(read_value[5] == 100) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[5] << std::endl;

  if(read_value[6] == 100) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[6] << std::endl;

  if(read_value[7] == 100) std::cout<<"Memory Map test success!"<<std::endl;
  else std::cout << "Memory map failure, read: " << read_value[7] << std::endl;*/





  return 1;
}
