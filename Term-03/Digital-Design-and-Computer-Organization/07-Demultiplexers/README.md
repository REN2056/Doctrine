# Experiment 07 – Design of De-Multiplexers Using Verilog HDL

## Objective

To design and simulate different types of De-Multiplexers (1:2, 1:4, and 1:8) using Verilog HDL and analyze their role in signal distribution and decoding within digital systems.

---

## Conceptual Background

A De-Multiplexer (De-MUX) is a combinational circuit that routes a single input to one of many output lines based on select inputs.

It performs the reverse operation of a Multiplexer.

For an n-output De-MUX:
- Number of select lines = log₂(n)

Examples:

- 1:2 De-MUX → 1 select line  
- 1:4 De-MUX → 2 select lines  
- 1:8 De-MUX → 3 select lines  

Only one output is active at a time, depending on the select input combination.

---

## Applications in Digital Systems

De-Multiplexers are widely used in:

- Memory addressing circuits  
- Data distribution networks  
- Display driver circuits  
- Control signal expansion  

For example:
- In LED displays, a De-MUX selects which segment receives the input signal.
- In memory systems, address decoding determines which memory location is enabled.

---

## Design Approach

### 1. 1:2 De-Multiplexer

Input:
- Data (D)
- Select (S)

Outputs:
- Y0
- Y1

Logic:
- Y0 = D · S̅  
- Y1 = D · S  

---

### 2. 1:4 De-Multiplexer

Input:
- D
- Select lines: S1, S0

Outputs:
- Y0 to Y3

Implemented using:
- Boolean decoding expressions, or
- Cascading smaller De-MUX blocks

---

### 3. 1:8 De-Multiplexer

Input:
- D
- Select lines: S2, S1, S0

Outputs:
- Y0 to Y7

Constructed hierarchically to demonstrate scalability.

---

## Implementation Strategy

- Designed modular De-MUX blocks.
- Used structural or dataflow modeling.
- Ensured only one output is active per select combination.
- Demonstrated hierarchical design for larger output configurations.

---

## Testbench & Verification

- Applied all select-line combinations.
- Verified that input signal was routed to the correct output.
- Confirmed that non-selected outputs remained inactive.
- Observed waveform transitions for correct decoding behavior.

---

## Key Observations

- De-MUX circuits perform signal expansion.
- Output lines are mutually exclusive.
- Scalability depends on efficient decoding logic.
- Propagation delay increases with hierarchical expansion.

---

## Systems Insight

De-Multiplexers play a critical role in control and addressing logic.

In processors and embedded systems:

- Address decoders determine which memory block is accessed.
- Control units distribute enable signals.
- Peripheral devices are selectively activated using decoding logic.

This experiment demonstrates how digital systems distribute and manage signals efficiently using combinational decoding structures.
