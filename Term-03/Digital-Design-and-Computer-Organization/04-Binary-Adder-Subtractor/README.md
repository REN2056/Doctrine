# Experiment 04 – Design of Half and Full Adder–Subtractor Using Verilog HDL

## Objective

To design and simulate Half Adder, Full Adder, Half Subtractor, and Full Subtractor circuits using Verilog HDL, and analyze their role in multi-bit arithmetic systems.

---

## Conceptual Background

Binary arithmetic is the foundation of digital computation.

### Half Adder

A Half Adder performs addition of two single-bit inputs:

Inputs:
- A
- B

Outputs:
- Sum
- Carry

It does not account for carry-in from a previous stage.

---

### Full Adder

A Full Adder extends the Half Adder by including:

Inputs:
- A
- B
- Carry-in (Cin)

Outputs:
- Sum
- Carry-out (Cout)

It enables multi-bit binary addition through cascading.

---

### Half Subtractor

A Half Subtractor performs subtraction of two single-bit inputs:

Inputs:
- A (Minuend)
- B (Subtrahend)

Outputs:
- Difference
- Borrow

It does not account for borrow-in.

---

### Full Subtractor

A Full Subtractor extends subtraction by including:

Inputs:
- A
- B
- Borrow-in (Bin)

Outputs:
- Difference
- Borrow-out (Bout)

It enables cascading for multi-bit subtraction.

---

## Design Approach

1. Implemented Half Adder using:
   - XOR gate for Sum
   - AND gate for Carry

2. Implemented Full Adder using:
   - Two Half Adders
   - OR gate for final Carry

3. Implemented Half Subtractor using:
   - XOR gate for Difference
   - AND + NOT logic for Borrow

4. Implemented Full Subtractor using:
   - Two Half Subtractors
   - OR gate for final Borrow

Each circuit was designed and verified independently.

---

## Implementation Strategy

- Used modular design to promote reusability.
- Constructed Full Adder from Half Adder modules.
- Constructed Full Subtractor from Half Subtractor modules.
- Ensured clean signal naming and proper port mapping.
- Verified gate-level correctness through simulation.

---

## Testbench & Verification

- Applied all possible input combinations for each module.
- Verified correctness of:
  - Sum and Carry (Adders)
  - Difference and Borrow (Subtractors)
- Compared outputs against expected Boolean expressions.
- Observed waveform timing for logic correctness.

---

## Key Observations

- Half circuits are insufficient for multi-bit arithmetic without carry/borrow propagation.
- Cascading enables scalable arithmetic design.
- Modular design simplifies verification and reuse.
- Borrow logic in subtraction is conceptually dual to carry logic in addition.

---

## Systems Insight

Half and Full Adders/Subtractors are the fundamental arithmetic cells of digital systems.

In processor architecture:

- Full Adders form ripple-carry and advanced adders.
- Subtraction is implemented using complement-based arithmetic.
- Multi-bit arithmetic units rely on cascading these fundamental blocks.

Understanding these primitive circuits is essential before designing ALUs, multipliers, and advanced arithmetic units.

This experiment establishes the foundational arithmetic logic used throughout computing systems.
