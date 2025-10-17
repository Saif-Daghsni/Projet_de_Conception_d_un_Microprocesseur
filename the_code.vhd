---------------------------------------------------------------- start sequencer
architecture Behavioral of sequencer is
    type state_type is (S1, S2, S3, S4, S5, S6, S7, S8, S9 ,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37);
    signal current_state : state_type := S1;
begin

-- while A-B >=0
	--A :=A-B
	--C :=C+1
-- end while

    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S2; --kanet 1
            RnW <= '1';
            selA <= '0';
            selB <= '1';
            pc_ld <= '0';
            ir_ld <= '1';
            acc_ld <= '0';
            acc_oe <= '0';
            alufs <= "00";
        elsif rising_edge(clk) then
-- start LOAD A
            case current_state is
                when S1 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1'; 
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S2;
                when S2 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S3;
                when S3 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S4;
                when S4 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '1';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '1';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S5;
--- end LOAD A
--- start SUB B
                when S5 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S6;
                when S6 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S7;
                when S7 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S8;
                when S8 =>
                    RnW    <= '1';
                    selA   <= '1';
                    selB   <= '1';
                    pc_ld  <= '0';
                    ir_ld  <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs  <= "01";--- SUB
                    current_state <= S9;
                when S9 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '1';
                    acc_oe <= '0';
                    alufs  <= "00";
  		    
   		    if acc_15 = '0' then  
   		        current_state <= S10;  -- Continue the code
		    end if;

  		    if acc_15 = '1' then 
   		        current_state <= S36;  -- Stop the code
  		    end if;

 
--END SUB B

--START JGE 4
                when S10 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1';
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                   current_state <= S11;



                when S11 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S12;
                when S12 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S13;


                when S13 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S14;
                when S14 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S15;

--- end JGE 4 

--- start STO A
                when S15 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1'; 
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S16;
                when S16 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S17;
                when S17 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S18;

                when S18 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';

                    current_state <= S19;
                when S19 =>
                    RnW <= '0';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';

                    current_state <= S20;
                when S20 =>
                    RnW <= '0';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '1';

                    current_state <= S21;

--- end STO A

--- satrt LDA C
                when S21 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1'; 
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S22;
                when S22 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S23;
                when S23 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S24;
                when S24 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '1';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '1';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S25;
--- end LDA C

--- start LDO C
                when S25 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1'; 
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S26;
                when S26 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S27;
                when S27 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S28;

                when S28 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';

                    current_state <= S29;
                when S29 =>
                    RnW <= '0';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';

                    current_state <= S30;
                when S30 =>
                    RnW <= '0';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '1';

                    current_state <= S31;
--- end LDO C 

--- start JUMP 0
                when S31 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1';
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S32;
                when S32 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S33;
                when S33 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S34;


                when S34 =>
                    RnW <= '1';
                    selA <= '1';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S35;
                when S35 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '1';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    current_state <= S1;
--- end JUMP 0

-- start STP
                when S36 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '1'; 
                    pc_ld <= '0';
                    ir_ld <= '1';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "00";
                    current_state <= S37;
                when S37 =>
                    RnW <= '1';
                    selA <= '0';
                    selB <= '0';
                    pc_ld <= '0';
                    ir_ld <= '0';
                    acc_ld <= '0';
                    acc_oe <= '0';
                    alufs <= "11";
                    current_state <= S36;
-- end STP 
            end case;
        end if;
    end process;
end Behavioral;
---------------------------------------------------------------- end sequencer

---------------------------------------------------------------- processor completed
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Microprocessor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC );
end entity Microprocessor;

