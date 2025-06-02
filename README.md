Overview

This project implements a 2-input AND gate in Verilog using structural modeling, along with a testbench for simulation. The design is simple and synthesizable, targeting FPGA devices. The testbench verifies the AND gate's functionality by testing all possible input combinations.

Module: and_gate





Description: A 2-input AND gate implemented structurally.



Inputs:





a: First single-bit input.



b: Second single-bit input.



Output:





y: Single-bit output, the result of a AND b.



Functionality: Uses a primitive AND gate (and a1(y, a, b);) to compute the logical AND operation.



Style: Structural modeling.

Testbench: and_tb





Description: A testbench to simulate and verify the AND gate.



Functionality:





Uses a for loop to iterate through all input combinations (a, b = 00, 01, 10, 11).



Assigns inputs using a 2-bit concatenation {a, b} = i, where i ranges from 0 to 3.



Applies a 10ns delay between test cases.



Monitors and displays the time, inputs (a, b), and output (y) using $monitor.



Time Scale: Defined as 1ns / 1ps for simulation precision.



Purpose: Confirms the AND gate outputs y = 1 only when a = 1 and b = 1.

Files





and_gate.v: Verilog module for the AND gate.



and_tb.v: Testbench for simulation.



Simulation in Vivado





Setup:





Open Xilinx Vivado (e.g., 2023.2 or later).



Create a new RTL project and specify a project name/location.



Add Files:





Add and_gate.v and and_tb.v via "Add Sources."



Set and_tb as the top module for simulation.



Run Simulation:





Go to "Flow" > "Run Simulation" > "Run Behavioral Simulation."



Vivado’s XSim simulator executes the testbench.



View Results:






Check the console for $monitor output (see below).



Open the waveform viewer to visualize signals.

Simulation Waveform

Below is the simulation waveform from Vivado, showing inputs a, b, and output y over time.
![Screenshot 2025-06-02 204547](https://github.com/user-attachments/assets/74980f5d-d280-4196-9772-1c4dbcd189c2)

Console Output

Below is the console output from the testbench simulation.
![Screenshot 2025-06-02 204605](https://github.com/user-attachments/assets/8b9a8af8-7220-4105-938d-0b401564678a)





0 a=0, b=0, y=0



10 a=0, b=1, y=0



20 a=1, b=0, y=0



30 a=1, b=1, y=1

Features





Structural Design: Uses a primitive AND gate for hardware-level representation.



Exhaustive Testing: Covers all input combinations via a loop.



Educational: Ideal for learning Verilog, structural modeling, and simulation.



Synthesizable: Suitable for FPGA implementation.
