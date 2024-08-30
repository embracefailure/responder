#
# Create work library
#
vlib work
#
# Compile sources
#
vlog  C:/Users/Timmy/Desktop/summerschool/wk3-4/Codes_Basic_V561/Codes_Basic/Codes/7 responder/responder/responder_Runs/phy_1/simulation/responder_phy_sim.v
vlog  C:/Users/Timmy/Desktop/summerschool/wk3-4/Codes_Basic_V561/Codes_Basic/Codes/7 responder/responder/responder_Runs/phy_1/simulation/responder_tb.v
#
# Call vsim to invoke simulator
#
vsim -L C:/modeltech64_10.6d/anlogic/eg4 -gui -novopt work.responder_tb
#
# Add waves
#
add wave *
#
# Run simulation
#
run 1000ns
#
# End