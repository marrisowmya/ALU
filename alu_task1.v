module alu #(parameter WIDTH = 8)(input [WIDTH -1:0]A,B,
input [2:0]opcode,
output reg[WIDTH -1:0]result);


always@(*) begin
 case(opcode)

	3'b000: result = A + B;  // Addition
        3'b001: result = A - B;  // Subtraction
        3'b010: result = A & B;  // Bitwise AND
        3'b011: result = A | B;  // Bitwise OR
        3'b100: result = ~A;     // Bitwise NOT (only A)
            default: result = 0; // Default case
 endcase
    end
    
endmodule

