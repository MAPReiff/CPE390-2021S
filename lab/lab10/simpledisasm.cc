#include <fstream>
#include <iostream>
using namespace std;

uint32_t getBits(uint32_t val, uint32_t pos, uint32_t size) {
  return (val >> pos) & ((1 << size) - 1);
}

const char* conditionCode[16] = {"EQ", "NE", "CS", "CC", "MI", "PL", "VS", "VC",
                                 "HI", "LS", "GE", "LT", "GT", "LE", "AL", ""};

const char* opCodeDataProcessing[16] = {
    "AND",  // 0000
    "EOR",  // 0001
    "SUB",  // 0010
    "RSB",  // 0011
    "ADD",  // 0100
    "ADC",  // 0101
    "SBC",  // 0110
    "RSC",  // 0111
    "TST",  // 1000
    "TEQ",  // 1001
    "CMP",  // 1010
    "CMN",  // 1011
    "ORR",  // 1100
    "MOV",  // 1101
    "BIC",  // 1110
    "MVN",  // 1111
};

// this function disassembled ARM dataprocessing instructions, and, add, etc.
// that is, when you complete it.
void disasm(uint32_t instr) {
  const uint32_t TODO = 0;
  uint32_t cond = getBits(instr, 28, 4);
  uint32_t opcode = getBits(instr, 21, 4);
  uint32_t rn = getBits(instr, 16, 4);
  uint32_t rd = getBits(instr, 12, 4);
  uint32_t rm = getBits(instr, 0, 4);
  const char sbit[] = "";  // placeholder. You do not have to support s-bit
  cout << opCodeDataProcessing[opcode] << conditionCode[cond] << sbit << "   r"
       << rd << ", r" << rn << ", r" << rm << '\n';
}

int main() {
  disasm(0xe0010002);
  disasm(0xe1843005);
  disasm(0xa0825007);
  disasm(0x10825007);
}
