# All available commands
ADD = "ADD"
NEG = "NEG"
MOVI = "MOVI"
JZR = "JZR"
SUB = "SUB"
CLR = "CLR"
MOV = "MOV"
NOP = "NOP"

# Opcodes for commands
opcodes = {
    ADD: "000",
    NEG: "001",
    MOVI: "010",
    JZR: "011",
    SUB: "100",
    CLR: "101",
    MOV: "110",
    NOP: "111"
}

# Define inputs here
inputs = {
    0: "MOVI R1 5",
    1: "MOVI R2 5",
    2: "MOVI R3 1",
    3: "MOVI R4 0",
    4: "ADD R4 R2",
    5: "MOV R7 R4",
    6: "SUB R2 R3",
    7: "MOV R7 R2",
    8: "JZR R2 11",
    9: "NOP",
    10: "JZR R0 4",
    11: "NOP",
    12: "MOV R4 R7",
    13: "NOP",
    14: "NOP",
    15: "NOP",
    }


compiled = []
for i in xrange(len(inputs)):
    raw_data = inputs[i].upper().split()
    
    assert len(raw_data) != 0, "No opcode found"
    
    try:
        # Extract opcode
        encoded_opcode = raw_data[0]
        
        assert encoded_opcode in opcodes, "Invalid opcode: " + encoded_opcode
        # Take binary opcode
        opcode = opcodes[encoded_opcode]
        
        # Selectively put opcodes
        if encoded_opcode in (NOP, ):
            # No operands
            operands = ["-", "-", "-"]
        elif encoded_opcode in (CLR, NEG):
            # Only Ra operands
            operands = [raw_data[1], "-", "-"]
        elif encoded_opcode in (ADD, SUB, MOV):
            # Only Ra and Rb operands
            operands = [raw_data[1], raw_data[2], "-"]
        elif encoded_opcode in (MOVI, JZR):
            # Only Ra and d operands
            operands = [raw_data[1], "-", raw_data[2]]
        
        # Extract operands
        encoded_ra = operands[0]
        encoded_rb = operands[1]
        encoded_literal = operands[2]
        
        assert encoded_ra == "-" or ( len(encoded_ra) != 0 and encoded_ra[0] == "R"),\
                "Invalid Ra: " + encoded_ra
        assert encoded_rb == "-" or ( len(encoded_rb) != 0 and encoded_rb[0] == "R"),\
                "Invalid Rb: " + encoded_rb
        
        # Convert them to binary
        ra = "000" if encoded_ra == "-" else \
                        bin(int(encoded_ra[1]))[2:].zfill(3)
        
        rb = "000" if encoded_rb == "-" else \
                        bin(int(encoded_rb[1]))[2:].zfill(3)
                        
                
        if encoded_literal == "-":
            literal = "00000000"
        else:
            try: 
                v = int(encoded_literal)
            except ValueError:
                raise ValueError("Literal is not an integer: " + encoded_literal)
                
            assert -256 <= v <= 255, "Literal too big or too small: " + str(v)
                
            v = abs(v)
            if int(encoded_literal) < 0:
                v = (v ^ 255) + 1
            literal = bin(v)[2:].zfill(8)
           
        
        # Output
        compiled.append("\"" + opcode + ra + rb + literal + "\"")
    except Exception as e:
        # Syntax error catcher
        print "Syntax Error in line {}\nLine:\t{}\nCause: {}".format(i, inputs[i], e.args[0])
        print 
        break
else:
    print """
signal instruction_ROM : rom_type := (
\t\t{}
 );
    
    """.format(",\n\t\t".join(compiled))
    
