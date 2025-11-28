# VHDL-Slot-Machine

🎰 Welcome to the digital casino where the house is written in VHDL!

<img width="1536" height="1024" alt="8bd2cd9a-70fe-4e59-945d-a5eea5c1a5b0" src="https://github.com/user-attachments/assets/3420ac78-2432-4543-913e-006fc3f99e70" />

## Description
This project brings a classic slot machine to life inside an FPGA simulator. No coins, no noise, just pure HDL-powered gambling energy.

Your luck is controlled by signals like start, fin, and reset—because nothing says Vegas like toggling bits at nanosecond speed. The 7-segment display tells you what destiny rolled for you, and a 16-bit result bus delivers your “jackpot”… or your disappointment.

The repository includes a full testbench that spins the slots automatically—perfect for debugging or pretending you’re coding in a casino.

## Features
- A slot machine that never asks for money
- Fully modular VHDL design
- Testbench-supported gameplay (simulated luck included)
- Clock generator because time must flow—even in HDL
- 7-segment display outputs for stylish results
- 16-bit “winning” output bus

## File Structure
```
/top_tragaperras.vhd        # Main slot-machine module
/tb_TRAGAPERRAS.vhd         # The automated gambler (testbench)
```

## How It Works?
- `start` → Pull the lever 🎬  
- `fin` → Stop the reels  
- `rst` → Pretend nothing happened  
- `clk` → Keeps the magic running  
- Outputs → Your destiny, displayed digitally

## Tools Used
- VHDL  
- ModelSim / Vivado  

## Author
Lucía Martínez Martínez
