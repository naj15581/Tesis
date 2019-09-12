#######################################################################
####                                                               ####
####  Copyright (C) 2019 UVG.                                      ####
####                                                               ####
#######################################################################
#######################################################################
####                                                               ####
####  Script de ejemplo para mostrar el uso de la herramienta      #### 
####  Design Vision. :)                                            ####
####                                                               ####
####  Steven Rubio 15044                                           ####
####  Luis Nájera 15581                                            ####
#######################################################################


lappend search_path /home/administrador/Escritorio/Chip/lib/
set link_library " * saed90nm_max.db saed90nm_min.db saed90nm_typ.db"
set target_library "saed90nm_typ.db"


read_file -format verilog {/home/administrador/Escritorio/Chip/chip.v}
source /home/administrador/Escritorio/Chip/Design_V/constraints.tcl
compile
write -format ddc -h -o /home/administrador/Escritorio/Chip/chip_ddc.ddc
write -hierarchy -format verilog -output /home/administrador/Escritorio/Chip/chip_syn.v




