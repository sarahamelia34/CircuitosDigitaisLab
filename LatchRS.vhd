library ieee;
use ieee.std_logic_1164.all;

entity latchRS is
port (
	R: in std_logic;
	S: in std_logic;
	Q: out std_logic;
	Qbar: out std_logic;
	enable: in std_logic
	);
	
end latchRS;

architecture archLatchRS of latchRS is 
	signal QSignal, QbarSignal: std_logic;
begin

	Qsignal <= (S and enable) nand QBarSignal;
	QbarSignal <= (R and enable) nand Qsignal;
	Q <= Qsignal;
	Qbar <= QbarSignal;

end archLatchRS;