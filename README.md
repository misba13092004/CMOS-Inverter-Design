# CMOS Inverter Design

Design and analysis of a CMOS inverter using Verilog HDL and digital simulation.

## Project Overview

A CMOS inverter is a fundamental digital logic circuit that produces the complement of the input signal.

A CMOS inverter is built using two complementary MOSFETs:

- **PMOS transistor** — pulls the output HIGH when the input is LOW.
- **NMOS transistor** — pulls the output LOW when the input is HIGH.

The gates of both transistors are connected to the input, while their drains are connected together to form the output.

This project demonstrates the functional behavior of a CMOS inverter using Verilog HDL and digital simulation.

## Objectives

- Understand the basic operation of a CMOS inverter.
- Understand the complementary operation of PMOS and NMOS transistors.
- Implement a CMOS inverter using Verilog HDL.
- Develop a Verilog testbench for functional verification.
- Simulate the design using an online HDL simulation environment.
- Observe the input and output waveforms using EPWave.
- Verify the simulation results using the CMOS inverter truth table.
- Document the complete design and simulation process using GitHub.

## CMOS Inverter Operation

A CMOS inverter uses a PMOS transistor and an NMOS transistor connected in a complementary arrangement.

### When Input A = 0

- PMOS transistor is ON.
- NMOS transistor is OFF.
- Output Y is connected to VDD.
- Therefore, **Y = 1**.

### When Input A = 1

- PMOS transistor is OFF.
- NMOS transistor is ON.
- Output Y is connected to GND.
- Therefore, **Y = 0**.

Thus, the output is always the complement of the input.

## Logic Function

The CMOS inverter performs the NOT logic operation:

**Y = ~A**

Where:

- **A** = Input
- **Y** = Output

## Truth Table

| Input A | Output Y |
|---------|----------|
| 0       | 1        |
| 1       | 0        |

## Verilog Implementation

The CMOS inverter is implemented using Verilog HDL.

```verilog
module cmos_inverter (
    input wire A,
    output wire Y
);

assign Y = ~A;

endmodule
```

## Testbench

A Verilog testbench is used to apply different input values and verify the inverter output.

The testbench applies the following input sequence:

- A = 0
- A = 1
- A = 0
- A = 1

The expected output sequence is:

- A = 0 → Y = 1
- A = 1 → Y = 0
- A = 0 → Y = 1
- A = 1 → Y = 0

The testbench also generates waveform data for observing the input and output signals.

### Testbench Code

```verilog
`timescale 1ns/1ps

module testbench;

    reg A;
    wire Y;

    cmos_inverter uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        $monitor("Time=%0t A=%b Y=%b", $time, A, Y);

        A = 0;
        #10 A = 1;
        #10 A = 0;
        #10 A = 1;
        #10 $finish;
    end

endmodule
```

## Simulation

The design was simulated using **EDA Playground** with **Verilator**.

**EPWave** was used to observe the input and output waveforms.

The simulation was performed to verify the functional behavior of the CMOS inverter.

## Simulation Results

The CMOS inverter was successfully simulated using the Verilog testbench.

The observed results are:

| Time | Input A | Output Y |
|------|---------|----------|
| 0 ns | 0       | 1        |
| 10 ns | 1      | 0        |
| 20 ns | 0      | 1        |
| 30 ns | 1      | 0        |

The simulation confirms that the output is always the logical complement of the input.

### Simulation Output

![CMOS Inverter Output](cmos%20output.png)

### CMOS Inverter Waveform

![CMOS Inverter Waveform](cmos%20waveform.png)

The waveform demonstrates the complementary switching behavior of the CMOS inverter. Whenever the input changes from LOW to HIGH, the output changes from HIGH to LOW, and vice versa.

## Results

The simulated results match the expected CMOS inverter truth table.

The following relationship was verified:

**Y = ~A**

The simulation successfully demonstrates the basic NOT logic operation of the CMOS inverter.

## Tools Used

- Verilog HDL
- EDA Playground
- Verilator
- EPWave
- GitHub
- Digital Logic Design
- CMOS Logic Concepts

## Project Structure

```text
CMOS-Inverter-Design/
│
├── verilog/
│   ├── cmos_inverter.v
│   └── cmos_inverter_tb.v
│
├── cmos output.png
├── cmos waveform.png
└── README.md
```

## Learning Outcomes

Through this project, the following concepts were explored:

- Basic CMOS inverter operation
- PMOS and NMOS complementary operation
- Digital logic and NOT gate functionality
- Verilog HDL module development
- Verilog testbench development
- Digital simulation
- Waveform analysis using EPWave
- GitHub project organization and documentation

## Conclusion

The CMOS inverter was successfully designed and simulated using Verilog HDL.

The simulation results matched the expected truth table, confirming the correct NOT logic operation of the inverter. The output signal was observed to be the logical complement of the input signal.

The project provided practical experience in CMOS logic concepts, Verilog HDL, testbench development, digital simulation, waveform analysis, and GitHub-based project documentation.

## Future Scope

The project can be extended further by:

- Designing and simulating CMOS NAND and NOR gates.
- Designing other basic CMOS logic gates.
- Analyzing propagation delay and switching characteristics.
- Studying power consumption and power-delay trade-offs.
- Exploring transistor-level CMOS circuit simulation.
- Comparing different CMOS logic implementations.
- Extending the design toward more complex VLSI digital circuits.
- Studying the effect of transistor sizing on CMOS inverter performance.

## Author 
**Misbah Nabiwale**


