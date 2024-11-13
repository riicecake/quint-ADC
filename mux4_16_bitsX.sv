module mux4_16_bitsX(
    input  logic [15:0] in0,  
    input  logic [15:0] in1,  
    input  logic [15:0] in2, 
    input  logic [15:0] in3,  
    input  logic  [1:0] select,  

    output logic [15:0] mux_out,
    output logic [3:0] decimal_point  
);

    always_comb begin
            case(select)
                2'b00: mux_out = in0;  
                2'b01: mux_out = in1;  
                2'b10: mux_out = in2;
                2'b11: mux_out = in3;
                default: mux_out = 16'h0000;  // Default case: output all zeros
            endcase
    end    

    always_comb begin
            case(select)
                2'b00: decimal_point = 4'b0000;  // Averaged ADC with extra 4 bits
                2'b01: decimal_point = 4'b0010;  // Averaged and scaled voltage
                2'b10: decimal_point = 4'b0000;  // Raw ADC (12-bits)
                2'b11: decimal_point = 4'b0000;
                default: decimal_point = 4'b0000;  // Default case: output all zeros
            endcase
    end    

endmodule
