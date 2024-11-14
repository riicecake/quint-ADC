module adc_combined #(
    parameter int SCALING_FACTOR = 27208,
    parameter int SHIFT_FACTOR   = 19
) (
    input  logic   clk,
    input  logic   reset,
    input  logic   vauxp15,      // Analog input (positive)
    input  logic   vauxn15,      // Analog input (negative)
    output logic [15:0] ave_data, // Averaged ADC data
    output logic [15:0] data,    // Raw ADC data
    output logic [15:0] scaled_adc_data // Scaled ADC data
);
    // Internal signal declarations
    logic ready;                  // Data ready signal from XADC
    logic enable;                 // XADC enable signal
    logic ready_r, ready_pulse;   // Pulse signal for averaging
    logic [15:0] scaled_adc_data_pipe; // Intermediate calculation register for scaled data
    
    // XADC instance
    localparam CHANNEL_ADDR = 7'h1f; // Channel address for vauxp15/vauxn15 (XADC4)
    
        // Calculate the bit width for the scaling factor
    localparam int SCALING_FACTOR_WIDTH = $clog2(SCALING_FACTOR) + 1;
    
    // Calculate the intermediate width dynamically based on ave_data (16-bits) and scaling factor
    localparam int INTERMEDIATE_WIDTH = 16 + SCALING_FACTOR_WIDTH;

    // Define the intermediate register with the required bit width, to avoid 32-bit overflow on intermediate calculation 
    logic [INTERMEDIATE_WIDTH-1:0] scaled_adc_data_temp; 

    xadc_wiz_0 XADC_INST (
        .di_in(16'h0000),
        .daddr_in(CHANNEL_ADDR),
        .den_in(enable),
        .dwe_in(1'b0),
        .drdy_out(ready),
        .do_out(data),
        .dclk_in(clk),
        .reset_in(reset),
        .vp_in(1'b0),
        .vn_in(1'b0),
        .vauxp15(vauxp15),
        .vauxn15(vauxn15),
        .channel_out(),
        .eoc_out(enable),
        .alarm_out(),
        .eos_out(),
        .busy_out()
    );

    // Generate a 1-clock pulse when ready goes high
    always_ff @(posedge clk)
        if (reset)
            ready_r <= 0;
        else
            ready_r <= ready;

    assign ready_pulse = ~ready_r & ready;

    // Averager for ADC data
    averager #(
        .power(8),  // Averaging over 2^8 = 256 samples
        .N(16)      // Number of bits
    ) AVERAGER (
        .reset(reset),
        .clk(clk),
        .EN(ready_pulse),
        .Din(data),
        .Q(ave_data)
    );

    // Scaling calculation using RTL multiplier
    always_ff @(posedge clk) begin
        if (reset) begin
            scaled_adc_data <= 0;
            scaled_adc_data_temp <= 0;
            scaled_adc_data_pipe <= 0;
        end
        else if (ready_pulse) begin
            scaled_adc_data_temp <= ave_data * SCALING_FACTOR;            // Use a wider temp register to avoid 32-bit overflow error
            scaled_adc_data_pipe <= scaled_adc_data_temp >> SHIFT_FACTOR; // Shift right by 19 after the multiplication
            scaled_adc_data      <= scaled_adc_data_pipe; ;
        end
    end

endmodule


