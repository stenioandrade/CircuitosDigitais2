---------------------------------------------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (15/06/2018, 13:12:14)
--      by the Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 2.10.300 (Jan 19, 2018)
-- Copyright(c)2002-2018 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
---------------------------------------------------------------------------------------------------

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY AND2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END AND2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF AND2_gate IS
BEGIN
  O <= (I0 and I1);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY OR2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END OR2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF OR2_gate IS
BEGIN
  O <= (I0 or I1);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY OR4_gate IS
  PORT( I0,I1,I2,I3: IN std_logic;
        O: OUT std_logic );
END OR4_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF OR4_gate IS
BEGIN
  O <= (I0 or I1 or I2 or I3);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY EXOR2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END EXOR2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF EXOR2_gate IS
BEGIN
  O <= (I0 xor I1);
END behavioral;



