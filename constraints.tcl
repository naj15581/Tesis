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

reset_design			
#Remueve los constraints del diseño#

## Constraint de Area##
set_max_area 0


## Constraints para tiempo de reloj ##
create_clock -name "clk" -period 80 -waveform { 0 40  }  { clk  }

set_clock_uncertainty 1 [get_clocks clk]



## Constraints input/output Delays ##
set_input_delay -clock clk -max 32 [remove_from_collection [all_inputs] [get_ports clk]]	

set_output_delay 32 -max -clock clk [all_outputs]


## Constraints drive (ns per pf) - load (pf)##
set_drive 0 [all_inputs]

set_load 5 [all_outputs]


## Condiciones de operación (dependiente de libreria) ##
set_operating_conditions  TYPICAL


#Design Rule Constraints (dependientes de libreria)#
## Mayor prioridad ##
set_max_transition 1.5 {chip}
#Tiempo que tarda todo el circuito en pasar de 10% a 90% de voltaje#
#Tiempo que tarda todo el circuito en pasar de 0 a 1#


set_max_capacitance 1.5 {chip}


