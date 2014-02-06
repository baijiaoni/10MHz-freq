create_clock -name {clk} -period 8.000 -waveform { 0.000 0.500 } [get_ports {clk}]
derive_pll_clocks
derive_clock_uncertainty
