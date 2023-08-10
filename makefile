.PHONY:vcs sim verdi clean

VCS = vcs -f filelist.f \
	-timescale=1ns/1ps \
	-full64 \
	-R \
	-debug_acc+all \
	-fsdb \
	-lca -kdb \
	-ntb_opts uvm-1.1 \
	-sverilog \
	+v2k


vcs:
	${VCS}

sim:
	./simv -gui

verdi:
	verdi -ssf tb.fsdb &

clean:
	rm -rf csrc verdiLog simv.daidir \
	novas.* \
	vc_hdrs.h \
	simv \
	*.key \
	*.fsdb \
	*.log \
	inter.vpd \
	DVEfiles

#initial begin
#    $fsdbDumpfile("tb.fsdb");
#    $fsdbDumpvars;
#end
