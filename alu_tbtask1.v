module alu_tb;

parameter WIDTH  = 8;
reg[WIDTH-1:0]A,B;
reg[2:0]opcode;
wire[WIDTH-1:0]result;

alu #(WIDTH)DUT (.A(A),.B(B),.opcode(opcode),.result(result));

task apply_stimulus;
begin
A= $random;
B= $random;
opcode= $random %5;
end
endtask

 initial begin
        $monitor("A = %d, B = %d, opcode = %d, result = %d", A, B, opcode, result);

repeat(10)begin
apply_stimulus();
#10;
end

$finish;
end
endmodule