architecture Behavioral of Microprocessor is
    component sequencer is
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               opcode : in STD_LOGIC_VECTOR(3 downto 0);
               acc_Z : in STD_LOGIC;
               acc_15 : in STD_LOGIC;
               selA : out STD_LOGIC;
               selB : out STD_LOGIC;
               RnW : out STD_LOGIC;
               pc_ld : out STD_LOGIC;
               ir_ld : out STD_LOGIC;
               acc_ld : out STD_LOGIC;
               acc_oe : out STD_LOGIC;
               alufs : out STD_LOGIC_VECTOR(1 downto 0) );
    end component;

    component memoire
        port ( RnW : in std_logic;
               add_in : in std_logic_vector(11 downto 0);
               data_in : in std_logic_vector(15 downto 0);
               data_out : out std_logic_vector(15 downto 0) );
    end component;

    component MUXA
        port ( selA: in STD_LOGIC;
               PC: in STD_LOGIC_VECTOR(11 downto 0);
               ADRESSEOP: in STD_LOGIC_VECTOR(11 downto 0);
               Aout: out STD_LOGIC_VECTOR(11 downto 0) );
    end component;

    component MUXB
        port ( selB: in STD_LOGIC;
               E0: in STD_LOGIC_VECTOR(11 downto 0);
               E1: in STD_LOGIC_VECTOR(15 downto 0);
               Bout: out STD_LOGIC_VECTOR(15 downto 0) );
    end component;

    component PC
        port ( pc_ld: in STD_LOGIC;
               DataIn: in STD_LOGIC_VECTOR(15 downto 0);
               PC_out: out STD_LOGIC_VECTOR(11 downto 0) );
    end component;

    component IR
        port ( ir_ld: in STD_LOGIC;
               DataIn: in STD_LOGIC_VECTOR(15 downto 0);
               opcode: out STD_LOGIC_VECTOR(3 downto 0);
               outIR: out STD_LOGIC_VECTOR(11 downto 0) );
    end component;

    component ACC
        port ( acc_ld: in STD_LOGIC;
               DataIn: in STD_LOGIC_VECTOR(15 downto 0);
               ACC_out: out STD_LOGIC_VECTOR(15 downto 0);
               acc_Z: out STD_LOGIC;
               acc_15: out STD_LOGIC );
    end component;

    component acc_OE
        port ( data_in: in STD_LOGIC_VECTOR(15 downto 0);
               acc_oe: in STD_LOGIC;
               data_out: out STD_LOGIC_VECTOR(15 downto 0) );
    end component;

    component UAL
        port ( A: in STD_LOGIC_VECTOR(15 downto 0);
               B: in STD_LOGIC_VECTOR(15 downto 0);
               alufs: in STD_LOGIC_VECTOR(1 downto 0);
               S: out STD_LOGIC_VECTOR(15 downto 0) );
    end component;

    -- signals initialization
    signal selA, selB, RnW, pc_ld, ir_ld, acc_ld, acc_oe_sig : std_logic := '0';
    signal alufs : std_logic_vector(1 downto 0) := (others => '0');
    signal opcode : std_logic_vector(3 downto 0) := (others => '0');
    signal acc_Z, acc_15 : std_logic := '0';
    signal mem_data_out, acc_out, alu_result, alu_B, oe_out : std_logic_vector(15 downto 0) := (others => '0');
    signal PC_out, IR_out : std_logic_vector(11 downto 0) := (others => '0');
    signal add_in : std_logic_vector(11 downto 0) := (others => '0');

begin
    sequencer1: sequencer port map(
        clk=>clk,
        reset=>reset,
        opcode=>opcode,
        acc_Z=>acc_Z,
        acc_15=>acc_15,
        selA=>selA,
        selB=>selB,
        RnW=>RnW,
        pc_ld=>pc_ld,
        ir_ld=>ir_ld,
        acc_ld=>acc_ld,
        acc_oe=>acc_oe_sig,
        alufs=>alufs);

    Memoire1: memoire port map(
        RnW=>RnW,
        add_in=>add_in,
        data_in=>oe_out,
        data_out=>mem_data_out);

    MUXA1: MUXA port map(selA=>selA, PC=>PC_out(11 downto 0), ADRESSEOP=>IR_out, Aout=>add_in);

    MUXB1: MUXB port map(selB=>selB, E0=>add_in, E1=>mem_data_out, Bout=>alu_B);

    PC1: PC port map(pc_ld=>pc_ld, DataIn => alu_result , PC_out=>PC_out);

    IR1: IR port map( ir_ld=>ir_ld, DataIn=>mem_data_out, opcode=>opcode, outIR=>IR_out);

    ACC1: ACC port map( acc_ld=>acc_ld, DataIn=>alu_result, ACC_out=>acc_out, acc_Z=>acc_Z, acc_15=>acc_15);

    acc_OE1 : acc_OE port map(data_in=>acc_out, acc_oe=>acc_oe_sig, data_out=>oe_out);

    UAL1: UAL port map(A=>acc_out, B=>alu_B, alufs=>alufs, S=>alu_result);

end Behavioral;
---------------------------------------------------------------- end processor

---------------------------------------------------------------- start memoire
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memoire is
    Port ( RnW : in std_logic;
           add_in : in std_logic_vector(11 downto 0);
           data_in : in std_logic_vector(15 downto 0);
           data_out : out std_logic_vector(15 downto 0) );
end memoire;

architecture Behavioral of memoire is
    type ram_type is array (0 to 4095) of std_logic_vector(15 downto 0);
    signal RAM : ram_type := (
        -- Program
        0 => x"0010", -- LDA @A
        1 => x"3011", -- SUB @B
        2 => x"5004", -- JGE @4
        3 => x"7000", -- STP
        4 => x"1010", -- STO @A
        5 => x"0014", -- LDA @C
        6 => x"1014", -- STO @C
        7 => x"4000", -- JMP @0

        -- Data
        16 => x"0005", -- A initial value = 5
        17 => x"0003", -- B value = 3
        19 => x"0001", -- ONE = 1 (constant)
        20 => x"0000", -- C initial value = 0
        others => (others => '0')
    );
