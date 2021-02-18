# Digital-electronics-1

# Lab 02-logic

## 1.Preparation tasks

### Binary comparator truth table:

| **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
| :-:                 | :-:        | :-:        | :-:                     | :-:            | :-:                  |
| 0                   | 0 0        | 0 0        | 0                       | 1              | 0                    | 
| 1                   | 0 0        | 0 1        | 0                       | 0              | 1                    |
| 2                   | 0 0        | 1 0        | 0                       | 0              | 1                    |
| 3                   | 0 0        | 1 1        | 0                       | 0              | 1                    |
| 4                   | 0 1        | 0 0    	| 1 			  | 0 		   | 0			  |
| 5                   | 0 1        | 0 1 	| 0 			  | 1 		   | 0			  |
| 6                   | 0 1        | 1 0   	| 0 			  | 0		   | 1			  |
| 7                   | 0 1        | 1 1   	| 0 			  | 0 		   | 1 			  |
| 8                   | 0 0        | 0 0   	| 1 			  | 0 		   | 0			  |
| 9                   | 1 0 	   | 0 1   	| 1			  | 0		   | 0			  |
| 10                  | 1 0        | 1 0  	| 0 			  | 1		   | 0 			  |
| 11                  | 1 0        | 1 1  	| 0			  | 0 		   | 1			  |
| 12                  | 1 1        | 0 0   	| 1			  | 0		   | 0			  |
| 13                  | 1 1        | 0 1   	| 1			  | 0		   | 0 			  |
| 14                  | 1 1 	   | 1 0 	| 1 			  | 0 		   | 0 			  |
| 15                  | 1 1 	   | 1 1 	| 0 			  | 1 		   | 0 			  |


## 2.A 2-bit comparator

### Karnaugh maps for all three functions:
![Screenshot with simulated time waveforms](Images/KarnaughMaps.png)

### Simplified SoP form of the function and simplified PoS form of the function:


## 3.A 4-bit binary comparator

### Listing of VHDL code (design.vhd):
```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity comparator_4bit is
    port(
        a_i           : in  std_logic_vector(4 - 1 downto 0);
        b_i           : in  std_logic_vector(4 - 1 downto 0);

        B_greater_A_o	: out	std_logic;
        B_equals_A_o	: out	std_logic;
	B_less_A_o	: out	std_logic	
        );
end entity comparator_4bit;

architecture Behavioral of comparator_4bit is
begin
    
    B_greater_A_o	<= '1' when (b_i > a_i) else '0';
    B_equals_A_o	<= '1' when (b_i = a_i) else '0';
    B_less_A_o          <= '1' when (b_i < a_i) else '0';

end architecture Behavioral;
```

### Listing of VHDL testbench (testbench.vhd):
```vhdl

```

### Listing of simulator console output:

### Link to EDA Playground:
