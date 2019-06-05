---------------------------------------------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (15/06/2018, 13:12:14)
--      by the Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 2.10.300 (Jan 19, 2018)
-- Copyright(c)2002-2018 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
---------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;


ENTITY UnnamedCircuit IS
  PORT( 
    ---------------------------------------------------------------------------------> Inputs:
    ia:           IN  std_logic_vector( 3 downto 0 );
    ib:           IN  std_logic_vector( 3 downto 0 );
    ---------------------------------------------------------------------------------> Outputs:
    og:           OUT std_logic 
    ---------------------------------------------------------------------------------
    );
END UnnamedCircuit;


ARCHITECTURE structural OF UnnamedCircuit IS 

  ----------------------------------------------------------------------------------> Components:
  COMPONENT AND2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR4_gate IS
    PORT( I0,I1,I2,I3: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT EXOR2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;

  ----------------------------------------------------------------------------------> Signals:
  SIGNAL S001: std_logic;
  SIGNAL S002: std_logic;
  SIGNAL S003: std_logic;
  SIGNAL S004: std_logic;
  SIGNAL S005: std_logic;
  SIGNAL S006: std_logic;
  SIGNAL S007: std_logic;
  SIGNAL S008: std_logic;
  SIGNAL S009: std_logic;
  SIGNAL S010: std_logic;
  SIGNAL S011: std_logic;
  SIGNAL S012: std_logic;
  SIGNAL S013: std_logic;


BEGIN -- structural

  ----------------------------------------------------------------------------------> Input:
  S001 <= ia(0);
  S003 <= ia(1);
  S005 <= ia(2);
  S007 <= ia(3);
  S002 <= ib(0);
  S004 <= ib(1);
  S006 <= ib(2);
  S008 <= ib(3);

  ----------------------------------------------------------------------------------> Output:
  og <= S013;

  ----------------------------------------------------------------------------------> Component Mapping:
  C040: AND2_gate PORT MAP ( S003, S004, S010 );
  C041: OR2_gate PORT MAP ( S001, S002, S009 );
  C042: OR2_gate PORT MAP ( S005, S006, S011 );
  C043: EXOR2_gate PORT MAP ( S007, S008, S012 );
  C067: OR4_gate PORT MAP ( S010, S011, S009, S012, S013 );

END structural;
