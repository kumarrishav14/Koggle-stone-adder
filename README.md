# Koggle-Stone adder

Design and TB for configurable width **Kogge-Stone** adder.

## How to use

### RTL

All the RTL file is present in `rtl/` directory. By default the RTL is present for 32-bit data, but can be easily re-configured for any other data widths.

FOC is created using a python script as there are lot of repetitive code. To create a FOC for a particular script use below command:

```shell
python3 rtl/gen_foc.py <width>
```

A example `foc.v` file for 32-bit data width is provided in `rtl/` directory.

### Test Bench

RTL data width can be reconfigured using `WIDTH` paramter in TB. Test bench is a self checker and it will generate `NUM_PKT` packets and check the results.

> If data widths other than 32-bit is needed, then gen_foc.py script should be run before starting TB.

### Delay Simulation

Delays can be simulated in the code using `GATE_DELAY` define which needs to be passed with compile options.

## More on Kogge-Stone adder

Kogge-Stone adder is considered to be one of the most efficient adder and widely used in high-performance appilcation like FIR filter, HPCs, etc where data width is considerably high.

### Design Principle

A Kogge-Stone adder is a type of fast adder that uses a parallel prefix network to compute the carry signals for each bit position in parallel. It consists of three main stages: _pre-processing_, _carry look-ahead_, and _post-processing_.

#### Pre-processing stage

In the pre-processing stage, the adder computes the generate and propagate signals for each pair of input bits. The generate signal indicates that a carry is generated at that position, while the propagate signal indicates that a carry is propagated from the previous position. These signals are given by the following logic equations:

$$
g_i = a_i \text { AND } b_i
$$

$$
p_i = a_i \text { XOR } b_i
$$

#### Fundamental Carry operation

In this stage, the adder computes the group generate and propagate signals for each block of bits. The group generate signal indicates that a carry is generated within that block, while the group propagate signal indicates that a carry is propagated through that block. These signals are given by the following recursive logic equations:

$$
G_{i:j} = p_{i:k+1} \text { OR } (p_{i:k+1} \text { AND } g_{k:j})
$$

$$
P_{i:j} = p_{i:k+1} \text { AND } g_{k:j}
$$

where $i > k > j$; $p,\ g$ is the output from previous stage.

The carry look-ahead stage uses a tree-like structure to compute the group signals in logarithmic time. The Kogge-Stone adder uses a balanced tree with minimum fan-out, which reduces the delay but increases the area and wiring complexity.

The last sub-stage of the carry look-ahead stage compute the carry bits using following logic:

$$
C_i = G_i \text { OR } (P_i \text { AND } c_{i-1})
$$

where $c_{i-1}$ is $c_{in}$ for 1st bit.

#### Post processing stage

In the post-processing stage, the adder computes the sum bits by XORing the propagate signals with the corresponding carry signals. The sum bits are given by the following logic equation:

$$
s_i = p_i \text { XOR } c_{i-1}
$$

where $c_0$ ($c_{i-1}$ for 1st bit) is the carry-in bit.

### Advantage

- Very fast as carry is generated in $O(\log_2 n)$ time, where $n$ is the number of bits.
- Fan-out is minimum which also decreases the overall gate-delay.

### Disadvantage

- Tree like strcuture increases the wire in design, thus routing becomes tough.
- Overall number of cell required is also high increasing the area and power consumption.
