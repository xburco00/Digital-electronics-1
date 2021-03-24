# Digital-electronics-1

# Lab 07-ffs

## 1.Preparation tasks

### Characteristic equations and completed tables for D, JK, T flip-flops:
   | **D** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | No change |
   | 0 | 1 | 0 | Invert(Toggle) |
   | 1 | 0 | 1 | Invert(Toggle) |
   | 1 | 1 | 1 | No change |

   | **J** | **K** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | 0 | No change |
   | 0 | 0 | 1 | 1 | No change |
   | 0 | 1 | 0 | 0 | Reset |
   | 0 | 1 | 1 | 0 | Reset |
   | 1 | 0 | 0 | 1 | Set |
   | 1 | 0 | 1 | 1 | Set |
   | 1 | 1 | 0 | 1 | Toggle |
   | 1 | 1 | 1 | 0 | Toggle |

   | **T** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | No change |
   | 0 | 1 | 1 | No change |
   | 1 | 0 | 1 | Invert(Toggle) |
   | 1 | 1 | 0 | Invert(Toggle) |

\begin{align} 
    q{n+1}^{D} = &~ d &\
    q{n+1}^{JK} =&~ j\overline{q}{n}\ +\overline{k},q{n} &\
    q{n+1}^{T} = &~ t\overline{q}{n}\ +\overline{t},q_{n} 
\end{align}


## 2.D latch

### VHDL code listing of the process ```p_d_latch``` with syntax highlighting:
```vhdl

```

### Listing of VHDL reset and stimulus processes from the testbench ```tb_d_latch``` file with syntax highlighting and asserts:
```vhdl

```

### Screenshot with simulated time waveforms; always display all inputs and outputs:

![Simulated time Waveforms](Images/.png)


## 3.Flip-flops

### VHDL code listing of the processes ```p_d_ff_arst```, ```p_d_ff_rst```, ```p_jk_ff_rst```, ```p_t_ff_rst``` with syntax highlighting:
```vhdl

```

### Listing of VHDL clock, reset and stimulus processes from the testbench files with syntax highlighting and asserts:
```vhdl

```

### Screenshot, with simulated time waveforms; always display all inputs and outputs:
![Simulated time Waveforms](Images/.png)

## 4.Shift register

### Image of the shift register schematic
![Image of the shift](Images/.png)