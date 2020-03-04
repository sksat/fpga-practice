import_device eagle_s20.db -package BG256
open_project blink-clock.al
elaborate -top top
read_adc "../constraint/io.adc"
optimize_rtl
report_area -file "blink-clock_rtl.area"

export_db "blink-clock_rtl.db"
optimize_gate -packarea "blink-clock_gate.area"
legalize_phy_inst
export_db "blink-clock_gate.db"
place
route
report_area -io_info -file "blink-clock_phy.area"
export_db "blink-clock_pr.db"
bitgen -bit "blink-clock.bit" -version 0X00 -g ucode:00000000000000000000000000000000
