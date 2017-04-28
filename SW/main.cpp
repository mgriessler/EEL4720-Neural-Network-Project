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
#include <algorithm>

#include "Board.h"

using namespace std;

// AXI addresses for the input and output
#define TEST_SIZE 90
#define TRAIN SIZE 60
#define C_INPUT_0_START_ADDR 1024
#define C_INPUT_1_START_ADDR 2048
#define C_INPUT_2_START_ADDR 3072
#define C_INPUT_3_START_ADDR 4096
#define C_EXPECTED_OUTPUT_START_ADDR 5120
#define C_OUTPUT_START_ADDR 6144
#define C_INIT_ADDR ((1<<18)-8)
#define C_BP_ADDR ((1<<18)-7)
#define C_GO_EPOCH_ADDR ((1<<18)-6)
#define C_EPOCH_SIZE_ADDR ((1<<18)-5)
#define C_DONE_ADDR ((1<<18)-4)

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

  float sepal_length_test[TEST_SIZE] = {4.8, 6.1, 6.5, 5.5, 5.7, 5.8, 6.9, 6.4, 6.4, 6.7, 6.3, 5.8, 6.7, 5.7, 4.5, 6.5, 6.7, 6.7, 6.0, 7.3, 6.4, 6.7, 5.0, 5.2, 4.9, 5.9, 6.1, 4.9, 5.7, 6.8, 5.7, 7.7, 5.8, 6.3, 5.4, 7.2, 5.2, 5.2, 4.7, 7.2, 4.8, 5.9, 5.0, 5.1, 6.3, 4.7, 6.1, 6.7, 6.9, 6.2, 5.1, 6.6, 7.0, 5.0, 5.0, 5.6, 4.6, 5.5, 6.7, 5.4, 6.3, 5.6, 7.9, 5.9, 6.7, 5.5, 4.9, 5.4, 5.1, 6.2, 7.2, 6.3, 5.2, 5.5, 6.3, 6.4, 5.0, 6.0, 5.1, 5.8, 5.1, 6.2, 5.1, 7.7, 6.9, 5.6, 4.9, 5.5, 5.3, 6.4};
  float sepal_width_test[TEST_SIZE] = {3.4, 2.8, 3.0, 3.5, 3.8, 2.7, 3.2, 3.2, 3.2, 3.3, 2.7, 2.7, 3.1, 2.9, 2.3, 3.0, 3.3, 3.1, 2.9, 2.9, 2.8, 2.5, 3.4, 3.5, 3.1, 3.0, 3.0, 3.1, 4.4, 2.8, 2.5, 2.6, 2.7, 2.9, 3.4, 3.2, 3.4, 2.7, 3.2, 3.6, 3.0, 3.2, 2.0, 3.5, 2.8, 3.2, 2.6, 3.0, 3.1, 3.4, 3.7, 2.9, 3.2, 3.3, 2.3, 3.0, 3.4, 2.4, 3.1, 3.4, 3.3, 3.0, 3.8, 3.0, 3.0, 2.3, 3.0, 3.0, 3.8, 2.9, 3.0, 3.3, 4.1, 4.2, 3.4, 2.8, 3.2, 2.7, 3.8, 2.8, 3.8, 2.2, 3.4, 3.0, 3.1, 2.9, 2.4, 2.4, 3.7, 2.9};
  float petal_length_test[TEST_SIZE] = {1.9, 4.7, 5.8, 1.3, 1.7, 4.1, 5.7, 4.5, 5.3, 5.7, 4.9, 5.1, 4.7, 4.2, 1.3, 5.5, 5.7, 5.6, 4.5, 6.3, 5.6, 5.8, 1.6, 1.5, 1.5, 4.2, 4.6, 1.5, 1.5, 4.8, 5.0, 6.9, 5.1, 5.6, 1.7, 6.0, 1.4, 3.9, 1.6, 6.1, 1.4, 4.8, 3.5, 1.4, 5.1, 1.3, 5.6, 5.2, 5.1, 5.4, 1.5, 4.6, 4.7, 1.4, 3.3, 4.1, 1.4, 3.7, 4.4, 1.5, 6.0, 4.5, 6.4, 5.1, 5.0, 4.0, 1.4, 4.5, 1.9, 4.3, 5.8, 4.7, 1.5, 1.4, 5.6, 5.6, 1.2, 5.1, 1.5, 5.1, 1.6, 4.5, 1.5, 6.1, 4.9, 3.6, 3.3, 3.8, 1.5, 4.3};
  float petal_width_test[TEST_SIZE] = {0.2, 1.2, 2.2, 0.2, 0.3, 1.0, 2.3, 1.5, 2.3, 2.1, 1.8, 1.9, 1.5, 1.3, 0.3, 1.8, 2.5, 2.4, 1.5, 1.8, 2.1, 1.8, 0.4, 0.2, 0.1, 1.5, 1.4, 0.1, 0.4, 1.4, 2.0, 2.3, 1.9, 1.8, 0.2, 1.8, 0.2, 1.4, 0.2, 2.5, 0.1, 1.8, 1.0, 0.2, 1.5, 0.2, 1.4, 2.3, 2.3, 2.3, 0.4, 1.3, 1.4, 0.2, 1.0, 1.3, 0.3, 1.0, 1.4, 0.4, 2.5, 1.5, 2.0, 1.8, 1.7, 1.3, 0.2, 1.5, 0.4, 1.3, 1.6, 1.6, 0.1, 0.2, 2.4, 2.2, 0.2, 1.6, 0.3, 2.4, 0.2, 1.5, 0.2, 2.3, 1.5, 1.3, 1.0, 1.1, 0.2, 1.3};
  float expected_output_test[TEST_SIZE] = {0, 1, 2, 0, 0, 1, 2, 1, 2, 2, 2, 2, 1, 1, 0, 2, 2, 2, 1, 2, 2, 2, 0, 0, 0, 1, 1, 0, 0, 1, 2, 2, 2, 2, 0, 2, 0, 1, 0, 2, 0, 1, 1, 0, 2, 0, 2, 2, 2, 2, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 2, 1, 2, 2, 1, 1, 0, 1, 0, 1, 2, 1, 0, 0, 2, 2, 0, 1, 0, 2, 0, 1, 0, 2, 1, 1, 1, 1, 0, 1};

  for(int i = 0; i < TEST_SIZE; i++){
  sepal_length_test[i] *= 256;
  sepal_width_test[i] *= 256;
  petal_length_test[i] *= 256;
  petal_width_test[i] *= 256;
  expected_output_test[i] *= 256;
  }
  
  int sepal_length_test_sf[TEST_SIZE];
  int sepal_width_test_sf[TEST_SIZE];
  int petal_length_test_sf[TEST_SIZE];
  int petal_width_test_sf[TEST_SIZE];
  int expected_output_test_sf[TEST_SIZE];
  
  std::copy(sepal_length_test, sepal_length_test + TEST_SIZE, sepal_length_test_sf);
  std::copy(sepal_width_test, sepal_width_test + TEST_SIZE, sepal_width_test_sf);
  std::copy(petal_length_test, petal_length_test + TEST_SIZE, petal_length_test_sf);
  std::copy(petal_width_test, petal_width_test + TEST_SIZE, petal_width_test_sf);
  std::copy(expected_output_test, expected_output_test + TEST_SIZE, expected_output_test_sf);
  
  std::cout<<"Loading Memories"<<std::endl;

  board->write(sepal_length_test, C_INPUT_0_START_ADDR, TEST_SIZE);
  board->write(sepal_width_test, C_INPUT_1_START_ADDR, TEST_SIZE);
  board->write(petal_length_test, C_INPUT_2_START_ADDR, TEST_SIZE);
  board->write(petal_width_test, C_INPUT_3_START_ADDR, TEST_SIZE);
  board->write(expected_output_test, C_EXPECTED_OUTPUT_START_ADDR, TEST_SIZE);

  int init, bp, go_epoch, epoch_size, done;
  init = 1;
  bp = 0;
  go_epoch = 1;
  
  std::cout<<"Initializing Net"<<std::endl;

  board->write(&init, C_INIT_ADDR, 1);
  board->write(&bp, C_BP_ADDR, 1);
  board->write(&go_epoch, C_GO_EPOCH_ADDR, 1);

  std::cout<<"Running Net"<<std::endl;
  
  done = 0;
  while(!done){
  board->read(&done, C_DONE_ADDR, 1);
  }

  std::cout<<"Finished."<<std::endl<<"Net Output:"<<std::endl;

  int output[TEST_SIZE];
  board->read(output, C_OUTPUT_START_ADDR, 1);
  
  for(int i = 0; i < TEST_SIZE; i++){
  std::cout<<output[i]<<std::endl;
  }

  return 1;
}
