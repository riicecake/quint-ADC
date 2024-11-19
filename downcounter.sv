module downcounter #(
    parameter int PERIOD = 392  // Number to count down from, must be positive
) (
    input  logic clk,    // Clock input
    input  logic reset,  // Active-high reset
    output logic zero    // Pulses high for one clock cycle when counter reaches zero
);

    // Calculate the number of bits needed to represent PERIOD
    localparam int COUNT_WIDTH = $clog2(PERIOD);

    logic [COUNT_WIDTH-1:0] count;

    always_ff @(posedge clk) begin
        if (reset) begin
            count <= PERIOD - 1;
            zero  <= 0;
        end else begin
            if (count == 0) begin
                count <= PERIOD - 1;
                zero  <= 1;
            end else begin
                count <= count - 1;
                zero  <= 0;
            end
        end
    end

endmodule
