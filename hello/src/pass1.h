//This file will declare all the procedures necessary for pass1.
#ifndef PASS_1_H_
#define PASS_1_H_

#include "instruction.h"
#include "symbol_table.h"
#include "opcode_table.h"
#include <string>
#include <stdint.h>
#include <cstdio>
#include <fstream>
#include <iostream>

extern uint32_t location_counter;
extern uint32_t starting_address;
extern uint32_t program_length;
extern string program_name;

instruction_type parse_line(string aLine);

bool write_line_intermediate(ofstream& intermediate_file, string aLine);
bool is_comment(string aLine);
bool is_label_exist(instruction_type);
uint32_t process_opcode(instruction_type);
uint32_t length_of_constant(instruction_type);
bool is_end(string aLine);
void run_pass1(string input_file_name);
string get_program_name();
uint16_t get_starting_address();
uint16_t get_program_length();

#endif
