# ALU Operation Specification

## Overview

This ALU supports 16 different operations based on two inputs, `A` and `B`, and generates an output, `F`, according to the selected operation. The select input, `S` (`S₂S₁S₀`), controls the operation selection, which maps to different groups and operations.

## ALU Operations

| Op No. | F             | Description                                      |
|--------|---------------|--------------------------------------------------|
| 1      | A             | Transfer A                                       |
| 2      | A+1           | Increment A                                      |
| 3      | A+B           | Add A to B                                       |
| 4      | A-B           | Subtract B from A                                |
| 5      | A-1           | Decrement A                                      |
| 6      | A'            | 1's Complement of A                              |
| 7      | A'+1          | 2's Complement of A                              |
| 8      | A OR B        | Bitwise OR                                       |
| 9      | A XOR B       | Bitwise XOR                                      |
| 10     | A AND B       | Bitwise AND                                      |
| 11     | SHR A         | Shift A to Right by 1 bit                        |
| 12     | SHL A         | Shift A to Left by 1 bit                         |
| 13     | ROT A         | Rotate A by 1 bit                                |
| 14     | Binary ➔ BCD  | Convert Binary code to BCD                       |
| 15     | Binary ➔ Gray | Convert lower 4 bits of Binary to 4-bit Gray code|
| 16     | Binary ➔ 7-Segment Decoder | Convert upper 4 bits of Binary code to 8-bit code for 7-segment display with decimal point |

## Select Input Mapping

The select input `S` (`S₂S₁S₀`) determines which operation group (G-1 to G-8) and operation (1 to 16) to perform.

| Select Input (`S₂S₁S₀`) | G-1 Op. | G-2 Op. | G-3 Op. | G-4 Op. | G-5 Op. | G-6 Op. | G-7 Op. | G-8 Op. |
|--------------------------|---------|---------|---------|---------|---------|---------|---------|---------|
| 000                      | 1       | 2       | 2       | 2       | 1       | 1       | 2       | 1       |
| 001                      | 3       | 4       | 3       | 4       | 4       | 3       | 4       | 3       |
| 010                      | 5       | 6       | 5       | 7       | 7       | 5       | 5       | 6       |
| 011                      | 7       | 8       | 6       | 9       | 9       | 6       | 8       | 7       |
| 100                      | 9       | 10      | 9       | 10      | 10      | 9       | 10      | 9       |
| 101                      | 11      | 12      | 12      | 12      | 12      | 12      | 12      | 11      |
| 110                      | 13      | 14      | 13      | 14      | 14      | 13      | 13      | 13      |
| 111                      | 15      | 16      | 16      | 14      | 15      | 16      | 15      | 16      |
