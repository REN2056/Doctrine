# Experiment 05 – Design of a Decimal (BCD) Adder Using Verilog HDL

## Objective

To design and simulate a Decimal Adder using Verilog HDL that performs Binary Coded Decimal (BCD) addition and applies necessary correction logic to produce valid decimal outputs.

---

## Conceptual Background

Although digital systems operate in binary, many real-world applications require decimal representation. Examples include:

- Calculators
- Digital clocks
- Financial systems
- Display interfaces

Binary Coded Decimal (BCD) represents each decimal digit (0–9) using a 4-bit binary code.

Valid BCD representations:
0000 (0) to 1001 (9)

Binary values from 1010 (10) to 1111 (15) are invalid in BCD.

---

## BCD Addition Principle

When two BCD digits are added:

1. Perform standard 4-bit binary addition.
2. If the result:
   - Exceeds 9 (1001), OR
   - Produces a carry-out,
   
   Then add 6 (0110) to correct the result.

Why add 6?

Because:
- Maximum valid BCD digit is 9.
- Binary values 10–15 are invalid.
- Adding 6 shifts invalid sums back into valid BCD range and generates proper carry.

---

## Design Approach

1. Implemented a 4-bit binary adder.
2. Detected invalid BCD conditions:
   - Sum > 9
   - Carry-out from binary addition
3. Applied correction logic:
   - Added 6 (0110) when required.
4. Generated:
   - Corrected BCD sum
   - Decimal carry-out

---

## Implementation Strategy

- Designed modular binary adder block.
- Implemented correction detection logic using combinational conditions.
- Used conditional addition of 6 via secondary adder stage.
- Ensured clean signal separation between:
  - Raw binary sum
  - Corrected BCD sum

---

## Testbench & Verification

- Tested all valid BCD input combinations (0–9).
- Verified:
  - Correct decimal output
  - Proper correction when sum > 9
  - Accurate carry generation
- Observed waveform transitions to confirm correction stage activation.

---

## Key Observations

- BCD arithmetic requires post-addition correction logic.
- Decimal systems increase hardware complexity compared to pure binary arithmetic.
- Conditional correction introduces additional propagation delay.
- Human-readable number systems require specialized arithmetic circuits.

---

## Systems Insight

BCD arithmetic is commonly used in:

- Digital displays
- Embedded systems with decimal interfaces
- Financial and accounting hardware

Although binary arithmetic is more hardware-efficient, BCD simplifies decimal conversion and display logic.

This experiment demonstrates how hardware design adapts to human-centric numerical systems, balancing efficiency with usability.

It highlights the trade-off between computational simplicity and representational convenience in digital systems.
