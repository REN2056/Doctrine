# Experiment 06 – Design of 2:1, 4:1, and 8:1 Multiplexers Using Verilog HDL

## Objective

To design and simulate different types of multiplexers (2:1, 4:1, and 8:1) using Verilog HDL, and analyze their role in scalable data selection and signal routing within digital systems.

---

## Conceptual Background

A Multiplexer (MUX) is a combinational circuit that selects one input from multiple inputs and forwards it to a single output based on select lines.

It is commonly referred to as a **data selector**.

For an n-input multiplexer:
- Number of select lines = log₂(n)

Examples:

- 2:1 MUX → 1 select line  
- 4:1 MUX → 2 select lines  
- 8:1 MUX → 3 select lines  

Multiplexers are fundamental components in:

- Data routing circuits  
- Control units  
- Communication systems  
- Processor datapaths  

They are also widely used to implement arbitrary Boolean functions.

---

## Design Approach

### 1. 2:1 Multiplexer

Inputs:
- I0
- I1
- Select (S)

Output:
- Y

Logic:
- Y = (I0 · S̅) + (I1 · S)

---

### 2. 4:1 Multiplexer

Inputs:
- I0, I1, I2, I3
- Select lines: S1, S0

Output:
- Y

Constructed using:
- Boolean expression expansion, or
- Cascading 2:1 multiplexers

---

### 3. 8:1 Multiplexer

Inputs:
- I0 to I7
- Select lines: S2, S1, S0

Output:
- Y

Implemented by:
- Cascading lower-order multiplexers
- Demonstrating hierarchical scalability

---

## Implementation Strategy

- Designed each MUX as a separate module.
- Used structural and/or dataflow modeling.
- Demonstrated hierarchical design by building:
  - 4:1 MUX using 2:1 MUX blocks
  - 8:1 MUX using 4:1 or 2:1 blocks
- Ensured clean select-line decoding.

---

## Testbench & Verification

- Applied all possible select-line combinations.
- Verified correct input routing to output.
- Confirmed scalability across 2:1, 4:1, and 8:1 implementations.
- Observed waveform transitions to validate selection logic.

---

## Key Observations

- Multiplexers scale logarithmically with select lines.
- Hierarchical design simplifies construction of larger MUX units.
- Propagation delay increases with cascading levels.
- MUX circuits can implement arbitrary combinational logic functions.

---

## Systems Insight

Multiplexers are central to processor architecture.

In CPUs:

- MUXes select ALU operands.
- Control units use MUXes to route instruction fields.
- Datapaths rely on MUX networks for efficient signal management.

Multiplexers enable flexible hardware reuse by dynamically selecting data sources.

This experiment demonstrates how simple selection logic becomes a foundational mechanism in complex digital systems.
