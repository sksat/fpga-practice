import_device eagle_s20.db -package BG256
import_db "blink-clock_gate.db"
download -bit "blink-clock.bit" -mode jtag -spd 4 -sec 64 -cable 0
