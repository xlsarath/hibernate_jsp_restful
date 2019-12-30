//This file will define instruction_type a user defined datatype
#ifndef INSTRUCTION_TYPE_H_
#define INSTRUCTION_TYPE_H_

#include <string>
using namespace std;

class instruction_type
{
  public:
    string instruction_label;
    string instruction_opcode;
    string instruction_operand;
    bool is_Valid;
    bool is_OperandExist;
};

#endif // INSTRUCTION_TYPE_H_
