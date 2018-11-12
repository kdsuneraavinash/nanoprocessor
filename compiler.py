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
inputs = [
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    "NOP",
    ]


compiled = []
for i in xrange(len(inputs)):
    raw_data = inputs[i].upper().split()
    try:
        # Extract opcode
        encoded_opcode = raw_data[0]
        # Take binary opcode
        opcode = opcodes[encoded_opcode]
        
        # Selectively put opcodes
        if encoded_opcode in (NOP, ):
            # No operands
            operands = ["-", "-", "-"]
        if encoded_opcode in (CLR, NEG):
            # Only Ra operands
            operands = [raw_data[1], "-", "-"]
        if encoded_opcode in (ADD, SUB, MOV):
            # Only Ra and Rb operands
            operands = [raw_data[1], raw_data[2], "-"]
        if encoded_opcode in (MOVI, JZR):
            # Only Ra and d operands
            operands = [raw_data[1], "-", raw_data[2]]
        
        # Extract operands
        encoded_ra = operands[0]
        encoded_rb = operands[1]
        encoded_literal = operands[2]
        
        # Convert them to binary
        ra = "000" if encoded_ra == "-" else \
                        bin(int(encoded_ra[1]))[2:].zfill(3)
        
        rb = "000" if encoded_rb == "-" else \
                        bin(int(encoded_rb[1]))[2:].zfill(3)
        
        literal = "0000" if encoded_literal == "-" else \
                        bin(int(encoded_literal))[2:].zfill(4)
        
        # Output
        compiled.append("\"" + opcode + ra + rb + literal + "\"")
    except:
        # Syntax error catcher
        print "Syntax Error in line {}\nLine:\t{}\n".format(i, inputs[i]) 
        break
else:
    print """
signal instruction_ROM : rom_type := (
\t\t{}
 );
    
    """.format(",\n\t\t".join(compiled))
    
