import_device eagle_s20.db -package BG256
import_db "target_gate.db"
download -bit "target.bit" -mode jtag -spd 4 -sec 64 -cable 0
