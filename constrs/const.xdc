set_property PACKAGE_PIN W5 [get_ports CLK_main]
       set_property IOSTANDARD LVCMOS33 [get_ports CLK_main]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK_main]

set_property PACKAGE_PIN W7 [get_ports {cathode_main[6]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[6]}]
set_property PACKAGE_PIN W6 [get_ports {cathode_main[5]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[5]}]
set_property PACKAGE_PIN U8 [get_ports {cathode_main[4]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[4]}]
set_property PACKAGE_PIN V8 [get_ports {cathode_main[3]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[3]}]
set_property PACKAGE_PIN U5 [get_ports {cathode_main[2]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[2]}]
set_property PACKAGE_PIN V5 [get_ports {cathode_main[1]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[1]}]
set_property PACKAGE_PIN U7 [get_ports {cathode_main[0]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {cathode_main[0]}]

set_property PACKAGE_PIN U2 [get_ports {anode_main[0]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {anode_main[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode_main[1]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {anode_main[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode_main[2]}]
       set_property IOSTANDARD LVCMOS33 [get_ports {anode_main[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode_main[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {anode_main[3]}]

##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {S_in_main}]
       set_property IOSTANDARD LVCMOS33 [get_ports {S_in_main}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {buzzer_out_main}]
       set_property IOSTANDARD LVCMOS33 [get_ports {buzzer_out_main}]
##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {L_out_main}]
       set_property IOSTANDARD LVCMOS33 [get_ports {L_out_main}]

# switch->right most
set_property PACKAGE_PIN V17 [get_ports {sel_main}]
       set_property IOSTANDARD LVCMOS33 [get_ports {sel_main}]

set_property CONFIG_VOLTAGE 3.3 [current_design]
       set_property CFGBVS VCCO [current_design]
        