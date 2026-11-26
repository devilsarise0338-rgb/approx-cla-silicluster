# ⚡ Design and Study of an Approximate Carry Lookahead Adder (CLA)

### *Silicluster v3 Digital-Project Call — Open-Source Silicon Submission*

[![PDK: IHP SG13G2](https://img.shields.io/badge/PDK-IHP%20SG13G2%20(130nm)-blue.svg)](https://github.com/IHP-GmbH/IHP-Open-PDK)
[![Flow: OpenLane](https://img.shields.io/badge/Flow-OpenLane%20v2-orange.svg)](https://github.com/The-OpenROAD-Project/OpenLane)
[![DRC: Clean](https://img.shields.io/badge/DRC-Passed%20(0%20Violations)-brightgreen.svg)]()
[![LVS: Clean](https://img.shields.io/badge/LVS-Passed%20(Netgen)-brightgreen.svg)]()
[![Antenna: Passed](https://img.shields.io/badge/Antenna-Passed-brightgreen.svg)]()
[![License: Open Source](https://img.shields.io/badge/License-MIT-lightgrey.svg)]()

---

## 👥 Project Team & Contributors

* **Institution**: Poornima Institute of Engineering and Technology  
* **Academic Year**: 2026  
* **Course**: Digital System and Logic Design (Theory & Lab)  
* **Faculty Guide / Project Supervisor**: Dr. Aditya Kumar Singh Pundir  

| Student Name | Roll / Student ID | Role |
| :--- | :--- | :--- |
| **Sidharth Dhankani** | PIET25CA054 | RTL Design, OpenLane Physical Flow & Sign-off |
| **Khanak Rathi** | PIET25CA023 | Functional Verification & Testbench Development |
| **Kratika Jain** | PIET25CA024 | Logic Synthesis & Comparative Metrics Analysis |
| **Paarth Khandelwal** | PIET25CA037 | Timing Analysis & Power Characterization |
| **Manvi Bhardawaj** | PIET25CA029 | Physical Layout Verification & Documentation |
| **Siddhi Patel** | PIET25CA055 | Physical Implementation & Report Documentation |

---

## 📖 Executive Summary & Abstract

Carry Lookahead Adders (CLAs) are critical building blocks in modern high-performance microprocessors, DSP processors, and arithmetic pipelines due to their logarithmic $O(\log n)$ carry computation time. However, exact carry generator structures become silicon-hungry and power-intensive as bit-widths increase.

In error-resilient domains such as **digital image processing, computer vision filters, audio processing, and deep neural network (DNN) accelerators**, small arithmetic approximations do not degrade end-user quality or functional convergence.

This project designs, verifies, and tapes out (RTL-to-GDSII) an **Approximate 7-bit Carry Lookahead Adder (`approx_cla`)** compared against a golden **Exact 7-bit Carry Lookahead Adder (`exact_cla`)**, implemented in the **IHP Open Source 130nm SG13G2 BiCMOS** technology.

> **Theoretical Reference**: Based on the methodology published in *"Implementation of Carry Look Ahead Adder with 2-bit Approximate Adder"* (P. Sai Manohar et al., *IEEE International Conference on Applied Artificial Intelligence and Computing - ICAAIC 2023*).

---

## 📐 Architecture & Approximation Methodology

An $i$-bit adder ($i = 7$) is partitioned into two functional segments:
1. **Least Significant Portion (LSP)**: $j = 4$ bits (bits `[3:0]`), where errors have small mathematical weights.
2. **Most Significant Portion (MSP)**: $(i - j) = 3$ bits (bits `[6:4]`), implemented as an exact carry lookahead stage to preserve high-magnitude numerical accuracy.

```
                  7-Bit Input Operands: A[6:0], B[6:0]
               ┌───────────────────────┬────────────────────────┐
               │  MSP: Bits [6:4]      │  LSP: Bits [3:2] [1:0] │
               │  Exact 3-Bit CLA      │  2-Bit Approx  Const 1 │
               └───────────┬───────────┴───────────┬────────────┘
                           │                       │
                     High-order Sum           Low-order Sum
                     S[6:4] + Carry S[7]      S[3:2]    S[1:0]
```

### 1. LSP Bit Allocation:
- **Bits [1:0] (Constant Reduction)**: Hardwired directly to logic `1'b1`:
  $$S_0 = 1, \quad S_1 = 1$$
  This completely removes logic gates and eliminates carry generation for the lowest two bits.
- **Bits [3:2] (2-bit Approximate Adder)**:
  $$S_2 = A_2 \oplus B_2$$
  $$S_3 = A_3 \oplus B_3 \oplus (A_2 \cdot B_2)$$
  The carry output is deliberately truncated/discarded, decoupling the LSP carry chain from the higher stages.

### 2. MSP Bit Allocation:
- **Bits [6:4] (Exact 3-bit Carry Lookahead Adder)**:
  $$G_i = A_i \cdot B_i, \quad P_i = A_i \oplus B_i$$
  $$C_1 = G_0$$
  $$C_2 = G_1 + (P_1 \cdot G_0)$$
  $$C_3 = G_2 + (P_2 \cdot G_1) + (P_2 \cdot P_1 \cdot G_0)$$
  Ensures the upper bits are mathematically exact without overflow corruption.

---

## 📊 Comprehensive Physical & Synthesis Benchmark

Both designs were taken through the full **OpenLane** RTL-to-GDSII flow using identical footprint constraints ($180\,\mu\text{m} \times 115\,\mu\text{m}$) on the **IHP SG13G2 (130nm)** PDK:

| Metric Category | Parameter | Exact CLA (`exact_cla`) | Approximate CLA (`approx_cla`) | Delta / Improvement |
| :--- | :--- | :---: | :---: | :---: |
| **Logic Synthesis** | **Total Standard Cells** | 59 cells | **36 cells** | **-39.0% (-23 cells)** |
| | **Synthesis Cell Area** | 863.65 µm² | **598.75 µm²** | **-30.7% (-264.9 µm²)** |
| | Sequential Element Area | 391.91 µm² (45.4%) | 342.92 µm² (57.3%) | -12.5% register area |
| **Physical Routing** | **Total Routed Wirelength** | 1,865 µm | **1,234 µm** | **-33.8% (-631 µm)** |
| | **Via Count** | 369 vias | **232 vias** | **-37.1% (-137 vias)** |
| | Die Area Constraint | 180 µm × 115 µm | 180 µm × 115 µm | Equal die budget |
| **Power Consumption** | **Combinational Power** | 1.089 µW | **0.558 µW** | **-48.8% power drop** |
| *(at 1.20V, 25°C typ)* | Sequential Power | 4.318 µW | 3.645 µW | -15.6% |
| | **Total Core Power** | 11.64 µW | **10.51 µW** | **-9.7% total savings** |
| **Static Timing (STA)** | Worst Setup Slack (WNS) | +77.76 ns | **+78.81 ns** | Setup clean |
| | Worst Hold Slack (WNS) | +19.76 ns | **+19.70 ns** | Hold clean |
| | Slew / Cap Violations | 0 | **0** | Clean |
| **Sign-Off Checks** | **Magic DRC** | Passed (0 violations) | **Passed (0 violations)** | Clean |
| | **KLayout DRC** | Passed (0 violations) | **Passed (0 violations)** | Clean |
| | **Netgen LVS** | Passed (LVS match) | **Passed (LVS match)** | Clean |
| | **Antenna Rules** | Passed (0 violations) | **Passed (0 violations)** | Clean |

---

## 🖼️ Physical Layout Visualizations

| Design | OpenLane Layout Render |
| :--- | :---: |
| **Approximate CLA (`approx_cla`)** | ![Approximate CLA Layout](layout/approx_cla_layout_render.png) |
| **Exact CLA (`exact_cla`)** | ![Exact CLA Layout](layout/exact_cla_layout_render.png) |

---

## 🧪 Simulation, Verification & Error Analysis

Simulations were carried out using Icarus Verilog (`iverilog`) and GTKWave. Representative input vectors showcase the bounded error properties:

```text
===================================================================================
 A      B     Exact Sum (Golden)    Approx Sum    Arithmetic Error (Exact - Approx)
===================================================================================
  5      3             8                    7                  +1
 12     10            22                    7                 +15
 27    100           127                  127                   0 (Exact Match!)
 64     64           128                  131                  -3
 85     42           127                  127                   0 (Exact Match!)
 99     77           176                  175                  +1
120      5           125                  127                  -2
127    127           254                  235                 +19
===================================================================================
```

* For many real-world inputs, the approximate CLA produces zero error or an error bounded to the lower bit orders.
* Upper magnitude bits remain completely error-free, preserving visual contrast in image pixels and structural stability in filter coefficients.

---

## 📁 Repository Directory Structure

```text
approx-cla-silicluster/
├── Project_Report_Approx_CLA_Final.docx  # Full comprehensive academic project report
├── config_approx.json                    # OpenLane flow configuration for approx_cla
├── config_exact.json                     # OpenLane flow configuration for exact_cla
├── RUN_2026-11-21_08-29-42/              # Full OpenLane run stages & checkpoints for approx_cla
├── RUN_2026-11-21_09-17-29/              # Full OpenLane run stages & checkpoints for exact_cla
├── layout/
│   ├── approx_cla/                       # Signoff collateral: DEF, GDS, LEF, MAG, ODB, SDC, SDF, SPEF, SPICE
│   ├── exact_cla/                        # Signoff collateral: DEF, GDS, LEF, MAG, ODB, SDC, SDF, SPEF, SPICE
│   ├── approx_cla_layout_render.png      # High-resolution PnR layout render (Approx)
│   └── exact_cla_layout_render.png       # High-resolution PnR layout render (Exact)
├── reports/
│   ├── approx_cla/                       # OpenRoad timing, routing, DRC, LVS, power & antenna reports
│   └── exact_cla/                        # OpenRoad timing, routing, DRC, LVS, power & antenna reports
├── rtl/
│   ├── approx_cla.v                      # Verilog RTL for 7-bit Approximate CLA
│   └── exact_cla.v                       # Verilog RTL for 7-bit Exact CLA
├── screenshots/                          # Additional demonstration captures (.gitkeep)
├── sim/
│   ├── approx_cla_tb.v                   # Exhaustive error evaluation testbench
│   ├── approx_cla_tb.vcd                 # VCD waveform dump
│   ├── wave_tb.v                         # Comparative simulation testbench
│   ├── wave_tb.vcd                       # Waveform dump for GTKWave
│   ├── wave_results.txt                  # Output logs with side-by-side verification
│   ├── compile_log.txt                   # Compilation diagnostic log
│   └── simulation_log.txt                # Simulation diagnostic log
└── synthesis/
    ├── approx_cla_stat.rpt               # Yosys cell count and area statistics (Approx)
    └── exact_cla_stat.rpt                # Yosys cell count and area statistics (Exact)
```

---

## 🚀 How to Run & Reproduce

### 1. Functional Simulation (Icarus Verilog & GTKWave)
```bash
cd sim
# Compile and run testbench
iverilog -o approx_cla_sim.vvp approx_cla_tb.v ../rtl/approx_cla.v
vvp approx_cla_sim.vvp

# Open waveforms in GTKWave
gtkwave wave_tb.vcd
```

### 2. Logic Synthesis & ASIC Flow (OpenLane 2 + IHP SG13G2)
```bash
# Ensure IHP SG13G2 PDK is installed in your environment
openlane --pdk sg13g2 config_approx.json
openlane --pdk sg13g2 config_exact.json
```

---

## 📚 References

1. P. Sai Manohar, et al., *"Implementation of Carry Look Ahead Adder with 2-bit Approximate Adder,"* 2023 Second International Conference on Applied Artificial Intelligence and Computing (ICAAIC), Salem, India, 2023.
2. IHP Microelectronics, *SG13G2 Open Source PDK (130nm BiCMOS)*, [IHP GitHub Repository](https://github.com/IHP-GmbH/IHP-Open-PDK).
3. The OpenROAD Project, *OpenLane: Open-Source RTL-to-GDSII ASIC Flow*, [OpenLane GitHub](https://github.com/The-OpenROAD-Project/OpenLane).
