BITSTREAM = prj/target.bit
SRC = src/top.v

$(BITSTREAM):$(SRC)
	cd prj;td build.tcl

flash: $(BITSTREAM)
	cd prj;sudo td download.tcl

clean:
	cd prj;rm -f *.db *.area *.log *.bit
