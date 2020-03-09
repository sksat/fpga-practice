import_device eagle_s20.db -package BG256
open_project project.al
elaborate -top top
read_adc "../const/io.adc"
optimize_rtl
report_area -file "target_rtl.area"

export_db "target_rtl.db"
optimize_gate -packarea "target_gate.area"
legalize_phy_inst
export_db "target_gate.db"
place
route
report_area -io_info -file "target_phy.area"
export_db "target_pr.db"
bitgen -bit "target.bit" -version 0X00 -g ucode:00000000000000000000000000000000
