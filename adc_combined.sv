module adc_combined (
    input  logic        clk,
    input  logic        reset,
    input  logic        vauxp15,       // Analog input (positive) - connect to JXAC4:N2 PMOD pin (XADC4)
    input  logic        vauxn15,       // Analog input (negative) - connect to JXAC10:N1 PMOD pin (XADC4)
    output logic [15:0] ave_data,      // Averaged ADC data
    output logic [15:0] data,          // Raw ADC data from the XADC
    output logic [15:0] scaled_adc_data // Scaled ADC output for display in millivolts
);

    // Intermediate signals
    logic        ready, ready_r, ready_pulse;
    logic        enable;                // Enable for XADC
    logic [15:0] scaled_adc_data_temp; // Scaled data after multiplication
    logic [31:0] mult_result;          // Result from the multiplier
    
    // XADC Instance
    xadc_wiz_0 XADC_INST (
        .di_in(16'h0000),
        .daddr_in(7'h1f),    // Channel address for XA4/AD15
        .den_in(enable),     // Enable signal
        .dwe_in(1'b0),       // Set to 0 for reading
        .drdy_out(ready),    // Data ready signal
        .do_out(data),       // ADC data output
        .dclk_in(clk),       // System clock
        .reset_in(reset),    // Active-high reset
        .vp_in(1'b0),        // Not used, leave disconnected
        .vn_in(1'b0),        // Not used, leave disconnected
        .vauxp15(vauxp15),   // Auxiliary analog input (positive)
        .vauxn15(vauxn15),   // Auxiliary analog input (negative)
        .channel_out(),      // Not connected
        .eoc_out(enable),    // End of conversion
        .alarm_out(),        // Not connected
        .eos_out(),          // Not connected
        .busy_out()          // Not connected
    );

    // Pulser for the ready signal
    always_ff @(posedge clk) begin
        if (reset) begin
            ready_r <= 1'b0;
        end else begin
            ready_r <= ready;
        end
    end

    assign ready_pulse = ~ready_r & ready; // 1-cycle pulse when ready goes high

    // Averager Instance
    averager #(
        .power(8), // 2^8 samples (256 samples), adds 4 bits of resolution
        .N(16)     // 16-bit input
    ) AVERAGER (
        .reset(reset),
        .clk(clk),
        .EN(ready_pulse),
        .Din(data),
        .Q(ave_data) // Averaged data output
    );

    // RTL multiplier for scaling, computes `ave_data * SCALING_FACTOR`
    localparam int SCALING_FACTOR = 1230;
    assign mult_result = ave_data * SCALING_FACTOR; // Multiplier output

    // Shifting and assignment to scaled output
    always_ff @(posedge clk) begin
        if (reset) begin
            scaled_adc_data <= 16'd0;
        end else if (ready_pulse) begin
            scaled_adc_data <= mult_result[28:13]; // Right-shift to scale properly
        end
    end

endmodule

