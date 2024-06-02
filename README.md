# 8085-Zadaca_1

Секој 30ms од изолирана порта со адреса 0Ah се чита
податок. Ако битовите 2 и 5 се 1 и 0 соодветно на мемориска
пресликана порта на адреса F00Ah се испраќа прочитаниот
податок поделен со 2, инаку се испраќа прочитаниот податок
помножен со 7. Фреквенцијата на кристалот на осцилаторот е
5MHz.


     If bit 2,5==1,0 
            F00Ah <- Data/2
     Else
            F00Ah <- Data*7


![Screenshot (1)](https://github.com/BojanAleksov/8085---Zadaca1/blob/main/Slika%201(Zadaca1).png)

![Screenshot (2)](https://github.com/BojanAleksov/8085---Zadaca1/blob/main/Slika%202%20(Zadaca1).png)
 

**Develop by:**

[Bojan Aleksov](https://github.com/BojanAleksov)


**Subject**

Microcomputer's systems

**Built With**

This project is built using the following tools:

- [8085 simulator](https://github.com/8085simulator/8085simulator.github.io?tab=readme-ov-file): Assembler and emulator for the Intel 8085 microprocessor.

**Getting Started**

To get a local copy up and running, follow these steps.

**Prerequisites**

In order to run this project you need:

A working computer
Connection to internet
Setup

**How to Run**

To run the program, you need an 8085 emulator or assembler. You can use emulators like DOSBox or TASM (Turbo Assembler). Here's how to run the program using e8085.exe:

1. Download and install 8085 simulator from [here](https://github.com/8085simulator/8085simulator.github.io?tab=readme-ov-file).
2. Clone this repository to your local machine.
3. Open 8085 simulator and load the `zadaca1.asm` file.
4. Assemble the code by pressing the Assemble button.
5. Run the program by pressing the Run button or by pressing F10.
