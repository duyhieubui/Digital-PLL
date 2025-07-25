current_design aes_cipher_top

set clk_name osc
set clk_port_name osc
set clk_period 100
set clk_io_pct 0.2

set clk_port [get_ports $clk_port_name]

create_clock -name $clk_name -period $clk_period $clk_port

set non_clock_inputs [all_inputs -no_clocks]

set_input_delay [expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs
# set_output_delay [expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]
set_false_path -from [get_ports resetb]
set_false_path -to [get_ports clockp]

set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
