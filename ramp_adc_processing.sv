module ramp_adc_processing #(
    parameter int SCALING_FACTOR = 79993,
    parameter int SHIFT_FACTOR   = 19

) (
    input  logic   clk,
    input  logic   reset,

    
    input  logic   duty_data,
    
    output logic [7:0] data,         // Direct ADC data output from pwm_ADC_out
    output logic [15:0] ave_data,     // Averaged ADC data
    output logic [15:0] scaled_adc_data // Scaled ADC data
);

    // Internal signal declarations
    logic ready_r, ready_pulse, duty_data1;                // Pulse signal for averaging
    logic [15:0] scaled_adc_data_pipe; // Intermediate register for scaled data
    
    localparam int SCALING_FACTOR_WIDTH = $clog2(SCALING_FACTOR) + 1;
    
    // Calculate the intermediate width dynamically based on ave_data (16-bits) and scaling factor
    localparam int INTERMEDIATE_WIDTH = 16 + SCALING_FACTOR_WIDTH;

    // Define the intermediate register with the required bit width, to avoid 32-bit overflow on intermediate calculation 
    logic [INTERMEDIATE_WIDTH-1:0] scaled_adc_data_temp; 
    
    // Directly assign pwm_ADC_out to data output
   


    // Generate a 1-clock pulse to trigger the averager
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            ready_pulse <= 0;
        else
            ready_pulse <= ~ready_pulse;
    end

    // Averager for ADC data
    averager #(
        .power(8),  // Averaging over 2^8 = 256 samples
        .N(16)      // Number of bits
    ) AVERAGER (
        .reset(reset),
        .clk(clk),
        .EN(ready_pulse),
        .Din(duty_data1),
        .Q(ave_data)
    );
    

    

    
  // Scaling calculation using RTL multiplier
    always_ff @(posedge clk) begin
        if (reset) begin
            data <= 0;
            scaled_adc_data <= 0;
            scaled_adc_data_temp <= 0;
            scaled_adc_data_pipe <= 0;
        end
        else if (ready_pulse) begin
            data <= duty_data;
            scaled_adc_data_temp <= ave_data * SCALING_FACTOR;            // Use a wider temp register to avoid 32-bit overflow error
            scaled_adc_data_pipe <= scaled_adc_data_temp >> SHIFT_FACTOR; // Shift right by 19 after the multiplication
            scaled_adc_data      <= scaled_adc_data_pipe; 
        end
    end

endmodule
