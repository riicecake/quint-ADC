// Sawtooth Wave Generator Module
// Generates a 1 Hz sawtooth waveform using PWM by linearly adjusting the duty cycle up to max, then resetting.

module sawtooth_pwm
    #(
        parameter int WIDTH = 8,                   // Bit width for duty_cycle
        parameter int CLOCK_FREQ = 100_000_000,    // System clock frequency in Hz
        parameter real WAVE_FREQ = 1.0             // Desired sawtooth wave frequency in Hz
    )
    (
        input  logic clk,      // System clock (100 MHz)
        input  logic reset,    // Active-high reset
        input  logic pwm_V_out,
        output logic pwm_out,  // PWM output signal
        output logic duty_out
        
    );

    // Calculate maximum duty cycle value based on WIDTH
    localparam int MAX_DUTY_CYCLE = (2 ** WIDTH) - 1;  // 255 for WIDTH = 8
    // Calculate downcounter PERIOD to achieve desired wave frequency
    localparam int DOWNCOUNTER_PERIOD = integer'(CLOCK_FREQ / (WAVE_FREQ * MAX_DUTY_CYCLE));

    // Ensure DOWNCOUNTER_PERIOD is positive
    initial begin
        if (DOWNCOUNTER_PERIOD <= 0) begin
            $error("DOWNCOUNTER_PERIOD must be positive. Adjust CLOCK_FREQ or WAVE_FREQ.");
        end
    end

    // Internal signals
    logic zero;                   // Output from downcounter (enables duty_cycle update)
    logic [WIDTH-1:0] duty_cycle; // Duty cycle value for PWM
    
    
    // Instantiate downcounter module
    downcounter #(
        .PERIOD(DOWNCOUNTER_PERIOD)  // Set downcounter period based on calculations
    ) downcounter_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),  // Use the enable input
        .zero(zero)       // Pulses high every DOWNCOUNTER_PERIOD clock cycles
    );

    // Duty cycle counter logic for sawtooth waveform
    always_ff @(posedge clk) begin
        if (reset) begin
            duty_cycle <= 0;    // Initialize duty_cycle to 0 on reset
        end 
        else if (zero) begin
                if (duty_cycle == MAX_DUTY_CYCLE) begin
                    duty_cycle <= 0; // Reset to 0 after reaching maximum duty cycle
                end 
                else if (~pwm_V_out) begin
                    duty_out <= duty_cycle;
                end
                else begin
                    duty_cycle <= duty_cycle + 1; // Increment duty_cycle
                    
                end
             
             end
 
        end

    // Instantiate PWM module
    pwm #(
        .WIDTH(WIDTH)
    ) pwm_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),    // Use the enable input
        .duty_cycle(duty_cycle),
        .pwm_out(pwm_out)   // Output PWM signal
    );

endmodule
