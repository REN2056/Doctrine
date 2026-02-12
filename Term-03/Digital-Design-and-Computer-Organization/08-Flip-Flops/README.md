# Experiment 08 – Design of SR, JK, and D Flip-Flops Using Verilog HDL

## Objective

To design and simulate different types of flip-flops — SR, JK, and D — using Verilog HDL, and analyze their role as fundamental memory elements in sequential digital systems.

---

## Conceptual Background

Flip-flops are **sequential logic elements** capable of storing one bit of information.

Unlike combinational circuits, flip-flop outputs depend on:
- Current inputs
- Previous state
- Clock signal

This introduces the concept of **state** and **time dependency** into digital design.

Flip-flops are edge-triggered devices and change state only on specified clock transitions (rising or falling edge).

---

## Types of Flip-Flops

### 1. SR (Set-Reset) Flip-Flop

Inputs:
- S (Set)
- R (Reset)
- Clock

Behavior:
- S = 1, R = 0 → Set output
- S = 0, R = 1 → Reset output
- S = 0, R = 0 → No change
- S = 1, R = 1 → Invalid condition

The SR flip-flop is the most basic sequential storage element.

---

### 2. JK Flip-Flop

Inputs:
- J
- K
- Clock

Behavior:
- J = 0, K = 0 → No change
- J = 0, K = 1 → Reset
- J = 1, K = 0 → Set
- J = 1, K = 1 → Toggle

The JK flip-flop eliminates the invalid state of SR and introduces toggle functionality.

---

### 3. D (Data) Flip-Flop

Input:
- D
- Clock

Behavior:
- Q(next) = D at clock edge

The D flip-flop simplifies input structure and is widely used in registers and storage elements.

---

## Design Approach

1. Implemented each flip-flop using behavioral modeling with `always` blocks.
2. Used clock edge sensitivity (`posedge clk`) for state transitions.
3. Maintained proper reset and state retention logic.
4. Ensured correct next-state behavior based on truth tables.

---

## Implementation Strategy

- Designed each flip-flop as an independent module.
- Used non-blocking assignments for sequential logic.
- Verified state retention between clock cycles.
- Ensured proper handling of invalid conditions (SR case).

---

## Testbench & Verification

- Generated periodic clock signal.
- Applied input combinations across clock cycles.
- Verified:
  - State changes only on clock edge
  - Correct toggle behavior (JK)
  - Accurate data storage (D flip-flop)
- Observed waveform timing to confirm synchronous operation.

---

## Key Observations

- Sequential logic introduces time dependency into digital systems.
- Clock synchronization is critical for predictable behavior.
- D flip-flops simplify design of larger memory structures.
- Toggle capability in JK flip-flop enables counter design.

---

## Systems Insight

Flip-flops are the foundation of all memory elements in digital systems.

They are used in:

- Registers
- Counters
- Shift registers
- Finite State Machines (FSMs)
- Processor pipelines

Modern CPUs contain millions to billions of flip-flops forming cache, registers, and control logic.

This experiment marks the transition from combinational logic design to state-based system architecture, forming the foundation for sequential digital systems.
