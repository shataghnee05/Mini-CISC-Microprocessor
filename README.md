# 🧠 Mini CISC-Style MicroProcessor (x86-Inspired)

A modular Verilog implementation of a simplified **CISC-style microprocessor**, inspired by the x86 architecture.  
This processor includes key components of a general x86 such as an ALU, register bank, control unit, instruction memory, program counter and more.

## 📁 Project Structure
```plaintext
Mini-CISC-Processor
│
├── README.md                      # Project documentation
├── LICENSE                        # MIT License information
├── .gitignore                     # Ignore simulation artifacts and editor settings
│
├── src/                           # Source Verilog modules
│   ├── top.v                      # Top-level integration module
│   ├── alu.v                      # Arithmetic Logic Unit
│   ├── cu.v                       # Control Unit
│   ├── inst_reg.v                 # Instruction Register
│   ├── memory.v                   # Instruction/Data Memory
│   ├── pro_count.v                # Program Counter
│   ├── reg_bank.v                 # General Purpose Register Banks
│   └── reg_sel.v                  # Register Selector logic
```

## 🧱 Architecture Overview

### Core Components:
- **Program Counter**: Increments on each instruction cycle.
- **Instruction Memory**: ROM containing hardcoded binary instructions.
- **Instruction Register**: Decodes opcode and register addresses.
- **Register Bank**: 4 general-purpose registers with parallel write.
- **ALU**: Supports arithmetic, logic, and shift operations.
- **Control Unit**: Decides ALU operation and write-back signals.
- **Register Selector**: Selects appropriate operands for ALU.

## 🧾 Instruction Format

Each instruction is 8 bits and follows this format:

```
[ OPCODE (4 bits) | SRC REG (2 bits) | DEST REG (2 bits) ]
```

### Examples:
- `00010110` → `ADD R1, R2`
- `00101011` → `SUB R2, R3`

Unlike traditional assembly syntax where the destination comes first (e.g., ADD R2, R1 means R2 = R2 + R1), this architecture uses the reverse. Here, ADD R1, R2 means → R2 = R2 + R1 which means that the first register is the source and the second is the destination.


## ⚙️ Supported ALU Operations

- **ADD**, **SUB**
- **AND**, **OR**, **XOR**
- **SHL**, **SHR**
-  **INC** ,**DEC**
- Comparison-based control signals handled by CU


## 📌 Future Extensions

- Add support for **JMP**, **CALL**, or memory-load/store instructions
- Integrate **pipeline stages** or **hazard detection**
- Add waveform dumping and testbench interface (coming soon)

---

## 📜 License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for details.
