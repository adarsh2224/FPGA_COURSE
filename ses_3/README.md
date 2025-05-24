# SES_3 ASSIGNMENT

### 1] synthesis 8 i/p function & find number of slices

![Screenshot 2025-05-23 190243](https://github.com/user-attachments/assets/7c980bfc-19b1-414b-bc3e-4872b4e2fd6e)

![Screenshot 2025-05-23 190206](https://github.com/user-attachments/assets/fca03a49-0845-48a5-ab75-9e0a0c726c83)

In above pictures we can see that when we implement a 8 input function we get 2 slices.

### 2] implement negative edge detector and positive edge detector and simulate

I implemented a positive edge detector on an FPGA to detect rising edges of a digital input signal. The design uses a simple synchronous logic approach where the current and previous states of the signal are compared on each clock cycle. When the current signal is high and the previous state is low, a rising edge is detected. This is indicated by a one-clock-cycle pulse on the output signal. The design was coded in Verilog and synthesized for the target FPGA device, ensuring compatibility with real-time hardware operation.

The primary application of a positive edge detector is in event detection, such as button presses, pulse counting, or triggering control logic only on transitions. Unlike a simple level detector, this edge detector responds only when a transition occurs, reducing unnecessary processing.

![p_edge](https://github.com/user-attachments/assets/9103f1e1-cc5e-4e5d-b0cc-fd99b476e15b)

![p_edge_s](https://github.com/user-attachments/assets/f8c45953-ae4b-453f-bf00-0aa72791801c)

above is the simulation of positive edge detector

### 3] WRITE THE I/O VERILOG CODE FOR SPI CONTROLLER

