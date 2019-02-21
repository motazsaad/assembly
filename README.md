# assembly
Assembly code examples


## **Lab Description**

This lab provides student with necessary knowledge in assembly programming language. The lab covers general introduction to assembly language as a low level programming language and its applications, machine levels, memory access, interrupts, procedures and routines, arithmetic and logic instructions, flow control, how to control external devices, and how to embed procedures written in assembly (low level language) with high level language program applications such as C and C++.

## **References**

- [Documentation for 8086 assembler and emulator.](http://www.emu8086.com/assembly_language_tutorial_assembler_reference/)
- [Assembly Language for Intel-Based Computers 5th Edition, by Kip Irvine, Florida International University, ISBN: 0-13-238310 - 1, Published by: Prentice-Hall.](http://kipirvine.com/asm/) (16 &amp; 32 bit programming).

## **Assemblers**

- 8086 Microprocessor Emulator with Integrated 8086 Assembler [http://www.emu8086.com/](http://www.emu8086.com/)
- Visual Assembler IDE VasmIDEv2.5.rar
- Masm32 [http://www.masm32.com/](http://www.masm32.com/)

## **Lecture Notes**

Introduction

asm1-intro.ppt

[MS Debug Example](https://sites.google.com/s/18V6338QLKOVoxSfWQfc9ayD30VOmorKW/p/0B31lHoiQvWYTcjZKYnhfWTlzNkk/edit)

Memory Access

asm2-memory-access.ppt

Interrupts

asm3-interrupts.ppt

Assembly Program

asm4-assmebly-program.ppt

Flow Control

asm5-flow-control.ppt

32 Bit Assembly Programming

asm6-32bit.ppt

## **Examples**

- Input - Output Instructions:
  - Example1 asm1.asm
  - Example2 asm2.asm
  - Example3 asm3.asm
- Summing 2 digitis:
  - Summing 2 digits without using variables (using registers) sum.asm
  - Summing 2 digits using variables sum-vars.asm
- Branching: Flow Control Instructions and Control Structure:
  - IF Structure if.asm
  - IF-Else Structure example 1 ifelse.asm
  - IF-Else Structure example 2 ifelse2.asm
  - IF-Else Structure example 3 ifelse3.asm
  - loop example 1 loop.asm
  - loop example 2 loop2.asm
  - Switch Example switch.asm
  - while example while.asm
  - do while example dowhile.asm
- Procedures example asm-procedures.zip
- Using assembly Language in High Level Language:
- Using Inline Assembly in C/C++ (using _asm_ keyword)
  - Example: C++ Source asmcpp-ex1.cpp
  - Download executable asmcpp-ex1.zip
- Using _extern &quot;C&quot;_
  - C++ source asmcpp-ex2.cpp
  - Assembly routine asmfunc.asm
  - Download executable asmcpp-ex2.zip
  - To compile &amp; link using TC++ command line compiler:
    - tcc asmcpp-ex2.cpp asmfunc.asm

## **Final Exam Coverage**

asm-Exam-Coverage-s09.doc