begin
    process(RnW, add_in, data_in)
        variable addr_index : integer range 0 to 4095;
    begin
        -- Safe address conversion - handle uninitialized/meta values
        if (add_in(0) = 'U' or add_in(0) = 'X' or add_in(0) = 'Z' or add_in(0) = 'W') then
            addr_index := 0;
        else
            addr_index := to_integer(unsigned(add_in));
        end if;

        if RnW = '0' then
            -- Write operation
            if addr_index >= 0 and addr_index <= 4095 then
                RAM(addr_index) <= data_in;
            end if;
            data_out <= (others => '0');
        else
            -- Read operation
            if addr_index >= 0 and addr_index <= 4095 then
                data_out <= RAM(addr_index);
            else
                data_out <= (others => '0');
            end if;
        end if;
    end process;
end Behavioral;
---------------------------------------------------------------- end memoire

---------------------------------------------------------------- start PC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( pc_ld : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR(15 downto 0);
           PC_out : out STD_LOGIC_VECTOR(11 downto 0) );
end PC;

architecture pc1 of PC is
    signal PC_reg : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    signal update_flag : STD_LOGIC := '0';
begin
    process(pc_ld)
    begin
        if pc_ld = '1' then
            PC_reg <= DataIn(11 downto 0);
            update_flag <= '1';
        elsif pc_ld = '0' then
            update_flag <= '0';
        end if;
    end process;
    PC_out <= PC_reg;
end pc1;
---------------------------------------------------------------- end PC

---------------------------------------------------------------- start OE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity acc_OE is
    Port ( data_in : in STD_LOGIC_VECTOR(15 downto 0);
           acc_oe : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR(15 downto 0) );
end acc_OE;

architecture Behavioral of acc_OE is
begin
    process(data_in, acc_oe)
    begin
        if acc_oe = '1' then
            data_out <= data_in;
        else
            data_out <= (others => '0');
        end if;
    end process;
end Behavioral;
---------------------------------------------------------------- end OE

---------------------------------------------------------------- start ACC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ACC is
    Port ( acc_ld : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR(15 downto 0);
           ACC_out : out STD_LOGIC_VECTOR(15 downto 0);
           acc_Z : out STD_LOGIC;
           acc_15 : out STD_LOGIC );
end ACC;

architecture Behavioral of ACC is
    signal ACC_reg : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
    process(acc_ld, DataIn)
    begin
        if acc_ld = '1' then
            ACC_reg <= DataIn;
        end if;
    end process;
    ACC_out <= ACC_reg;
    acc_Z <= '1' when ACC_reg = x"0000" else '0';
    acc_15 <= DataIn(15);
end Behavioral;
---------------------------------------------------------------- end ACC

---------------------------------------------------------------- start IR
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR is
    Port ( ir_ld : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR(15 downto 0);
           opcode : out STD_LOGIC_VECTOR(3 downto 0);
           outIR : out STD_LOGIC_VECTOR(11 downto 0) );
end IR;

architecture Behavioral of IR is
    signal IR_reg : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
    process(ir_ld, DataIn)
    begin
        if ir_ld = '1' then
            IR_reg <= DataIn;
        end if;
    end process;
    opcode <= IR_reg(15 downto 12);
    outIR <= IR_reg(11 downto 0);
end Behavioral;
---------------------------------------------------------------- end IR

---------------------------------------------------------------- start UAL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UAL is
    Port ( A : in STD_LOGIC_VECTOR(15 downto 0);
           B : in STD_LOGIC_VECTOR(15 downto 0);
           alufs : in STD_LOGIC_VECTOR(1 downto 0);
           S : out STD_LOGIC_VECTOR(15 downto 0) );
end UAL;

architecture Behavioral of UAL is
begin
    with alufs select
    S <= std_logic_vector(unsigned(A) + unsigned(B)) when "10",
         std_logic_vector(unsigned(A) - unsigned(B)) when "01",
         B when "00",
         std_logic_vector(unsigned(B) + 1) when "11",
         (others => '0') when others;
end Behavioral;
---------------------------------------------------------------- end UAL

---------------------------------------------------------------- start MUXA
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXA is
    Port ( selA : in STD_LOGIC;
           PC : in STD_LOGIC_VECTOR(11 downto 0);
           ADRESSEOP : in STD_LOGIC_VECTOR(11 downto 0);
           Aout : out STD_LOGIC_VECTOR(11 downto 0) );
end MUXA;

architecture Behavioral of MUXA is
begin
    Aout <= PC when selA = '0' else
            ADRESSEOP when selA = '1' else
            (others => '0');
end Behavioral;
---------------------------------------------------------------- end MUXA

---------------------------------------------------------------- start MUXB
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXB is
    Port ( selB: in STD_LOGIC;
           E0: in STD_LOGIC_VECTOR(11 downto 0);
           E1: in STD_LOGIC_VECTOR(15 downto 0);
           Bout: out STD_LOGIC_VECTOR(15 downto 0) );
end MUXB;

architecture muxB of MUXB is
begin
    Bout <= "0000" & E0 when selB = '0' else
            E1 when selB = '1' else
            (others => '0');
end muxB;
---------------------------------------------------------------- end MUXB
