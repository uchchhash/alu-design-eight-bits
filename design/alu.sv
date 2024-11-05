module alu(
    input wire [7:0] A,  // first-input-8-bits
    input wire [7:0] B,  // second-input-8-bits
    input wire [3:0] S,  // select-input-3-bits-16-operands
    output reg [7:0] F,  // one-output-8-bits
    output reg zero,     // zero-flag
    output reg overflow, // overflow-flag
);

    always@(*) begin
        // Default output assignment
        F = 8'b0;
        zero = 1'b0;
        overflow = 1'b0;

        // Select operations
        case (S)
            4'b0000: F = A; // Transfer A
            4'b0001: F = A + 8'b00000001; // Increment A
            4'b0010: F = A + B; // Add A to B
            4'b0011: F = A + (~B + 8'b00000001); // Subtract B from A (A - B)
            4'b0100: F = A - 8'b00000001; // Decrement A
            4'b0101: F = ~A; // 1's complement of A
            4'b0110: F = ~A + 8'b00000001; // 2's Complement of A (A' + 1)
            4'b0111: F = A | B;  // Bitwise OR
            4'b1000: F = A ^ B;  // Bitwise XOR
            4'b1001: F = A & B;  // Bitwise AND
            4'b1010: F = A >> 1;  // Shift Right A by 1 bit (SHR)
            4'b1011: F = A << 1;  // Shift Left A by 1 bit (SHL)
            //4'b1100:
            //4'b1101:
            //4'b1110:
            //4'b1111:
            default: F = 8'b0; // default case
        endcase

    end




endmodule