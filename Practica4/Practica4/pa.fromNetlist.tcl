
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Practica4 -dir "C:/Xilinx/Practica4/planAhead_run_2" -part xc3s1000ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Xilinx/Practica4/divider.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Xilinx/Practica4} }
set_property target_constrs_file "C:/Xilinx/Practica2/pines.ucf" [current_fileset -constrset]
add_files [list {C:/Xilinx/Practica2/pines.ucf}] -fileset [get_property constrset [current_run]]
link_design
