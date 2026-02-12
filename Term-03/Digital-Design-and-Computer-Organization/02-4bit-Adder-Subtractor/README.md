# Experiment 02 – Design of 4-Bit Full Adder and Subtractor Using Basic Gates

## Objective

To design and simulate a 4-bit full adder and subtractor using basic logic gates in Verilog, and verify their functionality through exhaustive testbench validation.

---

## Conceptual Background

Addition and subtraction are the most fundamental arithmetic operations in digital systems.

A **Full Adder** adds three 1-bit inputs:
- Operand A
- Operand B
- Carry-in (Cin)

It produces:
- Sum
- Carry-out (Cout)

A **Subtractor** performs binary subtraction. In digital systems, subtraction is typically implemented using **2’s complement arithmetic**, where:

\[
A - B = A + (2's\ complement\ of\ B)
\]

This allows subtraction to be performed using the same adder circuitry with minor modifications.

Extending these circuits to 4-bit enables small-scale arithmetic operations and forms the basis of the **Arithmetic Logic Unit (ALU)** inside processors.

---

## Design Approach

### 1. 1-Bit Full Adder Design

Using basic gates:

- Sum = A ⊕ B ⊕ Cin  
- Cout = (A · B) + (Cin · (A ⊕ B))

Implemented using:
- XOR gates
- AND gates
- OR gates

### 2. 4-Bit Adder Construction

- Cascaded four 1-bit full adders.
- Connected carry-out of each stage to carry-in of the next stage.
- Final carry-out represents overflow.

### 3. 4-Bit Subtractor Design

- Generated 2’s complement of B:
  - Bitwise inversion using NOT gates
  - Added 1 using initial carry-in
- Reused 4-bit adder for subtraction.
- Introduced a control signal (Mode):
  - Mode = 0 → Addition
  - Mode = 1 → Subtraction

This demonstrates hardware reuse within arithmetic circuits.

---

## Verilog Implementation Strategy

- Used structural modeling with explicit gate instantiation.
- Designed modular 1-bit full adder.
- Built 4-bit arithmetic unit using module cascading.
- Implemented mode-based selection for add/sub operation.
- Ensured proper carry propagation between stages.

---

## Testbench & Verification

- Applied multiple input combinations for A and B.
- Tested both operational modes:
  - Addition mode
  - Subtraction mode
- Verified:
  - Correct sum/difference output
  - Correct carry/borrow behavior
- Inspected waveforms to validate carry propagation timing.

---

## Key Observations

- Cascading full adders enables scalable arithmetic design.
- Carry propagation introduces delay proportional to bit-width.
- 2’s complement method simplifies subtraction hardware.
- Structural modeling clearly reflects real hardware construction.

---

## Systems Insight

The 4-bit adder-subtractor is a simplified model of the arithmetic core inside an ALU.

In processors:

- Addition is used for address calculation.
- Subtraction supports comparison operations.
- Carry propagation impacts performance.
- Efficient arithmetic design directly influences processor speed.

This experiment bridges basic logic design and processor-level arithmetic architecture.
