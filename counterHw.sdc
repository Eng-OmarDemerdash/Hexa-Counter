create_clock -name clk50mhz -period 20ns [get_ports clk]
derive_pll_clocks
set_false_path -from [get_ports enable]
set_false_path -from [get_ports rst]
set_false_path -to [get_ports HEX*[*]]