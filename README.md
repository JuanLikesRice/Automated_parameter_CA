# Automated_parameter_CA


Iverilog must be installed, Additionally graph maker for json must be installed (not in this repository)
to run scripts to create RTL, run "Auto_top_flow_script.py"

possibly like this:
{Python Auto_top_flow_script.py $Directory_Name}
-  $Directory_Name will be what the directry where all data and generated code will be located
-  NOTE  You must have the jar.exe provided from SIMS lab or other NFA graph maker


Once you have this finished, open the vivado Template and insert based on the names from RTL code in file created for your python RTL run, all except the module_tb.v will be inserted in vivado project.
Uart.v             --> all blocks that do not change no matter the regular expression, this is for reporting, button deboucing etc
Top_module.v       --> main instationation of all blocks
module_AUTOMATED.v --> Graph imlemntation of NFA where Autonoma Processor is
BRAM_RTL_AUTO      --> Automated BRAM verilog code which will impement the string data



