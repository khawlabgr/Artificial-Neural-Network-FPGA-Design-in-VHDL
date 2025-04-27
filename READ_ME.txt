                                ---------------------------------------------------
                                   Artificial Neural Network FPGA Design in VHDL
                                ---------------------------------------------------

## Project Overview

This project implements a simple "neuron model" using VHDL, designed to run on FPGA. It integrates several components, including multiplexers, ROM, multipliers, summing units, and a sigmoid function to simulate the behavior of a basic artificial neuron. The core idea is to demonstrate a fundamental computational unit of artificial neural networks, which is crucial in the design and implementation of more complex deep learning models.

---

## Key Components:

- Counter : A counter component used to generate a control signal for the multiplexer, which helps select the appropriate input for processing.
- Multiplexer: Selects inputs based on the control signals to pass to the next stage.
- ROM (Read-Only Memory): Stores the weights or parameters for the neuron.
- Multiplier: Performs multiplication of inputs with weights.
- Adder: Adds the products and computes the weighted sum.
- Register: Stores the result and prepares it for further computation.
- Sigmoid Function: Applies a non-linear activation function to the result of the summation to produce the output.

The design is intended for FPGA platforms and utilizes "Xilinx ISE" for synthesis and simulation.

---

## Features

- Behavioral model: The neuron is implemented using VHDL in a modular fashion, where each component is represented as a separate entity.
- Flexible Input: The neuron can process multiple inputs (e.g., `e0` to `e7`), making it scalable.
- Sigmoid Activation: The output is passed through a sigmoid activation function, typical in neural network implementations.

---

## Project Structure

This repository includes the following files:

- Neuron.ise: The main Xilinx ISE project file.
- Neuron.vhd: The VHDL code for the neuron.
- rom.vhd: VHDL code for the ROM component used to store weights.
- sum.vhd: VHDL code for the summing unit of the neuron.
- multiplieur8.vhd: VHDL code for the multiplier used in the neuron.
- segmoid.vhd: VHDL code for the sigmoid activation function.
- Add16.vhd: VHDL code for the 16-bit adder used in the design.

---

## Usage

1. Requirements:
   - Xilinx ISE: The project has been designed and tested using the Xilinx ISE toolchain.
   - FPGA Board: This project is intended to be implemented on an FPGA device (target board should be compatible with Xilinx ISE tools).

2. Compilation:
   - Open the `Neuron.ise` file in Xilinx ISE.
   - Synthesize the design and generate the bitstream.
   - Program the FPGA with the generated bitstream to run the neuron model.

3. Testbench:
   - The testbench files are not included in this repository. However, you can easily create a testbench to verify the functionality of the neuron by simulating the VHDL components in your preferred simulation environment (e.g., ModelSim).

---

## Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute to the development or enhancement of this project.

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.



