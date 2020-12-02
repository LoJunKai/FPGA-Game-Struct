set projDir "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/vivado"
set projName "FPGA-Game-Struct"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/au_top_0.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/button_conditioner_1.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/edge_detector_2.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/play_counter_3.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/rng_sequence_4.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/whale_5.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/regfile_6.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/multi_seven_seg_7.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/alu_8.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/play_notes_9.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/decimal_counter_10.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/pipeline_11.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/counter_12.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/pn_gen_13.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/sig_selector_14.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/counter_15.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/seven_seg_16.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/decoder_17.v" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/verilog/sig_selector_18.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/work/constraint/custom.xdc" "C:/Users/JK/Desktop/Comp\ Struct/Alchitry\ Au/FPGA-Game-Struct/constraint/au_custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
