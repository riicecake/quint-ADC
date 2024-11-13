module lab_6_top_level (
	input  logic   clk,
	input  logic   reset,
	input  logic [1:0] select,
	input  logic [1:0] mux_display_select,
	input      	vauxp15, // Analog input (positive)
	input      	vauxn15, // Analog input (negative)
	input       pwm_V_out,
	output logic   CA, CB, CC, CD, CE, CF, CG, DP,
	output logic   AN1, AN2, AN3, AN4,
	output logic [15:0] led,
	output logic   pwm_out,
	output logic [7:0] R2R_out
);
	// Internal signal declarations
	logic [15:0] ave_data, data, scaled_adc_data; // Combined module outputs
	logic [7:0] ave_dataP, dataP, scaled_adc_dataP;
	logic [15:0] bcd_value, mux_out, mux_outP, mux_outX;
	logic pwm_enable, r2r_enable, xadc_enable;
	logic pwm_out_internal, pwm_V_out_internal;
	logic [7:0] R2R_out_internal;
    

    
	// Combined ADC and processing module instance
	adc_combined ADC_COMBINED (
    	.clk(clk),
    	.reset(reset),
    	.vauxp15(vauxp15),
    	.vauxn15(vauxn15),
    	.ave_data(ave_data),
    	.data(data),
    	.scaled_adc_data(scaled_adc_data)
	);

	// Connect scaled ADC data to LEDs, make LEDs' brightness pulse with pwm_out
	assign led = pwm_out_internal ? scaled_adc_data : '0;

	bin_to_bcd BIN2BCD (
    	.clk(	clk),
    	.reset(  reset),
    	.bin_in( scaled_adc_data),
    	.bcd_out(bcd_value)
	);
	
    logic [3:0] decimal_pt, decimal_ptP, decimal_pt1;
    mux4_16_bits MUX_DISPLAY (
    	.in0(mux_outX), // hexadecimal, scaled and averaged
    	.in1(mux_outP),   	// decimal, scaled and averaged
    	.in2(),  	// raw 12-bit ADC hexadecimal
    	
    	.select(mux_display_select),
    	.mux_out(mux_out)
	);
    
    mux4_16_bits MUX_DECIMAL (
    	.in0(decimal_pt1), // hexadecimal, scaled and averaged
    	.in1(decimal_ptP),   	// decimal, scaled and averaged
    	.in2(),  	// raw 12-bit ADC hexadecimal
    	
    	.select(mux_display_select),
    	.mux_out(decimal_pt)
	);
	
	mux4_16_bitsX MUX_X (
    	.in0(data[15:4]), // hexadecimal, scaled and averaged
    	.in1(ave_data),   	// decimal, scaled and averaged
    	.in2(scaled_adc_data),  	// raw 12-bit ADC hexadecimal
    	.in3(bcd_value),   	// averaged and before scaling 16-bit ADC (extra 4-bits from averaging) hexadecimal
    	.select(select),
    	.mux_out(mux_outX),
    	.decimal_point(decimal_pt1)
    	
	);
	
	
	mux3_8_bitsP MUX_P (
    	.in0(dataP), // hexadecimal, scaled and averaged
    	.in1(ave_dataP),   	// decimal, scaled and averaged
    	.in2(scaled_adc_dataP),  	// raw 12-bit ADC hexadecimal
    	.select(select),
    	.mux_out(mux_outP),
    	.decimal_point(decimal_ptP)
    	
	);
 
	// Seven Segment Display Subsystem
	seven_segment_display_subsystem SEVEN_SEGMENT_DISPLAY (
    	.clk(clk),
    	.reset(reset),
    	.sec_dig1(mux_out[3:0]), 	// Lowest digit
    	.sec_dig2(mux_out[7:4]), 	// Second digit
    	.min_dig1(mux_out[11:8]),	// Third digit
    	.min_dig2(mux_out[15:12]),   // Highest digit
    	.decimal_point(decimal_pt),
    	.CA(CA), .CB(CB), .CC(CC), .CD(CD),
    	.CE(CE), .CF(CF), .CG(CG), .DP(DP),
    	.AN1(AN1), .AN2(AN2), .AN3(AN3), .AN4(AN4)
	);
    
	

	// Instantiate the triangle_generator module
// Instantiate the sawtooth_generator module
    sawtooth_generator #(
        .WIDTH(8),                 // Bit width for duty_cycle (e.g. 8)
        .CLOCK_FREQ(100_000_000),  // System clock frequency in Hz (e.g. 100_000_000)
        .WAVE_FREQ(1.0)            // Desired sawtooth wave frequency in Hz (e.g. 1.0)
    ) SAWTOOTH_PWM (
        .clk(clk),                 // Connect to system clock
        .reset(reset),             // Connect to system reset
        .enable(pwm_enable),      // Connect to enable signal
        .pwm_out(pwm_out) // Connect to PWM output signal
          
    );

    ramp_adc_processing #(
        .SCALING_FACTOR(79993),                 // Bit width for duty_cycle (e.g. 8)
        .SHIFT_FACTOR(19)  // System clock frequency in Hz (e.g. 100_000_000)
    ) RAMP_ADC_PROCESSING (
        .clk(clk),                 // Connect to system clock
        .reset(reset),            // Connect to system reset
        .enable(pwm_enable),      // Connect to enable signal
        .pwm_V_out(pwm_V_out), // Connect to PWM output signal
        .ave_data(ave_dataP),
        .data(dataP),
        .scaled_adc_data(scaled_adc_dataP)   
    );
 

    
endmodule



