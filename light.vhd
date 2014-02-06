LIBRARY ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--USE IEEE.STD_LOGIC_ARITH.ALL;
--USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY light IS
	PORT ( clk    : in  std_logic;
	       x1, x2 : IN STD_LOGIC ;
          y1     : OUT STD_LOGIC;
			 y2     : out std_logic;--100KHz output
			 y3     : out std_logic;
			 y5     : out std_logic;
			 sel    : OUT STD_LOGIC;
		    seln   : OUT STD_LOGIC;
			 LED0   : OUT STD_LOGIC;
			 LED1   : OUT STD_LOGIC;		 
			 LED2   : OUT STD_LOGIC;
			 LED3   : OUT STD_LOGIC;
			 LED4   : OUT STD_LOGIC;
			 LED5   : OUT STD_LOGIC;
			 LED6   : OUT STD_LOGIC;
			 LED7   : OUT STD_LOGIC);--1Hz output
	
END light ;

ARCHITECTURE LogicFunction OF light IS
   signal foo : std_logic;--100KHz
	signal foo2 : std_logic;
	signal count : unsigned(26 DOWNTO 0);--count for 100KHz
	signal count2: unsigned(26 DOWNTO 0);
	signal count3: unsigned(4 DOWNTO 0);--COUNT FOR 200MHZ -->10MHz
	signal last :std_LOGIC;
	signal c0, locked : std_logic;

component pll
	PORT(
		inclk0		: IN STD_LOGIC  := '0';
		c0				: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC);
   end component;
	
BEGIN
	sel <= '1';
	seln <= '0';
	--LED0 <= '0' when x1='1' else 'Z';
	LED1 <= '0';
	LED2 <= 'Z';
	LED3 <= 'Z';
	LED4 <= 'Z'; -- off
-- LED5 <= '0' when locked='1' else 'Z';
--	LED6 <= '0'; when foo='1' else 'Z';

   mypll : pll port map(
	    inclk0 => clk, -- 125 MHz in
		 c0     => c0,
		 locked => locked);
		 
 	y1 <= c0; --output 200MHz	 connect to x1
--	y2 <= clk; --output 125MHz	 
	
--	process(clk) is --62.5MHz, duty cycle 50%
--		BEGIN
--		if rising_edge(clk) then
--			foo2 <= not foo2;
--		end if;
--	end process;
	
	process(clk) is --100KHz, duty cycle 50%
		BEGIN
		IF rising_edge(clk) THEN		
			If (count = 625) Then			
					count <= (others => '0');
					foo <= not foo;
			ELSE
					count <= count + 1;
	      end if;
	   end if;
	end process;
	y3 <= foo; --output 100KHz connect to x2
	
	process(x1) is 
		BEGIN
		if rising_edge(x1) then -- c0 = 200MHz f00=100KHz
			if (last = '0' and x2 = '1') then
				foo2 <= '1'; 
				count3 <= (others => '0');
			else
				if (count3 = 9) then --foo 100KHz
					count3 <= (others => '0');
					foo2 <= not foo2;
				else
					count3 <= count3 + 1;
				end if;
			end if;
		   last <= x2;
		end if;
	end process;
   y5 <= foo2;
	
--	process(clk) is --1Hz, duty cycle change to 25%
--		BEGIN
--		IF rising_edge(clk) THEN		
--			If (count2 = 125_000_000) Then	
--					count2 <= (others => '0');
--			ELSE
--					count2 <= count2 +1;
--	      end if;
--	   end if;
--	end process;
--	
--	process(clk) is --1Hz, duty cycle change to 25%
--		BEGIN
--		IF rising_edge(clk) THEn	  
--			If (count2 <= 31_250_000) Then	
--					LED6 <='0';
--			ELSE
--					LED6 <='Z';
--	      end if;
--	   end if;
--	end process;

END LogicFunction ;