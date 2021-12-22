# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "WIDTH_NUM1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH_NUM2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH_RESULT" -parent ${Page_0}


}

proc update_PARAM_VALUE.WIDTH_NUM1 { PARAM_VALUE.WIDTH_NUM1 } {
	# Procedure called to update WIDTH_NUM1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH_NUM1 { PARAM_VALUE.WIDTH_NUM1 } {
	# Procedure called to validate WIDTH_NUM1
	return true
}

proc update_PARAM_VALUE.WIDTH_NUM2 { PARAM_VALUE.WIDTH_NUM2 } {
	# Procedure called to update WIDTH_NUM2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH_NUM2 { PARAM_VALUE.WIDTH_NUM2 } {
	# Procedure called to validate WIDTH_NUM2
	return true
}

proc update_PARAM_VALUE.WIDTH_RESULT { PARAM_VALUE.WIDTH_RESULT } {
	# Procedure called to update WIDTH_RESULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH_RESULT { PARAM_VALUE.WIDTH_RESULT } {
	# Procedure called to validate WIDTH_RESULT
	return true
}


proc update_MODELPARAM_VALUE.WIDTH_NUM1 { MODELPARAM_VALUE.WIDTH_NUM1 PARAM_VALUE.WIDTH_NUM1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH_NUM1}] ${MODELPARAM_VALUE.WIDTH_NUM1}
}

proc update_MODELPARAM_VALUE.WIDTH_NUM2 { MODELPARAM_VALUE.WIDTH_NUM2 PARAM_VALUE.WIDTH_NUM2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH_NUM2}] ${MODELPARAM_VALUE.WIDTH_NUM2}
}

proc update_MODELPARAM_VALUE.WIDTH_RESULT { MODELPARAM_VALUE.WIDTH_RESULT PARAM_VALUE.WIDTH_RESULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH_RESULT}] ${MODELPARAM_VALUE.WIDTH_RESULT}
}

