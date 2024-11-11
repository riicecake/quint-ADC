/*
This design uses the XADC from the IP Catalog. The specific channel is XADC4.
The Auxiliary Analog Inputs are VAUXP[15] and VAUXN[15].
These map to the FPGA pins of N2 and N1, respecitively (also in .XDC).
These map to the JXADC PMOD and the specific PMOD inputs are
JXADC4:N2 and JXAC10:N1, respectively. These pin are right beside the PMOD GND
on JXAC11:GND and JXAC5:GND.

The ADC is set to single-ended, continuous sampling, 1 MSps, 256 averaging. 
Additional averaging is done using the averager module below.

*/
module lab_6_top_level (
	input  logic   clk,
	input  logic   reset,
	input  logic [1:0] bin_bcd_select,
	input  logic [1:0] mode_select,
	input      	vauxp15, // Analog input (positive)
	input      	vauxn15, // Analog input (negative)
	output logic   CA, CB, CC, CD, CE, CF, CG, DP,
	output logic   AN1, AN2, AN3, AN4,
	output logic [15:0] led,
	output logic   pwm_out,
	output logic [7:0] R2R_out
);
	// Internal signal declarations
	logic [15:0] ave_data, data, scaled_adc_data; // Combined module outputs
	logic [15:0] bcd_value, mux_out;
	logic pwm_enable, r2r_enable;
	logic pwm_out_internal;
	logic [7:0] R2R_out_internal;
    
	// Instantiate the FSM
	output_mode_fsm FSM (
    	.clk(clk),
    	.reset(reset),
    	.mode_select(mode_select),
    	.pwm_enable(pwm_enable),
    	.r2r_enable(r2r_enable)
	);
    
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
    
	logic [3:0] decimal_pt;
	mux4_16_bits MUX4 (
    	.in0(scaled_adc_data), // hexadecimal, scaled and averaged
    	.in1(bcd_value),   	// decimal, scaled and averaged
    	.in2(data[15:4]),  	// raw 12-bit ADC hexadecimal
    	.in3(ave_data),    	// averaged and before scaling 16-bit ADC (extra 4-bits from averaging) hexadecimal
    	.select(bin_bcd_select),
    	.mux_out(mux_out),
    	.decimal_point(decimal_pt)
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
    
	logic triangle_en;
	assign triangle_en = pwm_enable | r2r_enable;
	// Instantiate the triangle_generator module
	triangle_generator #(
    	.WIDTH(8),       	// Bit width for duty_cycle (e.g. 8)
    	.CLOCK_FREQ(100_000_000), // System clock frequency in Hz (e.g. 100_000_000)
    	.WAVE_FREQ(1.0)	// Desired triangle wave frequency in Hz (e.g. 1.0)
	) triangle_pwm_inst (
    	.clk(clk),       	// Connect to system clock
    	.reset(reset),   	// Connect to system reset
    	.enable(triangle_en), // Connect to enable signal
    	.pwm_out(pwm_out_internal), // Connect to PWM output signal
    	.R2R_out(R2R_out_internal)  // Connect to R2R ladder header, can leave empty if
	);                          	// not required, i.e. .R2R_out()


	// Output multiplexing based on FSM state
	always_comb begin
    	pwm_out = pwm_enable ? pwm_out_internal : 0;
    	R2R_out = r2r_enable ? R2R_out_internal : '0;
	end
    
endmodule

