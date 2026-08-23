# CMOS Inverter Design

Design and analysis of a CMOS inverter using Verilog HDL and transistor-level concepts.

## Project Overview

A CMOS inverter is a fundamental digital logic circuit that produces the complement of the input signal.

The design consists of:
- PMOS transistor
- NMOS transistor
- Common input connected to both transistor gates
- Output obtained from the connected transistor drains

This project demonstrates the functional behavior of a CMOS inverter using Verilog HDL and digital simulation.

## Logic Function

The CMOS inverter performs:

**Y = ~A**

Where:
- **A** = Input
- **Y** = Output

## Truth Table

| Input A | Output Y |
|--------:|---------:|
| 0 | 1 |
| 1 | 0 |

## Verilog Implementation

The inverter is implemented using Verilog HDL.

```verilog
module cmos_inverter (
    input wire A,
    output wire Y
);

assign Y = ~A;

endmodule

## Simulation Results

The CMOS inverter was simulated using the Verilog testbench.

The simulation verifies that the output is always the complement of the input:

- Input A = 0 → Output Y = 1
- Input A = 1 → Output Y = 0
