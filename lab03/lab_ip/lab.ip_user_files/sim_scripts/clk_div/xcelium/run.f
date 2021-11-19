-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab.srcs/sources_1/ip/clk_div/clk_div_clk_wiz.v" \
  "../../../../lab.srcs/sources_1/ip/clk_div/clk_div.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

