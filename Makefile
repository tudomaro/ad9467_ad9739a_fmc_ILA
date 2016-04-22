####################################################################################
####################################################################################
## Copyright 2011(c) Analog Devices, Inc.
## Auto-generated, do not modify!
####################################################################################
####################################################################################

M_DEPS += system_top.v
M_DEPS += system_project.tcl
M_DEPS += system_constr.xdc
M_DEPS += system_bd.tcl
M_DEPS += ../common/ad9467_spi.v
M_DEPS += ../common/ad9467_bd.tcl
M_DEPS += ../../scripts/adi_project.tcl
M_DEPS += ../../scripts/adi_env.tcl
M_DEPS += ../../scripts/adi_board.tcl
M_DEPS += ../common/ad9467_bd.tcl
M_DEPS += ../../../library/axi_ad9467/axi_ad9467.xpr
M_DEPS += ../common/ad9739a_fmc_bd.tcl
M_DEPS += ../../../library/axi_ad9739a/axi_ad9739a.xpr
M_DEPS += ../../../library/common/ad_iobuf.v
M_DEPS += ../../../library/axi_ad9467/axi_ad9467.xpr
M_DEPS += ../../../library/axi_clkgen/axi_clkgen.xpr
M_DEPS += ../../../library/axi_dmac/axi_dmac.xpr
M_DEPS += ../../../library/axi_hdmi_tx/axi_hdmi_tx.xpr
M_DEPS += ../../../library/axi_i2s_adi/axi_i2s_adi.xpr
M_DEPS += ../../../library/axi_spdif_tx/axi_spdif_tx.xpr
M_DEPS += ../../../library/util_i2c_mixer/util_i2c_mixer.xpr
M_DEPS += ../../../library/util_dacfifo/util_dacfifo.xpr
M_DEPS += ../../../library/util_axis_fifo/util_axis_fifo.xpr
M_DEPS += ../../../library/util_axis_resize/util_axis_resize.xpr

M_VIVADO := vivado -mode batch -source

M_FLIST := *.cache
M_FLIST += *.data
M_FLIST += *.xpr
M_FLIST += *.log
M_FLIST += *.jou
M_FLIST +=  xgui
M_FLIST += *.runs
M_FLIST += *.srcs
M_FLIST += *.sdk
M_FLIST += .Xil



.PHONY: all lib clean clean-all
all: lib ad9467_ad9739a_fmc_zc702.sdk/system_top.hdf


clean: 
	rm -rf $(M_FLIST)


clean-all:clean
	make -C ../../../library/axi_ad9467 clean
	make -C ../../../library/axi_clkgen clean
	make -C ../../../library/axi_dmac clean
	make -C ../../../library/axi_hdmi_tx clean
	make -C ../../../library/axi_i2s_adi clean
	make -C ../../../library/axi_spdif_tx clean
	make -C ../../../library/util_i2c_mixer clean
	make -C ../../../library/util_dacfifo clean
	make -C ../../../library/util_axis_fifo clean
	make -C ../../../library/util_axis_resize clean

ad9467_fmc_zc702.sdk/system_top.hdf: $(M_DEPS)
	rm -rf $(M_FLIST)
	$(M_VIVADO) system_project.tcl >> ad9467_ad9739a_fmc_zc702_vivado.log 2>&1


lib:
	make -C ../../../library/axi_ad9467
	make -C ../../../library/axi_clkgen
	make -C ../../../library/axi_dmac
	make -C ../../../library/axi_hdmi_tx
	make -C ../../../library/axi_i2s_adi
	make -C ../../../library/axi_spdif_tx
	make -C ../../../library/util_i2c_mixer
	make -C ../../../library/util_dacfifo
	make -C ../../../library/util_axis_fifo
	make -C ../../../library/util_axis_resize
####################################################################################
####################################################################################
