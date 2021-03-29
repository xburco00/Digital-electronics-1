----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2021 16:19:36
-- Design Name: 
-- Module Name: tb_jk_ff_rst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_jk_ff_rst is
--  Port ( );
end tb_jk_ff_rst;

architecture Behavioral of tb_jk_ff_rst is

    constant c_CLK_100MHZ_PERIOD : time  := 10 ns;
    
    signal s_CLK_100MHz          :  std_logic;
    
    signal s_rst                 :  std_logic; 
    signal s_j                   :  std_logic;
    signal s_k                   :  std_logic;  
    signal s_q                   :  std_logic;
    signal s_q_bar               :  std_logic;

begin
    uut_jk_ff_rst: entity work.jk_ff_rst
    port map(
        clk   => s_clk_100MHz,
        rst   => s_rst,
        j     => s_j,
        k     => s_k,
        q     => s_q,
        q_bar => s_q_bar
        );

-------------------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 40 ms loop        
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;
    
    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------

     p_reset_gen : process
        begin
            s_rst <= '0';
            wait for 28 ns;
            
            s_rst <= '1';
            wait for 13 ns;
    
            s_rst <= '0';
            
            wait for 47 ns;
            
            s_rst <= '1';
            wait for 33 ns;
            
            wait for 660 ns;
            s_rst <= '1';
    
            wait;
        end process p_reset_gen;

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        s_j  <= '0';
        s_k  <= '0';
        
        wait for 37 ns;
        assert ((s_rst = '0') and (s_j = '0') and (s_k = '0') and (s_q = '0') and (s_q_bar = '1'))
	    report "Test 'no change' failed for reset low, after clk rising when s_j = '0' and s_k = '0'" severity error;
	    
	    wait for 2 ns;
	    s_j  <= '1';
	    s_k  <= '0';
	    wait for 6 ns;
	    
	    assert ((s_rst = '0') and (s_j = '1') and (s_k = '0') and (s_q = '1') and (s_q_bar = '0'))
	    report "Test 'set' failed for reset low, after clk rising when s_j = '1' and s_k = '0'" severity error;
	    
	    wait for 1 ns;
	    s_j  <= '0';
	    s_k  <= '1';
	    wait for 13 ns;
	    
	    assert ((s_rst = '0') and (s_j = '0') and (s_k = '1') and (s_q = '0') and (s_q_bar = '1'))
	    report "Test 'reset' failed for reset low, after clk rising when s_j = '0' and s_k = '1'" severity error;
	    
	    wait for 1 ns;
	    s_j  <= '1';
	    s_k  <= '0';
	    wait for 7 ns;
	    s_j  <= '1';
	    s_k  <= '1';
	    
	    wait for 8 ns;
	    
	    assert ((s_rst = '0') and (s_j = '1') and (s_k = '1') and (s_q = '0') and (s_q_bar = '1'))
	    report "Test 'toggle' failed for reset low, after clk rising when s_j = '1' and s_k = '1'" severity error;
	    
	    wait for 2 ns;
	    s_j  <= '0';
	    s_k  <= '0';
	    wait for 7 ns;
	    s_j  <= '0';
	    s_k  <= '1';
	    wait for 7 ns;
	    s_j  <= '1';
	    s_k  <= '0';
	    wait for 7 ns;
	    s_j  <= '1';
	    s_k  <= '1';
           
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
