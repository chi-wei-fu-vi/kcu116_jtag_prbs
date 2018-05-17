
proc CDR_SWAP_MODE_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CDR_SWAP_MODE_EN $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_CDR_SWAP_MODE_EN $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_CDR_SWAP_MODE_EN $offset $wdata]
  }
}
proc read_CDR_SWAP_MODE_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+2*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CDR_SWAP_MODE_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+2*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUFRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUFRESET_TIME $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_RXBUFRESET_TIME $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RXBUFRESET_TIME $offset $wdata]
  }
}
proc read_RXBUFRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+3*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUFRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+3*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CFOK_PWRSVE_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CFOK_PWRSVE_EN $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_CFOK_PWRSVE_EN $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_CFOK_PWRSVE_EN $offset $wdata]
  }
}
proc read_CFOK_PWRSVE_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+3*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CFOK_PWRSVE_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+3*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc EYE_SCAN_SWAP_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_EYE_SCAN_SWAP_EN $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_EYE_SCAN_SWAP_EN $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_EYE_SCAN_SWAP_EN $offset $wdata]
  }
}
proc read_EYE_SCAN_SWAP_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+3*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_EYE_SCAN_SWAP_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+3*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DATA_WIDTH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DATA_WIDTH $offset] & 0x1e0) >> 5]
  } else {
    set mask [expr [read_RX_DATA_WIDTH $offset] & ~0x1e0]
    set wdata [expr ($data << 5) | $mask]
    return [write_RX_DATA_WIDTH $offset $wdata]
  }
}
proc read_RX_DATA_WIDTH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+3*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DATA_WIDTH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+3*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDRFREQRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDRFREQRESET_TIME $offset] & 0x1f) >> 0]
  } else {
    set mask [expr [read_RXCDRFREQRESET_TIME $offset] & ~0x1f]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDRFREQRESET_TIME $offset $wdata]
  }
}
proc read_RXCDRFREQRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+3*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDRFREQRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+3*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDRPHRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDRPHRESET_TIME $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_RXCDRPHRESET_TIME $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RXCDRPHRESET_TIME $offset $wdata]
  }
}
proc read_RXCDRPHRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+4*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDRPHRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+4*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_ELECIDLE_H2L_DISABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_ELECIDLE_H2L_DISABLE $offset] & 0x700) >> 8]
  } else {
    set mask [expr [read_PCI3_RX_ELECIDLE_H2L_DISABLE $offset] & ~0x700]
    set wdata [expr ($data << 8) | $mask]
    return [write_PCI3_RX_ELECIDLE_H2L_DISABLE $offset $wdata]
  }
}
proc read_PCI3_RX_ELECIDLE_H2L_DISABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+4*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_ELECIDLE_H2L_DISABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+4*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFELPMRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFELPMRESET_TIME $offset] & 0xfe) >> 1]
  } else {
    set mask [expr [read_RXDFELPMRESET_TIME $offset] & ~0xfe]
    set wdata [expr ($data << 1) | $mask]
    return [write_RXDFELPMRESET_TIME $offset $wdata]
  }
}
proc read_RXDFELPMRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+4*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFELPMRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+4*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_FABINT_USRCLK_FLOP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_FABINT_USRCLK_FLOP $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RX_FABINT_USRCLK_FLOP $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_FABINT_USRCLK_FLOP $offset $wdata]
  }
}
proc read_RX_FABINT_USRCLK_FLOP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+4*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_FABINT_USRCLK_FLOP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+4*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPMARESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPMARESET_TIME $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_RXPMARESET_TIME $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RXPMARESET_TIME $offset $wdata]
  }
}
proc read_RXPMARESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+5*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPMARESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+5*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_ELECIDLE_LP4_DISABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_ELECIDLE_LP4_DISABLE $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_PCI3_RX_ELECIDLE_LP4_DISABLE $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_PCI3_RX_ELECIDLE_LP4_DISABLE $offset $wdata]
  }
}
proc read_PCI3_RX_ELECIDLE_LP4_DISABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+5*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_ELECIDLE_LP4_DISABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+5*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_FIFO_DISABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_FIFO_DISABLE $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_PCI3_RX_FIFO_DISABLE $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_PCI3_RX_FIFO_DISABLE $offset $wdata]
  }
}
proc read_PCI3_RX_FIFO_DISABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+5*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_FIFO_DISABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+5*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_ELECIDLE_EI2_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_ELECIDLE_EI2_ENABLE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_PCI3_RX_ELECIDLE_EI2_ENABLE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_PCI3_RX_ELECIDLE_EI2_ENABLE $offset $wdata]
  }
}
proc read_PCI3_RX_ELECIDLE_EI2_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+5*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_ELECIDLE_EI2_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+5*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPCSRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPCSRESET_TIME $offset] & 0xf8) >> 3]
  } else {
    set mask [expr [read_RXPCSRESET_TIME $offset] & ~0xf8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RXPCSRESET_TIME $offset $wdata]
  }
}
proc read_RXPCSRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+5*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPCSRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+5*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXELECIDLE_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXELECIDLE_CFG $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_RXELECIDLE_CFG $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXELECIDLE_CFG $offset $wdata]
  }
}
proc read_RXELECIDLE_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+5*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXELECIDLE_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+5*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HB_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HB_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HB_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HB_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_HB_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+6*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HB_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+6*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPMARESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPMARESET_TIME $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_TXPMARESET_TIME $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_TXPMARESET_TIME $offset $wdata]
  }
}
proc read_TXPMARESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+9*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPMARESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+9*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPCSRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPCSRESET_TIME $offset] & 0xf8) >> 3]
  } else {
    set mask [expr [read_TXPCSRESET_TIME $offset] & ~0xf8]
    set wdata [expr ($data << 3) | $mask]
    return [write_TXPCSRESET_TIME $offset $wdata]
  }
}
proc read_TXPCSRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+9*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPCSRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+9*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_PMA_POWER_SAVE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_PMA_POWER_SAVE $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RX_PMA_POWER_SAVE $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_PMA_POWER_SAVE $offset $wdata]
  }
}
proc read_RX_PMA_POWER_SAVE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+9*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_PMA_POWER_SAVE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+9*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PMA_POWER_SAVE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PMA_POWER_SAVE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_TX_PMA_POWER_SAVE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_PMA_POWER_SAVE $offset $wdata]
  }
}
proc read_TX_PMA_POWER_SAVE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+9*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PMA_POWER_SAVE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+9*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SRSTMODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SRSTMODE $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_SRSTMODE $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_SRSTMODE $offset $wdata]
  }
}
proc read_SRSTMODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+9*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SRSTMODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+9*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_FIFO_BYP_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_FIFO_BYP_EN $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_TX_FIFO_BYP_EN $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_TX_FIFO_BYP_EN $offset $wdata]
  }
}
proc read_TX_FIFO_BYP_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+10*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_FIFO_BYP_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+10*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_FABINT_USRCLK_FLOP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_FABINT_USRCLK_FLOP $offset] & 0x10) >> 4]
  } else {
    set mask [expr [read_TX_FABINT_USRCLK_FLOP $offset] & ~0x10]
    set wdata [expr ($data << 4) | $mask]
    return [write_TX_FABINT_USRCLK_FLOP $offset $wdata]
  }
}
proc read_TX_FABINT_USRCLK_FLOP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+11*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_FABINT_USRCLK_FLOP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+11*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPMACLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPMACLK_SEL $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RXPMACLK_SEL $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RXPMACLK_SEL $offset $wdata]
  }
}
proc read_RXPMACLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+11*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPMACLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+11*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PROGCLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PROGCLK_SEL $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_TX_PROGCLK_SEL $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_TX_PROGCLK_SEL $offset $wdata]
  }
}
proc read_TX_PROGCLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+12*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PROGCLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+12*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXISCANRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXISCANRESET_TIME $offset] & 0x3e0) >> 5]
  } else {
    set mask [expr [read_RXISCANRESET_TIME $offset] & ~0x3e0]
    set wdata [expr ($data << 5) | $mask]
    return [write_RXISCANRESET_TIME $offset $wdata]
  }
}
proc read_RXISCANRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+12*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXISCANRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+12*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXAMONSEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXAMONSEL $offset] & 0xfc) >> 2]
  } else {
    set mask [expr [read_TXAMONSEL $offset] & ~0xfc]
    set wdata [expr ($data << 2) | $mask]
    return [write_TXAMONSEL $offset $wdata]
  }
}
proc read_TXAMONSEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+13*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXAMONSEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+13*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BLOCKSEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BLOCKSEL $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_BLOCKSEL $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_BLOCKSEL $offset $wdata]
  }
}
proc read_BLOCKSEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+13*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BLOCKSEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+13*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG0 $offset $wdata]
  }
}
proc read_RXCDR_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+14*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+14*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG1 $offset $wdata]
  }
}
proc read_RXCDR_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+15*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+15*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG2 $offset $wdata]
  }
}
proc read_RXCDR_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+16*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+16*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG3 $offset $wdata]
  }
}
proc read_RXCDR_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+17*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+17*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SELCKOK { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SELCKOK $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_SELCKOK $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_SELCKOK $offset $wdata]
  }
}
proc read_SELCKOK { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+17*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SELCKOK { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+17*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG4 $offset $wdata]
  }
}
proc read_RXCDR_CFG4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+18*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+18*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_LOCK_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_LOCK_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CPLL_LOCK_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CPLL_LOCK_CFG $offset $wdata]
  }
}
proc read_CPLL_LOCK_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+19*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_LOCK_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+19*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_MAX_SKEW { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_MAX_SKEW $offset] & 0xf000) >> 12]
  } else {
    set mask [expr [read_CHAN_BOND_MAX_SKEW $offset] & ~0xf000]
    set wdata [expr ($data << 12) | $mask]
    return [write_CHAN_BOND_MAX_SKEW $offset $wdata]
  }
}
proc read_CHAN_BOND_MAX_SKEW { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+20*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_MAX_SKEW { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+20*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_LEN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_LEN $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_LEN $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_CHAN_BOND_SEQ_LEN $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_LEN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+20*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_LEN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+20*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_1_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_1_1 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_1_1 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_1_1 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_1_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+20*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_1_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+20*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_ELECIDLE_HI_COUNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_ELECIDLE_HI_COUNT $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_PCI3_RX_ELECIDLE_HI_COUNT $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_PCI3_RX_ELECIDLE_HI_COUNT $offset $wdata]
  }
}
proc read_PCI3_RX_ELECIDLE_HI_COUNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+21*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_ELECIDLE_HI_COUNT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+21*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_1_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_1_3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_1_3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_1_3 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_1_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+21*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_1_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+21*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_ELECIDLE_H2L_COUNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_ELECIDLE_H2L_COUNT $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_PCI3_RX_ELECIDLE_H2L_COUNT $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_PCI3_RX_ELECIDLE_H2L_COUNT $offset $wdata]
  }
}
proc read_PCI3_RX_ELECIDLE_H2L_COUNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+22*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_ELECIDLE_H2L_COUNT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+22*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_1_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_1_4 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_1_4 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_1_4 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_1_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+22*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_1_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+22*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_BUFFER_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_BUFFER_CFG $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_RX_BUFFER_CFG $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_BUFFER_CFG $offset $wdata]
  }
}
proc read_RX_BUFFER_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+23*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_BUFFER_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+23*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DEFER_RESET_BUF_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DEFER_RESET_BUF_EN $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_RX_DEFER_RESET_BUF_EN $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_RX_DEFER_RESET_BUF_EN $offset $wdata]
  }
}
proc read_RX_DEFER_RESET_BUF_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+23*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DEFER_RESET_BUF_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+23*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc OOBDIVCTL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_OOBDIVCTL $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_OOBDIVCTL $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_OOBDIVCTL $offset $wdata]
  }
}
proc read_OOBDIVCTL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+23*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_OOBDIVCTL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+23*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_AUTO_REALIGN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_AUTO_REALIGN $offset] & 0x20) >> 5]
  } else {
    set mask [expr [read_PCI3_AUTO_REALIGN $offset] & ~0x20]
    set wdata [expr ($data << 5) | $mask]
    return [write_PCI3_AUTO_REALIGN $offset $wdata]
  }
}
proc read_PCI3_AUTO_REALIGN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+23*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_AUTO_REALIGN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+23*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_PIPE_RX_ELECIDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_PIPE_RX_ELECIDLE $offset] & 0x10) >> 4]
  } else {
    set mask [expr [read_PCI3_PIPE_RX_ELECIDLE $offset] & ~0x10]
    set wdata [expr ($data << 4) | $mask]
    return [write_PCI3_PIPE_RX_ELECIDLE $offset $wdata]
  }
}
proc read_PCI3_PIPE_RX_ELECIDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+23*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_PIPE_RX_ELECIDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+23*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_1_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_1_ENABLE $offset] & 0xf000) >> 12]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_1_ENABLE $offset] & ~0xf000]
    set wdata [expr ($data << 12) | $mask]
    return [write_CHAN_BOND_SEQ_1_ENABLE $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_1_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+24*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_1_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+24*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCI3_RX_ASYNC_EBUF_BYPASS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCI3_RX_ASYNC_EBUF_BYPASS $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_PCI3_RX_ASYNC_EBUF_BYPASS $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_PCI3_RX_ASYNC_EBUF_BYPASS $offset $wdata]
  }
}
proc read_PCI3_RX_ASYNC_EBUF_BYPASS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+24*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCI3_RX_ASYNC_EBUF_BYPASS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+24*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_2_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_2_1 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_2_1 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_2_1 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_2_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+24*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_2_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+24*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_2_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_2_2 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_2_2 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_2_2 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_2_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+25*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_2_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+25*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_2_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_2_3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_2_3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_2_3 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_2_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+26*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_2_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+26*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_2_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_2_4 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_2_4 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_2_4 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_2_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+27*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_2_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+27*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_2_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_2_ENABLE $offset] & 0xf000) >> 12]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_2_ENABLE $offset] & ~0xf000]
    set wdata [expr ($data << 12) | $mask]
    return [write_CHAN_BOND_SEQ_2_ENABLE $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_2_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+28*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_2_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+28*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_2_USE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_2_USE $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_2_USE $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_CHAN_BOND_SEQ_2_USE $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_2_USE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+28*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_2_USE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+28*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_KEEP_IDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_KEEP_IDLE $offset] & 0x40) >> 6]
  } else {
    set mask [expr [read_CLK_COR_KEEP_IDLE $offset] & ~0x40]
    set wdata [expr ($data << 6) | $mask]
    return [write_CLK_COR_KEEP_IDLE $offset $wdata]
  }
}
proc read_CLK_COR_KEEP_IDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+28*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_KEEP_IDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+28*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_MIN_LAT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_MIN_LAT $offset] & 0x3f) >> 0]
  } else {
    set mask [expr [read_CLK_COR_MIN_LAT $offset] & ~0x3f]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_MIN_LAT $offset $wdata]
  }
}
proc read_CLK_COR_MIN_LAT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+28*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_MIN_LAT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+28*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_MAX_LAT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_MAX_LAT $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_CLK_COR_MAX_LAT $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_CLK_COR_MAX_LAT $offset $wdata]
  }
}
proc read_CLK_COR_MAX_LAT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+29*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_MAX_LAT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+29*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_PRECEDENCE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_PRECEDENCE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_CLK_COR_PRECEDENCE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_CLK_COR_PRECEDENCE $offset $wdata]
  }
}
proc read_CLK_COR_PRECEDENCE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+29*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_PRECEDENCE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+29*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_REPEAT_WAIT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_REPEAT_WAIT $offset] & 0x1f0) >> 4]
  } else {
    set mask [expr [read_CLK_COR_REPEAT_WAIT $offset] & ~0x1f0]
    set wdata [expr ($data << 4) | $mask]
    return [write_CLK_COR_REPEAT_WAIT $offset $wdata]
  }
}
proc read_CLK_COR_REPEAT_WAIT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+29*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_REPEAT_WAIT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+29*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_LEN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_LEN $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_CLK_COR_SEQ_LEN $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_CLK_COR_SEQ_LEN $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_LEN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+29*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_LEN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+29*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_KEEP_ALIGN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_KEEP_ALIGN $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_KEEP_ALIGN $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_KEEP_ALIGN $offset $wdata]
  }
}
proc read_CHAN_BOND_KEEP_ALIGN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+29*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_KEEP_ALIGN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+29*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_1_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_1_1 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_1_1 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_1_1 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_1_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+30*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_1_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+30*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_1_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_1_2 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_1_2 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_1_2 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_1_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+31*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_1_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+31*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_1_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_1_3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_1_3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_1_3 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_1_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+32*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_1_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+32*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_1_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_1_4 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_1_4 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_1_4 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_1_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+33*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_1_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+33*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_1_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_1_ENABLE $offset] & 0xf000) >> 12]
  } else {
    set mask [expr [read_CLK_COR_SEQ_1_ENABLE $offset] & ~0xf000]
    set wdata [expr ($data << 12) | $mask]
    return [write_CLK_COR_SEQ_1_ENABLE $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_1_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+34*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_1_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+34*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_2_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_2_1 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_2_1 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_2_1 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_2_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+34*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_2_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+34*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_2_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_2_2 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_2_2 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_2_2 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_2_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+35*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_2_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+35*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_2_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_2_ENABLE $offset] & 0xf000) >> 12]
  } else {
    set mask [expr [read_CLK_COR_SEQ_2_ENABLE $offset] & ~0xf000]
    set wdata [expr ($data << 12) | $mask]
    return [write_CLK_COR_SEQ_2_ENABLE $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_2_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+36*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_2_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+36*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_2_USE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_2_USE $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_CLK_COR_SEQ_2_USE $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_CLK_COR_SEQ_2_USE $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_2_USE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+36*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_2_USE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+36*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_CORRECT_USE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_CORRECT_USE $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_CLK_CORRECT_USE $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_CLK_CORRECT_USE $offset $wdata]
  }
}
proc read_CLK_CORRECT_USE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+36*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_CORRECT_USE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+36*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_2_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_2_3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_2_3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_2_3 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_2_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+36*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_2_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+36*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CLK_COR_SEQ_2_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CLK_COR_SEQ_2_4 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CLK_COR_SEQ_2_4 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CLK_COR_SEQ_2_4 $offset $wdata]
  }
}
proc read_CLK_COR_SEQ_2_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+37*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CLK_COR_SEQ_2_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+37*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HE_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HE_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HE_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HE_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_HE_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+38*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HE_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+38*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_COMMA_WORD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_COMMA_WORD $offset] & 0xe000) >> 13]
  } else {
    set mask [expr [read_ALIGN_COMMA_WORD $offset] & ~0xe000]
    set wdata [expr ($data << 13) | $mask]
    return [write_ALIGN_COMMA_WORD $offset $wdata]
  }
}
proc read_ALIGN_COMMA_WORD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+39*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_COMMA_WORD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+39*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_COMMA_DOUBLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_COMMA_DOUBLE $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_ALIGN_COMMA_DOUBLE $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_ALIGN_COMMA_DOUBLE $offset $wdata]
  }
}
proc read_ALIGN_COMMA_DOUBLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+39*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_COMMA_DOUBLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+39*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SHOW_REALIGN_COMMA { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SHOW_REALIGN_COMMA $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_SHOW_REALIGN_COMMA $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_SHOW_REALIGN_COMMA $offset $wdata]
  }
}
proc read_SHOW_REALIGN_COMMA { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+39*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SHOW_REALIGN_COMMA { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+39*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_COMMA_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_COMMA_ENABLE $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_ALIGN_COMMA_ENABLE $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ALIGN_COMMA_ENABLE $offset $wdata]
  }
}
proc read_ALIGN_COMMA_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+39*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_COMMA_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+39*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_FBDIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_FBDIV $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_CPLL_FBDIV $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_CPLL_FBDIV $offset $wdata]
  }
}
proc read_CPLL_FBDIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+40*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_FBDIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+40*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_FBDIV_45 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_FBDIV_45 $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_CPLL_FBDIV_45 $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_CPLL_FBDIV_45 $offset $wdata]
  }
}
proc read_CPLL_FBDIV_45 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+40*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_FBDIV_45 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+40*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_LOCK_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_LOCK_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_LOCK_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_LOCK_CFG0 $offset $wdata]
  }
}
proc read_RXCDR_LOCK_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+41*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_LOCK_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+41*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_REFCLK_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_REFCLK_DIV $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_CPLL_REFCLK_DIV $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_CPLL_REFCLK_DIV $offset $wdata]
  }
}
proc read_CPLL_REFCLK_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+42*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_REFCLK_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+42*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_IPS_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_IPS_EN $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_CPLL_IPS_EN $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_CPLL_IPS_EN $offset $wdata]
  }
}
proc read_CPLL_IPS_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+42*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_IPS_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+42*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_IPS_REFCLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_IPS_REFCLK_SEL $offset] & 0x380) >> 7]
  } else {
    set mask [expr [read_CPLL_IPS_REFCLK_SEL $offset] & ~0x380]
    set wdata [expr ($data << 7) | $mask]
    return [write_CPLL_IPS_REFCLK_SEL $offset $wdata]
  }
}
proc read_CPLL_IPS_REFCLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+42*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_IPS_REFCLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+42*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SATA_CPLL_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SATA_CPLL_CFG $offset] & 0x20) >> 5]
  } else {
    set mask [expr [read_SATA_CPLL_CFG $offset] & ~0x20]
    set wdata [expr ($data << 5) | $mask]
    return [write_SATA_CPLL_CFG $offset $wdata]
  }
}
proc read_SATA_CPLL_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+42*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SATA_CPLL_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+42*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc A_TXDIFFCTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_A_TXDIFFCTRL $offset] & 0x1f) >> 0]
  } else {
    set mask [expr [read_A_TXDIFFCTRL $offset] & ~0x1f]
    set wdata [expr ($data << 0) | $mask]
    return [write_A_TXDIFFCTRL $offset $wdata]
  }
}
proc read_A_TXDIFFCTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+42*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_A_TXDIFFCTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+42*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_INIT_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_INIT_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CPLL_INIT_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CPLL_INIT_CFG0 $offset $wdata]
  }
}
proc read_CPLL_INIT_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+43*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_INIT_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+43*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DEC_PCOMMA_DETECT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DEC_PCOMMA_DETECT $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_DEC_PCOMMA_DETECT $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_DEC_PCOMMA_DETECT $offset $wdata]
  }
}
proc read_DEC_PCOMMA_DETECT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+44*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DEC_PCOMMA_DETECT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+44*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DIVRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DIVRESET_TIME $offset] & 0xf80) >> 7]
  } else {
    set mask [expr [read_TX_DIVRESET_TIME $offset] & ~0xf80]
    set wdata [expr ($data << 7) | $mask]
    return [write_TX_DIVRESET_TIME $offset $wdata]
  }
}
proc read_TX_DIVRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+44*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DIVRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+44*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DIVRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DIVRESET_TIME $offset] & 0x7c) >> 2]
  } else {
    set mask [expr [read_RX_DIVRESET_TIME $offset] & ~0x7c]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_DIVRESET_TIME $offset $wdata]
  }
}
proc read_RX_DIVRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+44*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DIVRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+44*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc A_TXPROGDIVRESET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_A_TXPROGDIVRESET $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_A_TXPROGDIVRESET $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_A_TXPROGDIVRESET $offset $wdata]
  }
}
proc read_A_TXPROGDIVRESET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+44*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_A_TXPROGDIVRESET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+44*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc A_RXPROGDIVRESET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_A_RXPROGDIVRESET $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_A_RXPROGDIVRESET $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_A_RXPROGDIVRESET $offset $wdata]
  }
}
proc read_A_RXPROGDIVRESET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+44*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_A_RXPROGDIVRESET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+44*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_LOCK_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_LOCK_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_LOCK_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_LOCK_CFG1 $offset $wdata]
  }
}
proc read_RXCDR_LOCK_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+45*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_LOCK_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+45*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCFOK_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCFOK_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCFOK_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCFOK_CFG1 $offset $wdata]
  }
}
proc read_RXCFOK_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+46*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCFOK_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+46*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H2_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H2_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H2_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H2_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H2_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+47*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H2_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+47*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H2_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H2_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H2_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H2_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H2_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+48*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H2_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+48*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCFOK_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCFOK_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCFOK_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCFOK_CFG2 $offset $wdata]
  }
}
proc read_RXCFOK_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+49*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCFOK_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+49*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXLPM_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXLPM_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXLPM_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXLPM_CFG $offset $wdata]
  }
}
proc read_RXLPM_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+50*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXLPM_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+50*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXLPM_KH_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXLPM_KH_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXLPM_KH_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXLPM_KH_CFG0 $offset $wdata]
  }
}
proc read_RXLPM_KH_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+51*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXLPM_KH_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+51*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXLPM_KH_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXLPM_KH_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXLPM_KH_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXLPM_KH_CFG1 $offset $wdata]
  }
}
proc read_RXLPM_KH_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+52*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXLPM_KH_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+52*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFELPM_KL_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFELPM_KL_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFELPM_KL_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFELPM_KL_CFG0 $offset $wdata]
  }
}
proc read_RXDFELPM_KL_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+53*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFELPM_KL_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+53*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFELPM_KL_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFELPM_KL_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFELPM_KL_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFELPM_KL_CFG1 $offset $wdata]
  }
}
proc read_RXDFELPM_KL_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+54*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFELPM_KL_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+54*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXLPM_OS_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXLPM_OS_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXLPM_OS_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXLPM_OS_CFG0 $offset $wdata]
  }
}
proc read_RXLPM_OS_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+55*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXLPM_OS_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+55*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXLPM_OS_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXLPM_OS_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXLPM_OS_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXLPM_OS_CFG1 $offset $wdata]
  }
}
proc read_RXLPM_OS_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+56*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXLPM_OS_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+56*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXLPM_GC_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXLPM_GC_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXLPM_GC_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXLPM_GC_CFG $offset $wdata]
  }
}
proc read_RXLPM_GC_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+57*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXLPM_GC_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+57*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DMONITOR_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DMONITOR_CFG1 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_DMONITOR_CFG1 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_DMONITOR_CFG1 $offset $wdata]
  }
}
proc read_DMONITOR_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+58*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DMONITOR_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+58*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_CONTROL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_CONTROL $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_ES_CONTROL $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_ES_CONTROL $offset $wdata]
  }
}
proc read_ES_CONTROL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+60*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_CONTROL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+60*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_PRESCALE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_PRESCALE $offset] & 0x1f) >> 0]
  } else {
    set mask [expr [read_ES_PRESCALE $offset] & ~0x1f]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_PRESCALE $offset $wdata]
  }
}
proc read_ES_PRESCALE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+60*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_PRESCALE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+60*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_EYE_SCAN_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_EYE_SCAN_EN $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_ES_EYE_SCAN_EN $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_ES_EYE_SCAN_EN $offset $wdata]
  }
}
proc read_ES_EYE_SCAN_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+60*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_EYE_SCAN_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+60*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_ERRDET_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_ERRDET_EN $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_ES_ERRDET_EN $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_ES_ERRDET_EN $offset $wdata]
  }
}
proc read_ES_ERRDET_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+60*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_ERRDET_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+60*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_GC_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_GC_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_GC_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_GC_CFG2 $offset $wdata]
  }
}
proc read_RXDFE_GC_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+61*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_GC_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+61*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXDLY_LCFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXDLY_LCFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXDLY_LCFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXDLY_LCFG $offset $wdata]
  }
}
proc read_TXDLY_LCFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+62*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXDLY_LCFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+62*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER0 $offset $wdata]
  }
}
proc read_ES_QUALIFIER0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+63*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+63*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER1 $offset $wdata]
  }
}
proc read_ES_QUALIFIER1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+64*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+64*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER2 $offset $wdata]
  }
}
proc read_ES_QUALIFIER2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+65*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+65*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER3 $offset $wdata]
  }
}
proc read_ES_QUALIFIER3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+66*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+66*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER4 $offset $wdata]
  }
}
proc read_ES_QUALIFIER4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+67*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+67*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK0 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+68*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+68*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK1 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+69*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+69*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK2 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+70*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+70*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK3 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+71*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+71*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK4 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+72*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+72*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK0 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+73*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+73*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK1 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+74*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+74*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK2 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+75*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+75*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK3 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+76*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+76*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK4 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+77*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+77*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc FTS_LANE_DESKEW_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_FTS_LANE_DESKEW_EN $offset] & 0x10) >> 4]
  } else {
    set mask [expr [read_FTS_LANE_DESKEW_EN $offset] & ~0x10]
    set wdata [expr ($data << 4) | $mask]
    return [write_FTS_LANE_DESKEW_EN $offset $wdata]
  }
}
proc read_FTS_LANE_DESKEW_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+78*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_FTS_LANE_DESKEW_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+78*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc FTS_DESKEW_SEQ_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_FTS_DESKEW_SEQ_ENABLE $offset] & 0xf) >> 0]
  } else {
    set mask [expr [read_FTS_DESKEW_SEQ_ENABLE $offset] & ~0xf]
    set wdata [expr ($data << 0) | $mask]
    return [write_FTS_DESKEW_SEQ_ENABLE $offset $wdata]
  }
}
proc read_FTS_DESKEW_SEQ_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+78*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_FTS_DESKEW_SEQ_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+78*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_HORZ_OFFSET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_HORZ_OFFSET $offset] & 0xfff0) >> 4]
  } else {
    set mask [expr [read_ES_HORZ_OFFSET $offset] & ~0xfff0]
    set wdata [expr ($data << 4) | $mask]
    return [write_ES_HORZ_OFFSET $offset $wdata]
  }
}
proc read_ES_HORZ_OFFSET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+79*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_HORZ_OFFSET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+79*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc FTS_LANE_DESKEW_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_FTS_LANE_DESKEW_CFG $offset] & 0xf) >> 0]
  } else {
    set mask [expr [read_FTS_LANE_DESKEW_CFG $offset] & ~0xf]
    set wdata [expr ($data << 0) | $mask]
    return [write_FTS_LANE_DESKEW_CFG $offset $wdata]
  }
}
proc read_FTS_LANE_DESKEW_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+79*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_FTS_LANE_DESKEW_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+79*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HC_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HC_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HC_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HC_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_HC_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+80*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HC_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+80*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_PMA_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_PMA_CFG $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_ES_PMA_CFG $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_PMA_CFG $offset $wdata]
  }
}
proc read_ES_PMA_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+81*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_PMA_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+81*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFE_AGC_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFE_AGC_CFG1 $offset] & 0x1c) >> 2]
  } else {
    set mask [expr [read_RX_DFE_AGC_CFG1 $offset] & ~0x1c]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_DFE_AGC_CFG1 $offset $wdata]
  }
}
proc read_RX_DFE_AGC_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+82*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFE_AGC_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+82*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXFE_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXFE_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXFE_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXFE_CFG2 $offset $wdata]
  }
}
proc read_TXFE_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+83*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXFE_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+83*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXFE_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXFE_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXFE_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXFE_CFG3 $offset $wdata]
  }
}
proc read_TXFE_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+84*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXFE_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+84*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_64B_DYN_CLKSW_DIS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_64B_DYN_CLKSW_DIS $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_PCIE_64B_DYN_CLKSW_DIS $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_PCIE_64B_DYN_CLKSW_DIS $offset $wdata]
  }
}
proc read_PCIE_64B_DYN_CLKSW_DIS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+85*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_64B_DYN_CLKSW_DIS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+85*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LOCAL_MASTER { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LOCAL_MASTER $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_LOCAL_MASTER $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_LOCAL_MASTER $offset $wdata]
  }
}
proc read_LOCAL_MASTER { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+85*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LOCAL_MASTER { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+85*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCS_PCIE_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCS_PCIE_EN $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_PCS_PCIE_EN $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_PCS_PCIE_EN $offset $wdata]
  }
}
proc read_PCS_PCIE_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+85*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCS_PCIE_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+85*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_GEN4_64BIT_INT_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_GEN4_64BIT_INT_EN $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_PCIE_GEN4_64BIT_INT_EN $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_PCIE_GEN4_64BIT_INT_EN $offset $wdata]
  }
}
proc read_PCIE_GEN4_64BIT_INT_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+85*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_GEN4_64BIT_INT_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+85*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_MCOMMA_DET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_MCOMMA_DET $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_ALIGN_MCOMMA_DET $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_ALIGN_MCOMMA_DET $offset $wdata]
  }
}
proc read_ALIGN_MCOMMA_DET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+85*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_MCOMMA_DET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+85*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_MCOMMA_VALUE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_MCOMMA_VALUE $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_ALIGN_MCOMMA_VALUE $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ALIGN_MCOMMA_VALUE $offset $wdata]
  }
}
proc read_ALIGN_MCOMMA_VALUE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+85*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_MCOMMA_VALUE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+85*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_PCOMMA_DET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_PCOMMA_DET $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_ALIGN_PCOMMA_DET $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_ALIGN_PCOMMA_DET $offset $wdata]
  }
}
proc read_ALIGN_PCOMMA_DET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+86*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_PCOMMA_DET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+86*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ALIGN_PCOMMA_VALUE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ALIGN_PCOMMA_VALUE $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_ALIGN_PCOMMA_VALUE $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ALIGN_PCOMMA_VALUE $offset $wdata]
  }
}
proc read_ALIGN_PCOMMA_VALUE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+86*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ALIGN_PCOMMA_VALUE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+86*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PROGDIV_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PROGDIV_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_PROGDIV_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_PROGDIV_CFG $offset $wdata]
  }
}
proc read_TX_PROGDIV_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+87*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PROGDIV_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+87*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_OS_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_OS_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_OS_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_OS_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_OS_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+88*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_OS_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+88*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPHDLY_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPHDLY_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXPHDLY_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPHDLY_CFG $offset $wdata]
  }
}
proc read_RXPHDLY_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+89*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPHDLY_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+89*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_OS_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_OS_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_OS_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_OS_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_OS_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+90*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_OS_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+90*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDLY_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDLY_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDLY_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDLY_CFG $offset $wdata]
  }
}
proc read_RXDLY_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+91*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDLY_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+91*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDLY_LCFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDLY_LCFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDLY_LCFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDLY_LCFG $offset $wdata]
  }
}
proc read_RXDLY_LCFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+92*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDLY_LCFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+92*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HF_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HF_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HF_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HF_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_HF_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+93*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HF_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+93*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HD_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HD_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HD_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HD_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_HD_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+94*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HD_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+94*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_BIAS_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_BIAS_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RX_BIAS_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_BIAS_CFG0 $offset $wdata]
  }
}
proc read_RX_BIAS_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+95*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_BIAS_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+95*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCS_RSVD0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCS_RSVD0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PCS_RSVD0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCS_RSVD0 $offset $wdata]
  }
}
proc read_PCS_RSVD0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+96*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCS_RSVD0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+96*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_GEN4_NEW_EIEOS_DET_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_GEN4_NEW_EIEOS_DET_EN $offset] & 0x1f0) >> 4]
  } else {
    set mask [expr [read_PCIE_GEN4_NEW_EIEOS_DET_EN $offset] & ~0x1f0]
    set wdata [expr ($data << 4) | $mask]
    return [write_PCIE_GEN4_NEW_EIEOS_DET_EN $offset $wdata]
  }
}
proc read_PCIE_GEN4_NEW_EIEOS_DET_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+96*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_GEN4_NEW_EIEOS_DET_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+96*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB3_RXTERMINATION_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB3_RXTERMINATION_CTRL $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_USB3_RXTERMINATION_CTRL $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB3_RXTERMINATION_CTRL $offset $wdata]
  }
}
proc read_USB3_RXTERMINATION_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+96*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB3_RXTERMINATION_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+96*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPH_MONITOR_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPH_MONITOR_SEL $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_RXPH_MONITOR_SEL $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RXPH_MONITOR_SEL $offset $wdata]
  }
}
proc read_RXPH_MONITOR_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+97*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPH_MONITOR_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+97*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CM_BUF_PD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CM_BUF_PD $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RX_CM_BUF_PD $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_CM_BUF_PD $offset $wdata]
  }
}
proc read_RX_CM_BUF_PD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+97*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CM_BUF_PD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+97*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CM_BUF_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CM_BUF_CFG $offset] & 0x3c0) >> 6]
  } else {
    set mask [expr [read_RX_CM_BUF_CFG $offset] & ~0x3c0]
    set wdata [expr ($data << 6) | $mask]
    return [write_RX_CM_BUF_CFG $offset $wdata]
  }
}
proc read_RX_CM_BUF_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+97*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CM_BUF_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+97*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CM_TRIM { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CM_TRIM $offset] & 0x3c) >> 2]
  } else {
    set mask [expr [read_RX_CM_TRIM $offset] & ~0x3c]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_CM_TRIM $offset $wdata]
  }
}
proc read_RX_CM_TRIM { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+97*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CM_TRIM { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+97*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CM_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CM_SEL $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RX_CM_SEL $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_CM_SEL $offset $wdata]
  }
}
proc read_RX_CM_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+97*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CM_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+97*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_I2V_FILTER_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_I2V_FILTER_EN $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_RX_I2V_FILTER_EN $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_RX_I2V_FILTER_EN $offset $wdata]
  }
}
proc read_RX_I2V_FILTER_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_I2V_FILTER_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_DFETAPREP_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_DFETAPREP_EN $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_RX_SUM_DFETAPREP_EN $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_RX_SUM_DFETAPREP_EN $offset $wdata]
  }
}
proc read_RX_SUM_DFETAPREP_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_DFETAPREP_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_VCM_OVWR { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_VCM_OVWR $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_RX_SUM_VCM_OVWR $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_RX_SUM_VCM_OVWR $offset $wdata]
  }
}
proc read_RX_SUM_VCM_OVWR { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_VCM_OVWR { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_IREF_TUNE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_IREF_TUNE $offset] & 0x1e00) >> 9]
  } else {
    set mask [expr [read_RX_SUM_IREF_TUNE $offset] & ~0x1e00]
    set wdata [expr ($data << 9) | $mask]
    return [write_RX_SUM_IREF_TUNE $offset $wdata]
  }
}
proc read_RX_SUM_IREF_TUNE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_IREF_TUNE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc EYESCAN_VP_RANGE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_EYESCAN_VP_RANGE $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_EYESCAN_VP_RANGE $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_EYESCAN_VP_RANGE $offset $wdata]
  }
}
proc read_EYESCAN_VP_RANGE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_EYESCAN_VP_RANGE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_VCMTUNE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_VCMTUNE $offset] & 0x78) >> 3]
  } else {
    set mask [expr [read_RX_SUM_VCMTUNE $offset] & ~0x78]
    set wdata [expr ($data << 3) | $mask]
    return [write_RX_SUM_VCMTUNE $offset $wdata]
  }
}
proc read_RX_SUM_VCMTUNE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_VCMTUNE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_VREF_TUNE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_VREF_TUNE $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_RX_SUM_VREF_TUNE $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_SUM_VREF_TUNE $offset $wdata]
  }
}
proc read_RX_SUM_VREF_TUNE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+98*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_VREF_TUNE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+98*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CBCC_DATA_SOURCE_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CBCC_DATA_SOURCE_SEL $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_CBCC_DATA_SOURCE_SEL $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_CBCC_DATA_SOURCE_SEL $offset $wdata]
  }
}
proc read_CBCC_DATA_SOURCE_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+99*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CBCC_DATA_SOURCE_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+99*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc OOB_PWRUP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_OOB_PWRUP $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_OOB_PWRUP $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_OOB_PWRUP $offset $wdata]
  }
}
proc read_OOB_PWRUP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+99*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_OOB_PWRUP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+99*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXOOB_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXOOB_CFG $offset] & 0x3fe0) >> 5]
  } else {
    set mask [expr [read_RXOOB_CFG $offset] & ~0x3fe0]
    set wdata [expr ($data << 5) | $mask]
    return [write_RXOOB_CFG $offset $wdata]
  }
}
proc read_RXOOB_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+99*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXOOB_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+99*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXOUT_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXOUT_DIV $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_RXOUT_DIV $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXOUT_DIV $offset $wdata]
  }
}
proc read_RXOUT_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+99*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXOUT_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+99*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SIG_VALID_DLY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SIG_VALID_DLY $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_RX_SIG_VALID_DLY $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RX_SIG_VALID_DLY $offset $wdata]
  }
}
proc read_RX_SIG_VALID_DLY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SIG_VALID_DLY { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXSLIDE_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXSLIDE_MODE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_RXSLIDE_MODE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_RXSLIDE_MODE $offset $wdata]
  }
}
proc read_RXSLIDE_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXSLIDE_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPRBS_ERR_LOOPBACK { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPRBS_ERR_LOOPBACK $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RXPRBS_ERR_LOOPBACK $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RXPRBS_ERR_LOOPBACK $offset $wdata]
  }
}
proc read_RXPRBS_ERR_LOOPBACK { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPRBS_ERR_LOOPBACK { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXSLIDE_AUTO_WAIT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXSLIDE_AUTO_WAIT $offset] & 0xf0) >> 4]
  } else {
    set mask [expr [read_RXSLIDE_AUTO_WAIT $offset] & ~0xf0]
    set wdata [expr ($data << 4) | $mask]
    return [write_RXSLIDE_AUTO_WAIT $offset $wdata]
  }
}
proc read_RXSLIDE_AUTO_WAIT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXSLIDE_AUTO_WAIT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_EN $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_RXBUF_EN $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RXBUF_EN $offset $wdata]
  }
}
proc read_RXBUF_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_XCLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_XCLK_SEL $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_RX_XCLK_SEL $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_RX_XCLK_SEL $offset $wdata]
  }
}
proc read_RX_XCLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_XCLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXGEARBOX_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXGEARBOX_EN $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RXGEARBOX_EN $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXGEARBOX_EN $offset $wdata]
  }
}
proc read_RXGEARBOX_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+100*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXGEARBOX_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+100*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_THRESH_OVFLW { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_THRESH_OVFLW $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_RXBUF_THRESH_OVFLW $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_RXBUF_THRESH_OVFLW $offset $wdata]
  }
}
proc read_RXBUF_THRESH_OVFLW { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+101*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_THRESH_OVFLW { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+101*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DMONITOR_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DMONITOR_CFG0 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_DMONITOR_CFG0 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_DMONITOR_CFG0 $offset $wdata]
  }
}
proc read_DMONITOR_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+101*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DMONITOR_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+101*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_THRESH_OVRD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_THRESH_OVRD $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_RXBUF_THRESH_OVRD $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_RXBUF_THRESH_OVRD $offset $wdata]
  }
}
proc read_RXBUF_THRESH_OVRD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_THRESH_OVRD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_RESET_ON_COMMAALIGN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_RESET_ON_COMMAALIGN $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_RXBUF_RESET_ON_COMMAALIGN $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_RXBUF_RESET_ON_COMMAALIGN $offset $wdata]
  }
}
proc read_RXBUF_RESET_ON_COMMAALIGN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_RESET_ON_COMMAALIGN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_RESET_ON_RATE_CHANGE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_RESET_ON_RATE_CHANGE $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_RXBUF_RESET_ON_RATE_CHANGE $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_RXBUF_RESET_ON_RATE_CHANGE $offset $wdata]
  }
}
proc read_RXBUF_RESET_ON_RATE_CHANGE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_RESET_ON_RATE_CHANGE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_RESET_ON_CB_CHANGE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_RESET_ON_CB_CHANGE $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_RXBUF_RESET_ON_CB_CHANGE $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_RXBUF_RESET_ON_CB_CHANGE $offset $wdata]
  }
}
proc read_RXBUF_RESET_ON_CB_CHANGE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_RESET_ON_CB_CHANGE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_THRESH_UNDFLW { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_THRESH_UNDFLW $offset] & 0xfc0) >> 6]
  } else {
    set mask [expr [read_RXBUF_THRESH_UNDFLW $offset] & ~0xfc0]
    set wdata [expr ($data << 6) | $mask]
    return [write_RXBUF_THRESH_UNDFLW $offset $wdata]
  }
}
proc read_RXBUF_THRESH_UNDFLW { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_THRESH_UNDFLW { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CLKMUX_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CLKMUX_EN $offset] & 0x20) >> 5]
  } else {
    set mask [expr [read_RX_CLKMUX_EN $offset] & ~0x20]
    set wdata [expr ($data << 5) | $mask]
    return [write_RX_CLKMUX_EN $offset $wdata]
  }
}
proc read_RX_CLKMUX_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CLKMUX_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DISPERR_SEQ_MATCH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DISPERR_SEQ_MATCH $offset] & 0x10) >> 4]
  } else {
    set mask [expr [read_RX_DISPERR_SEQ_MATCH $offset] & ~0x10]
    set wdata [expr ($data << 4) | $mask]
    return [write_RX_DISPERR_SEQ_MATCH $offset $wdata]
  }
}
proc read_RX_DISPERR_SEQ_MATCH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DISPERR_SEQ_MATCH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_WIDEMODE_CDR { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_WIDEMODE_CDR $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_RX_WIDEMODE_CDR $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_WIDEMODE_CDR $offset $wdata]
  }
}
proc read_RX_WIDEMODE_CDR { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_WIDEMODE_CDR { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_INT_DATAWIDTH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_INT_DATAWIDTH $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RX_INT_DATAWIDTH $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_INT_DATAWIDTH $offset $wdata]
  }
}
proc read_RX_INT_DATAWIDTH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+102*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_INT_DATAWIDTH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+102*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_EIDLE_HI_CNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_EIDLE_HI_CNT $offset] & 0xf000) >> 12]
  } else {
    set mask [expr [read_RXBUF_EIDLE_HI_CNT $offset] & ~0xf000]
    set wdata [expr ($data << 12) | $mask]
    return [write_RXBUF_EIDLE_HI_CNT $offset $wdata]
  }
}
proc read_RXBUF_EIDLE_HI_CNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_EIDLE_HI_CNT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_HOLD_DURING_EIDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_HOLD_DURING_EIDLE $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_RXCDR_HOLD_DURING_EIDLE $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RXCDR_HOLD_DURING_EIDLE $offset $wdata]
  }
}
proc read_RXCDR_HOLD_DURING_EIDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_HOLD_DURING_EIDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFE_LPM_HOLD_DURING_EIDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFE_LPM_HOLD_DURING_EIDLE $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RX_DFE_LPM_HOLD_DURING_EIDLE $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_DFE_LPM_HOLD_DURING_EIDLE $offset $wdata]
  }
}
proc read_RX_DFE_LPM_HOLD_DURING_EIDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFE_LPM_HOLD_DURING_EIDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_WIDEMODE_CDR_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_WIDEMODE_CDR_GEN3 $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RX_WIDEMODE_CDR_GEN3 $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RX_WIDEMODE_CDR_GEN3 $offset $wdata]
  }
}
proc read_RX_WIDEMODE_CDR_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_WIDEMODE_CDR_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_EIDLE_LO_CNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_EIDLE_LO_CNT $offset] & 0xf0) >> 4]
  } else {
    set mask [expr [read_RXBUF_EIDLE_LO_CNT $offset] & ~0xf0]
    set wdata [expr ($data << 4) | $mask]
    return [write_RXBUF_EIDLE_LO_CNT $offset $wdata]
  }
}
proc read_RXBUF_EIDLE_LO_CNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_EIDLE_LO_CNT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_RESET_ON_EIDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_RESET_ON_EIDLE $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_RXBUF_RESET_ON_EIDLE $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RXBUF_RESET_ON_EIDLE $offset $wdata]
  }
}
proc read_RXBUF_RESET_ON_EIDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_RESET_ON_EIDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_FR_RESET_ON_EIDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_FR_RESET_ON_EIDLE $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_RXCDR_FR_RESET_ON_EIDLE $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_RXCDR_FR_RESET_ON_EIDLE $offset $wdata]
  }
}
proc read_RXCDR_FR_RESET_ON_EIDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_FR_RESET_ON_EIDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_PH_RESET_ON_EIDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_PH_RESET_ON_EIDLE $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_RXCDR_PH_RESET_ON_EIDLE $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_RXCDR_PH_RESET_ON_EIDLE $offset $wdata]
  }
}
proc read_RXCDR_PH_RESET_ON_EIDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_PH_RESET_ON_EIDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXBUF_ADDR_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXBUF_ADDR_MODE $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RXBUF_ADDR_MODE $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXBUF_ADDR_MODE $offset $wdata]
  }
}
proc read_RXBUF_ADDR_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+103*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXBUF_ADDR_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+103*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SATA_BURST_VAL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SATA_BURST_VAL $offset] & 0xe000) >> 13]
  } else {
    set mask [expr [read_SATA_BURST_VAL $offset] & ~0xe000]
    set wdata [expr ($data << 13) | $mask]
    return [write_SATA_BURST_VAL $offset $wdata]
  }
}
proc read_SATA_BURST_VAL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+104*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SATA_BURST_VAL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+104*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SAS_12G_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SAS_12G_MODE $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_SAS_12G_MODE $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_SAS_12G_MODE $offset $wdata]
  }
}
proc read_SAS_12G_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+104*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SAS_12G_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+104*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_TXIDLE_TUNE_ENABLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_TXIDLE_TUNE_ENABLE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_USB_TXIDLE_TUNE_ENABLE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_USB_TXIDLE_TUNE_ENABLE $offset $wdata]
  }
}
proc read_USB_TXIDLE_TUNE_ENABLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+104*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_TXIDLE_TUNE_ENABLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+104*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_RXIDLE_P0_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_RXIDLE_P0_CTRL $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_USB_RXIDLE_P0_CTRL $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_USB_RXIDLE_P0_CTRL $offset $wdata]
  }
}
proc read_USB_RXIDLE_P0_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+104*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_RXIDLE_P0_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+104*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SATA_BURST_SEQ_LEN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SATA_BURST_SEQ_LEN $offset] & 0xf0) >> 4]
  } else {
    set mask [expr [read_SATA_BURST_SEQ_LEN $offset] & ~0xf0]
    set wdata [expr ($data << 4) | $mask]
    return [write_SATA_BURST_SEQ_LEN $offset $wdata]
  }
}
proc read_SATA_BURST_SEQ_LEN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+104*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SATA_BURST_SEQ_LEN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+104*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SATA_EIDLE_VAL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SATA_EIDLE_VAL $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_SATA_EIDLE_VAL $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_SATA_EIDLE_VAL $offset $wdata]
  }
}
proc read_SATA_EIDLE_VAL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+104*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SATA_EIDLE_VAL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+104*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_POLL_SATA_MIN_BURST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_POLL_SATA_MIN_BURST $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_USB_POLL_SATA_MIN_BURST $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_USB_POLL_SATA_MIN_BURST $offset $wdata]
  }
}
proc read_USB_POLL_SATA_MIN_BURST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+105*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_POLL_SATA_MIN_BURST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+105*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_WIDEMODE_CDR_GEN4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_WIDEMODE_CDR_GEN4 $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_RX_WIDEMODE_CDR_GEN4 $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_RX_WIDEMODE_CDR_GEN4 $offset $wdata]
  }
}
proc read_RX_WIDEMODE_CDR_GEN4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+105*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_WIDEMODE_CDR_GEN4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+105*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_U2_SAS_MIN_COM { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_U2_SAS_MIN_COM $offset] & 0x7f) >> 0]
  } else {
    set mask [expr [read_USB_U2_SAS_MIN_COM $offset] & ~0x7f]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_U2_SAS_MIN_COM $offset $wdata]
  }
}
proc read_USB_U2_SAS_MIN_COM { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+105*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_U2_SAS_MIN_COM { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+105*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_PING_SATA_MIN_INIT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_PING_SATA_MIN_INIT $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_USB_PING_SATA_MIN_INIT $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_USB_PING_SATA_MIN_INIT $offset $wdata]
  }
}
proc read_USB_PING_SATA_MIN_INIT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+106*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_PING_SATA_MIN_INIT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+106*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_U1_SATA_MIN_WAKE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_U1_SATA_MIN_WAKE $offset] & 0x7f) >> 0]
  } else {
    set mask [expr [read_USB_U1_SATA_MIN_WAKE $offset] & ~0x7f]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_U1_SATA_MIN_WAKE $offset $wdata]
  }
}
proc read_USB_U1_SATA_MIN_WAKE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+106*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_U1_SATA_MIN_WAKE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+106*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_POLL_SATA_MAX_BURST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_POLL_SATA_MAX_BURST $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_USB_POLL_SATA_MAX_BURST $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_USB_POLL_SATA_MAX_BURST $offset $wdata]
  }
}
proc read_USB_POLL_SATA_MAX_BURST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+107*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_POLL_SATA_MAX_BURST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+107*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_U2_SAS_MAX_COM { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_U2_SAS_MAX_COM $offset] & 0x7f) >> 0]
  } else {
    set mask [expr [read_USB_U2_SAS_MAX_COM $offset] & ~0x7f]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_U2_SAS_MAX_COM $offset $wdata]
  }
}
proc read_USB_U2_SAS_MAX_COM { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+107*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_U2_SAS_MAX_COM { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+107*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_PING_SATA_MAX_INIT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_PING_SATA_MAX_INIT $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_USB_PING_SATA_MAX_INIT $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_USB_PING_SATA_MAX_INIT $offset $wdata]
  }
}
proc read_USB_PING_SATA_MAX_INIT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+108*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_PING_SATA_MAX_INIT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+108*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_U1_SATA_MAX_WAKE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_U1_SATA_MAX_WAKE $offset] & 0x7f) >> 0]
  } else {
    set mask [expr [read_USB_U1_SATA_MAX_WAKE $offset] & ~0x7f]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_U1_SATA_MAX_WAKE $offset $wdata]
  }
}
proc read_USB_U1_SATA_MAX_WAKE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+108*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_U1_SATA_MAX_WAKE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+108*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CLK25_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CLK25_DIV $offset] & 0xf8) >> 3]
  } else {
    set mask [expr [read_RX_CLK25_DIV $offset] & ~0xf8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RX_CLK25_DIV $offset $wdata]
  }
}
proc read_RX_CLK25_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+109*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CLK25_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+109*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_UT_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_UT_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_UT_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_UT_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_UT_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+110*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_UT_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+110*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPHDLY_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPHDLY_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXPHDLY_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPHDLY_CFG1 $offset $wdata]
  }
}
proc read_TXPHDLY_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+111*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPHDLY_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+111*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_VP_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_VP_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_VP_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_VP_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_VP_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+112*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_VP_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+112*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPH_MONITOR_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPH_MONITOR_SEL $offset] & 0x7c) >> 2]
  } else {
    set mask [expr [read_TXPH_MONITOR_SEL $offset] & ~0x7c]
    set wdata [expr ($data << 2) | $mask]
    return [write_TXPH_MONITOR_SEL $offset $wdata]
  }
}
proc read_TXPH_MONITOR_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+113*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPH_MONITOR_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+113*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TAPDLY_SET_TX { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TAPDLY_SET_TX $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_TAPDLY_SET_TX $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_TAPDLY_SET_TX $offset $wdata]
  }
}
proc read_TAPDLY_SET_TX { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+113*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TAPDLY_SET_TX { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+113*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ADAPT_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ADAPT_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ADAPT_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ADAPT_CFG2 $offset $wdata]
  }
}
proc read_ADAPT_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+114*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ADAPT_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+114*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_VP_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_VP_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_VP_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_VP_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_VP_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+115*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_VP_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+115*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TERM_RCAL_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TERM_RCAL_CFG $offset] & 0x7fff) >> 0]
  } else {
    set mask [expr [read_TERM_RCAL_CFG $offset] & ~0x7fff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TERM_RCAL_CFG $offset $wdata]
  }
}
proc read_TERM_RCAL_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+116*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TERM_RCAL_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+116*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPI_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPI_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXPI_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPI_CFG0 $offset $wdata]
  }
}
proc read_RXPI_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+117*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPI_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+117*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PD_TRANS_TIME_FROM_P2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PD_TRANS_TIME_FROM_P2 $offset] & 0xfff0) >> 4]
  } else {
    set mask [expr [read_PD_TRANS_TIME_FROM_P2 $offset] & ~0xfff0]
    set wdata [expr ($data << 4) | $mask]
    return [write_PD_TRANS_TIME_FROM_P2 $offset $wdata]
  }
}
proc read_PD_TRANS_TIME_FROM_P2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+118*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PD_TRANS_TIME_FROM_P2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+118*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TERM_RCAL_OVRD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TERM_RCAL_OVRD $offset] & 0xe) >> 1]
  } else {
    set mask [expr [read_TERM_RCAL_OVRD $offset] & ~0xe]
    set wdata [expr ($data << 1) | $mask]
    return [write_TERM_RCAL_OVRD $offset $wdata]
  }
}
proc read_TERM_RCAL_OVRD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+118*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TERM_RCAL_OVRD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+118*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PD_TRANS_TIME_NONE_P2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PD_TRANS_TIME_NONE_P2 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_PD_TRANS_TIME_NONE_P2 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_PD_TRANS_TIME_NONE_P2 $offset $wdata]
  }
}
proc read_PD_TRANS_TIME_NONE_P2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+119*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PD_TRANS_TIME_NONE_P2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+119*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PD_TRANS_TIME_TO_P2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PD_TRANS_TIME_TO_P2 $offset] & 0xff) >> 0]
  } else {
    set mask [expr [read_PD_TRANS_TIME_TO_P2 $offset] & ~0xff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PD_TRANS_TIME_TO_P2 $offset $wdata]
  }
}
proc read_PD_TRANS_TIME_TO_P2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+119*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PD_TRANS_TIME_TO_P2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+119*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TRANS_TIME_RATE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TRANS_TIME_RATE $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_TRANS_TIME_RATE $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_TRANS_TIME_RATE $offset $wdata]
  }
}
proc read_TRANS_TIME_RATE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+120*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TRANS_TIME_RATE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+120*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TST_RSV0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TST_RSV0 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_TST_RSV0 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_TST_RSV0 $offset $wdata]
  }
}
proc read_TST_RSV0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+121*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TST_RSV0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+121*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TST_RSV1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TST_RSV1 $offset] & 0xff) >> 0]
  } else {
    set mask [expr [read_TST_RSV1 $offset] & ~0xff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TST_RSV1 $offset $wdata]
  }
}
proc read_TST_RSV1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+121*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TST_RSV1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+121*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_CLK25_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_CLK25_DIV $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_TX_CLK25_DIV $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_TX_CLK25_DIV $offset $wdata]
  }
}
proc read_TX_CLK25_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+122*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_CLK25_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+122*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_XCLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_XCLK_SEL $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_TX_XCLK_SEL $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_TX_XCLK_SEL $offset $wdata]
  }
}
proc read_TX_XCLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+122*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_XCLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+122*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DATA_WIDTH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DATA_WIDTH $offset] & 0xf) >> 0]
  } else {
    set mask [expr [read_TX_DATA_WIDTH $offset] & ~0xf]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_DATA_WIDTH $offset $wdata]
  }
}
proc read_TX_DATA_WIDTH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+122*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DATA_WIDTH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+122*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DEEMPH0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DEEMPH0 $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_TX_DEEMPH0 $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_TX_DEEMPH0 $offset $wdata]
  }
}
proc read_TX_DEEMPH0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+123*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DEEMPH0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+123*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DEEMPH1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DEEMPH1 $offset] & 0xfc) >> 2]
  } else {
    set mask [expr [read_TX_DEEMPH1 $offset] & ~0xfc]
    set wdata [expr ($data << 2) | $mask]
    return [write_TX_DEEMPH1 $offset $wdata]
  }
}
proc read_TX_DEEMPH1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+123*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DEEMPH1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+123*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MAINCURSOR_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MAINCURSOR_SEL $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_TX_MAINCURSOR_SEL $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_TX_MAINCURSOR_SEL $offset $wdata]
  }
}
proc read_TX_MAINCURSOR_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MAINCURSOR_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXGEARBOX_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXGEARBOX_EN $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_TXGEARBOX_EN $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_TXGEARBOX_EN $offset $wdata]
  }
}
proc read_TXGEARBOX_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXGEARBOX_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXOUT_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXOUT_DIV $offset] & 0x700) >> 8]
  } else {
    set mask [expr [read_TXOUT_DIV $offset] & ~0x700]
    set wdata [expr ($data << 8) | $mask]
    return [write_TXOUT_DIV $offset $wdata]
  }
}
proc read_TXOUT_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXOUT_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXBUF_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXBUF_EN $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_TXBUF_EN $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_TXBUF_EN $offset $wdata]
  }
}
proc read_TXBUF_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXBUF_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXBUF_RESET_ON_RATE_CHANGE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXBUF_RESET_ON_RATE_CHANGE $offset] & 0x40) >> 6]
  } else {
    set mask [expr [read_TXBUF_RESET_ON_RATE_CHANGE $offset] & ~0x40]
    set wdata [expr ($data << 6) | $mask]
    return [write_TXBUF_RESET_ON_RATE_CHANGE $offset $wdata]
  }
}
proc read_TXBUF_RESET_ON_RATE_CHANGE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXBUF_RESET_ON_RATE_CHANGE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_RXDETECT_REF { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_RXDETECT_REF $offset] & 0x38) >> 3]
  } else {
    set mask [expr [read_TX_RXDETECT_REF $offset] & ~0x38]
    set wdata [expr ($data << 3) | $mask]
    return [write_TX_RXDETECT_REF $offset $wdata]
  }
}
proc read_TX_RXDETECT_REF { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_RXDETECT_REF { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXFIFO_ADDR_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXFIFO_ADDR_CFG $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_TXFIFO_ADDR_CFG $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_TXFIFO_ADDR_CFG $offset $wdata]
  }
}
proc read_TXFIFO_ADDR_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXFIFO_ADDR_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_SW_MEAS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_SW_MEAS $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_TX_SW_MEAS $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_SW_MEAS $offset $wdata]
  }
}
proc read_TX_SW_MEAS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+124*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_SW_MEAS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+124*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_RXDETECT_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_RXDETECT_CFG $offset] & 0xfffc) >> 2]
  } else {
    set mask [expr [read_TX_RXDETECT_CFG $offset] & ~0xfffc]
    set wdata [expr ($data << 2) | $mask]
    return [write_TX_RXDETECT_CFG $offset $wdata]
  }
}
proc read_TX_RXDETECT_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+125*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_RXDETECT_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+125*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_CLKMUX_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_CLKMUX_EN $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_TX_CLKMUX_EN $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_TX_CLKMUX_EN $offset $wdata]
  }
}
proc read_TX_CLKMUX_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+126*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_CLKMUX_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+126*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_LOOPBACK_DRIVE_HIZ { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_LOOPBACK_DRIVE_HIZ $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_TX_LOOPBACK_DRIVE_HIZ $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_TX_LOOPBACK_DRIVE_HIZ $offset $wdata]
  }
}
proc read_TX_LOOPBACK_DRIVE_HIZ { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+126*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_LOOPBACK_DRIVE_HIZ { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+126*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DRIVE_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DRIVE_MODE $offset] & 0x1f00) >> 8]
  } else {
    set mask [expr [read_TX_DRIVE_MODE $offset] & ~0x1f00]
    set wdata [expr ($data << 8) | $mask]
    return [write_TX_DRIVE_MODE $offset $wdata]
  }
}
proc read_TX_DRIVE_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+126*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DRIVE_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+126*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_EIDLE_ASSERT_DELAY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_EIDLE_ASSERT_DELAY $offset] & 0xe0) >> 5]
  } else {
    set mask [expr [read_TX_EIDLE_ASSERT_DELAY $offset] & ~0xe0]
    set wdata [expr ($data << 5) | $mask]
    return [write_TX_EIDLE_ASSERT_DELAY $offset $wdata]
  }
}
proc read_TX_EIDLE_ASSERT_DELAY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+126*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_EIDLE_ASSERT_DELAY { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+126*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_EIDLE_DEASSERT_DELAY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_EIDLE_DEASSERT_DELAY $offset] & 0x1c) >> 2]
  } else {
    set mask [expr [read_TX_EIDLE_DEASSERT_DELAY $offset] & ~0x1c]
    set wdata [expr ($data << 2) | $mask]
    return [write_TX_EIDLE_DEASSERT_DELAY $offset $wdata]
  }
}
proc read_TX_EIDLE_DEASSERT_DELAY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+126*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_EIDLE_DEASSERT_DELAY { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+126*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_FULL_0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_FULL_0 $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_TX_MARGIN_FULL_0 $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_MARGIN_FULL_0 $offset $wdata]
  }
}
proc read_TX_MARGIN_FULL_0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+127*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_FULL_0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+127*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_FULL_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_FULL_1 $offset] & 0xfe) >> 1]
  } else {
    set mask [expr [read_TX_MARGIN_FULL_1 $offset] & ~0xfe]
    set wdata [expr ($data << 1) | $mask]
    return [write_TX_MARGIN_FULL_1 $offset $wdata]
  }
}
proc read_TX_MARGIN_FULL_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+127*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_FULL_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+127*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_FULL_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_FULL_2 $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_TX_MARGIN_FULL_2 $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_MARGIN_FULL_2 $offset $wdata]
  }
}
proc read_TX_MARGIN_FULL_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+128*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_FULL_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+128*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_FULL_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_FULL_3 $offset] & 0xfe) >> 1]
  } else {
    set mask [expr [read_TX_MARGIN_FULL_3 $offset] & ~0xfe]
    set wdata [expr ($data << 1) | $mask]
    return [write_TX_MARGIN_FULL_3 $offset $wdata]
  }
}
proc read_TX_MARGIN_FULL_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+128*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_FULL_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+128*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_FULL_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_FULL_4 $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_TX_MARGIN_FULL_4 $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_MARGIN_FULL_4 $offset $wdata]
  }
}
proc read_TX_MARGIN_FULL_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+129*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_FULL_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+129*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_LOW_0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_LOW_0 $offset] & 0xfe) >> 1]
  } else {
    set mask [expr [read_TX_MARGIN_LOW_0 $offset] & ~0xfe]
    set wdata [expr ($data << 1) | $mask]
    return [write_TX_MARGIN_LOW_0 $offset $wdata]
  }
}
proc read_TX_MARGIN_LOW_0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+129*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_LOW_0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+129*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_LOW_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_LOW_1 $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_TX_MARGIN_LOW_1 $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_MARGIN_LOW_1 $offset $wdata]
  }
}
proc read_TX_MARGIN_LOW_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+130*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_LOW_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+130*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_LOW_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_LOW_2 $offset] & 0xfe) >> 1]
  } else {
    set mask [expr [read_TX_MARGIN_LOW_2 $offset] & ~0xfe]
    set wdata [expr ($data << 1) | $mask]
    return [write_TX_MARGIN_LOW_2 $offset $wdata]
  }
}
proc read_TX_MARGIN_LOW_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+130*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_LOW_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+130*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_LOW_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_LOW_3 $offset] & 0xfe00) >> 9]
  } else {
    set mask [expr [read_TX_MARGIN_LOW_3 $offset] & ~0xfe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_MARGIN_LOW_3 $offset $wdata]
  }
}
proc read_TX_MARGIN_LOW_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+131*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_LOW_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+131*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_MARGIN_LOW_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_MARGIN_LOW_4 $offset] & 0xfe) >> 1]
  } else {
    set mask [expr [read_TX_MARGIN_LOW_4 $offset] & ~0xfe]
    set wdata [expr ($data << 1) | $mask]
    return [write_TX_MARGIN_LOW_4 $offset $wdata]
  }
}
proc read_TX_MARGIN_LOW_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+131*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_MARGIN_LOW_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+131*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H3_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H3_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H3_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H3_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H3_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+132*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H3_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+132*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_INT_DATAWIDTH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_INT_DATAWIDTH $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_TX_INT_DATAWIDTH $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_TX_INT_DATAWIDTH $offset $wdata]
  }
}
proc read_TX_INT_DATAWIDTH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+133*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_INT_DATAWIDTH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+133*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPRBS_LINKACQ_CNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPRBS_LINKACQ_CNT $offset] & 0xff) >> 0]
  } else {
    set mask [expr [read_RXPRBS_LINKACQ_CNT $offset] & ~0xff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPRBS_LINKACQ_CNT $offset $wdata]
  }
}
proc read_RXPRBS_LINKACQ_CNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+137*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPRBS_LINKACQ_CNT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+137*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PMADATA_OPT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PMADATA_OPT $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_TX_PMADATA_OPT $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_TX_PMADATA_OPT $offset $wdata]
  }
}
proc read_TX_PMADATA_OPT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PMADATA_OPT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXSYNC_OVRD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXSYNC_OVRD $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_RXSYNC_OVRD $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_RXSYNC_OVRD $offset $wdata]
  }
}
proc read_RXSYNC_OVRD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXSYNC_OVRD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXSYNC_OVRD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXSYNC_OVRD $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_TXSYNC_OVRD $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_TXSYNC_OVRD $offset $wdata]
  }
}
proc read_TXSYNC_OVRD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXSYNC_OVRD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_IDLE_DATA_ZERO { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_IDLE_DATA_ZERO $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_TX_IDLE_DATA_ZERO $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_TX_IDLE_DATA_ZERO $offset $wdata]
  }
}
proc read_TX_IDLE_DATA_ZERO { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_IDLE_DATA_ZERO { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc A_RXOSCALRESET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_A_RXOSCALRESET $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_A_RXOSCALRESET $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_A_RXOSCALRESET $offset $wdata]
  }
}
proc read_A_RXOSCALRESET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_A_RXOSCALRESET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXOOB_CLK_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXOOB_CLK_CFG $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RXOOB_CLK_CFG $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RXOOB_CLK_CFG $offset $wdata]
  }
}
proc read_RXOOB_CLK_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXOOB_CLK_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXSYNC_SKIP_DA { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXSYNC_SKIP_DA $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_TXSYNC_SKIP_DA $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_TXSYNC_SKIP_DA $offset $wdata]
  }
}
proc read_TXSYNC_SKIP_DA { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXSYNC_SKIP_DA { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXSYNC_SKIP_DA { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXSYNC_SKIP_DA $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RXSYNC_SKIP_DA $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RXSYNC_SKIP_DA $offset $wdata]
  }
}
proc read_RXSYNC_SKIP_DA { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXSYNC_SKIP_DA { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXOSCALRESET_TIME { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXOSCALRESET_TIME $offset] & 0x1f) >> 0]
  } else {
    set mask [expr [read_RXOSCALRESET_TIME $offset] & ~0x1f]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXOSCALRESET_TIME $offset $wdata]
  }
}
proc read_RXOSCALRESET_TIME { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+138*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXOSCALRESET_TIME { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+138*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXSYNC_MULTILANE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXSYNC_MULTILANE $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_TXSYNC_MULTILANE $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_TXSYNC_MULTILANE $offset $wdata]
  }
}
proc read_TXSYNC_MULTILANE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+139*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXSYNC_MULTILANE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+139*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXSYNC_MULTILANE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXSYNC_MULTILANE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_RXSYNC_MULTILANE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_RXSYNC_MULTILANE $offset $wdata]
  }
}
proc read_RXSYNC_MULTILANE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+139*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXSYNC_MULTILANE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+139*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ACJTAG_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ACJTAG_MODE $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_ACJTAG_MODE $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_ACJTAG_MODE $offset $wdata]
  }
}
proc read_ACJTAG_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ACJTAG_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ACJTAG_DEBUG_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ACJTAG_DEBUG_MODE $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_ACJTAG_DEBUG_MODE $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_ACJTAG_DEBUG_MODE $offset $wdata]
  }
}
proc read_ACJTAG_DEBUG_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ACJTAG_DEBUG_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ACJTAG_RESET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ACJTAG_RESET $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_ACJTAG_RESET $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_ACJTAG_RESET $offset $wdata]
  }
}
proc read_ACJTAG_RESET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ACJTAG_RESET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_VCM_BIAS_TUNE_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_VCM_BIAS_TUNE_EN $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_RX_SUM_VCM_BIAS_TUNE_EN $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_RX_SUM_VCM_BIAS_TUNE_EN $offset $wdata]
  }
}
proc read_RX_SUM_VCM_BIAS_TUNE_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_VCM_BIAS_TUNE_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_TUNE_AFE_OS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_TUNE_AFE_OS $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RX_TUNE_AFE_OS $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_TUNE_AFE_OS $offset $wdata]
  }
}
proc read_RX_TUNE_AFE_OS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_TUNE_AFE_OS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFE_KL_LPM_KL_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFE_KL_LPM_KL_CFG0 $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RX_DFE_KL_LPM_KL_CFG0 $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RX_DFE_KL_LPM_KL_CFG0 $offset $wdata]
  }
}
proc read_RX_DFE_KL_LPM_KL_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFE_KL_LPM_KL_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFE_KL_LPM_KL_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFE_KL_LPM_KL_CFG1 $offset] & 0xe0) >> 5]
  } else {
    set mask [expr [read_RX_DFE_KL_LPM_KL_CFG1 $offset] & ~0xe0]
    set wdata [expr ($data << 5) | $mask]
    return [write_RX_DFE_KL_LPM_KL_CFG1 $offset $wdata]
  }
}
proc read_RX_DFE_KL_LPM_KL_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFE_KL_LPM_KL_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_DEGEN_AVTT_OVERITE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_DEGEN_AVTT_OVERITE $offset] & 0x10) >> 4]
  } else {
    set mask [expr [read_RX_SUM_DEGEN_AVTT_OVERITE $offset] & ~0x10]
    set wdata [expr ($data << 4) | $mask]
    return [write_RX_SUM_DEGEN_AVTT_OVERITE $offset $wdata]
  }
}
proc read_RX_SUM_DEGEN_AVTT_OVERITE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_DEGEN_AVTT_OVERITE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_PWR_SAVING { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_PWR_SAVING $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_RX_SUM_PWR_SAVING $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RX_SUM_PWR_SAVING $offset $wdata]
  }
}
proc read_RX_SUM_PWR_SAVING { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_PWR_SAVING { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_EN_SUM_RCAL_B { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_EN_SUM_RCAL_B $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_RX_EN_SUM_RCAL_B $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_EN_SUM_RCAL_B $offset $wdata]
  }
}
proc read_RX_EN_SUM_RCAL_B { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+140*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_EN_SUM_RCAL_B { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+140*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFELPM_KL_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFELPM_KL_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFELPM_KL_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFELPM_KL_CFG2 $offset $wdata]
  }
}
proc read_RXDFELPM_KL_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+141*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFELPM_KL_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+141*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXDLY_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXDLY_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXDLY_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXDLY_CFG $offset $wdata]
  }
}
proc read_TXDLY_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+142*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXDLY_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+142*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPH_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPH_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXPH_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPH_CFG $offset $wdata]
  }
}
proc read_TXPH_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+143*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPH_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+143*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPHDLY_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPHDLY_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXPHDLY_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPHDLY_CFG0 $offset $wdata]
  }
}
proc read_TXPHDLY_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+144*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPHDLY_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+144*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ADAPT_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ADAPT_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ADAPT_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ADAPT_CFG0 $offset $wdata]
  }
}
proc read_ADAPT_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+145*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ADAPT_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+145*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ADAPT_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ADAPT_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ADAPT_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ADAPT_CFG1 $offset $wdata]
  }
}
proc read_ADAPT_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+146*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ADAPT_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+146*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCFOK_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCFOK_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCFOK_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCFOK_CFG0 $offset $wdata]
  }
}
proc read_RXCFOK_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+147*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCFOK_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+147*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_CLK_PHASE_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_CLK_PHASE_SEL $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_ES_CLK_PHASE_SEL $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_ES_CLK_PHASE_SEL $offset $wdata]
  }
}
proc read_ES_CLK_PHASE_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+148*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_CLK_PHASE_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+148*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USE_PCS_CLK_PHASE_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USE_PCS_CLK_PHASE_SEL $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_USE_PCS_CLK_PHASE_SEL $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_USE_PCS_CLK_PHASE_SEL $offset $wdata]
  }
}
proc read_USE_PCS_CLK_PHASE_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+148*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USE_PCS_CLK_PHASE_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+148*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SAMPLE_CLK_PHASE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SAMPLE_CLK_PHASE $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_SAMPLE_CLK_PHASE $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_SAMPLE_CLK_PHASE $offset $wdata]
  }
}
proc read_SAMPLE_CLK_PHASE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+148*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SAMPLE_CLK_PHASE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+148*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PMA_RSV0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PMA_RSV0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_PMA_RSV0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_PMA_RSV0 $offset $wdata]
  }
}
proc read_TX_PMA_RSV0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+149*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PMA_RSV0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+149*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_AFE_CM_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_AFE_CM_EN $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_RX_AFE_CM_EN $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_RX_AFE_CM_EN $offset $wdata]
  }
}
proc read_RX_AFE_CM_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+151*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_AFE_CM_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+151*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CAPFF_SARC_ENB { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CAPFF_SARC_ENB $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_RX_CAPFF_SARC_ENB $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RX_CAPFF_SARC_ENB $offset $wdata]
  }
}
proc read_RX_CAPFF_SARC_ENB { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+151*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CAPFF_SARC_ENB { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+151*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_EYESCAN_VS_NEG_DIR { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_EYESCAN_VS_NEG_DIR $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RX_EYESCAN_VS_NEG_DIR $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_EYESCAN_VS_NEG_DIR $offset $wdata]
  }
}
proc read_RX_EYESCAN_VS_NEG_DIR { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+151*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_EYESCAN_VS_NEG_DIR { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+151*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_EYESCAN_VS_UT_SIGN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_EYESCAN_VS_UT_SIGN $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_RX_EYESCAN_VS_UT_SIGN $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_RX_EYESCAN_VS_UT_SIGN $offset $wdata]
  }
}
proc read_RX_EYESCAN_VS_UT_SIGN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+151*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_EYESCAN_VS_UT_SIGN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+151*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_EYESCAN_VS_CODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_EYESCAN_VS_CODE $offset] & 0x1fc) >> 2]
  } else {
    set mask [expr [read_RX_EYESCAN_VS_CODE $offset] & ~0x1fc]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_EYESCAN_VS_CODE $offset $wdata]
  }
}
proc read_RX_EYESCAN_VS_CODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+151*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_EYESCAN_VS_CODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+151*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_EYESCAN_VS_RANGE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_EYESCAN_VS_RANGE $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RX_EYESCAN_VS_RANGE $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_EYESCAN_VS_RANGE $offset $wdata]
  }
}
proc read_RX_EYESCAN_VS_RANGE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+151*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_EYESCAN_VS_RANGE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+151*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H5_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H5_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H5_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H5_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H5_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+152*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H5_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+152*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc GEARBOX_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_GEARBOX_MODE $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_GEARBOX_MODE $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_GEARBOX_MODE $offset $wdata]
  }
}
proc read_GEARBOX_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+153*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_GEARBOX_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+153*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_SYNFREQ_PPM { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_SYNFREQ_PPM $offset] & 0x700) >> 8]
  } else {
    set mask [expr [read_TXPI_SYNFREQ_PPM $offset] & ~0x700]
    set wdata [expr ($data << 8) | $mask]
    return [write_TXPI_SYNFREQ_PPM $offset $wdata]
  }
}
proc read_TXPI_SYNFREQ_PPM { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+153*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_SYNFREQ_PPM { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+153*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_INVSTROBE_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_INVSTROBE_SEL $offset] & 0x40) >> 6]
  } else {
    set mask [expr [read_TXPI_INVSTROBE_SEL $offset] & ~0x40]
    set wdata [expr ($data << 6) | $mask]
    return [write_TXPI_INVSTROBE_SEL $offset $wdata]
  }
}
proc read_TXPI_INVSTROBE_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+153*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_INVSTROBE_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+153*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_GRAY_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_GRAY_SEL $offset] & 0x20) >> 5]
  } else {
    set mask [expr [read_TXPI_GRAY_SEL $offset] & ~0x20]
    set wdata [expr ($data << 5) | $mask]
    return [write_TXPI_GRAY_SEL $offset $wdata]
  }
}
proc read_TXPI_GRAY_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+153*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_GRAY_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+153*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_PPM_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_PPM_CFG $offset] & 0xff) >> 0]
  } else {
    set mask [expr [read_TXPI_PPM_CFG $offset] & ~0xff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPI_PPM_CFG $offset $wdata]
  }
}
proc read_TXPI_PPM_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+154*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_PPM_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+154*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFELPM_KLKH_AGC_STUP_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFELPM_KLKH_AGC_STUP_EN $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_RX_DFELPM_KLKH_AGC_STUP_EN $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_RX_DFELPM_KLKH_AGC_STUP_EN $offset $wdata]
  }
}
proc read_RX_DFELPM_KLKH_AGC_STUP_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+155*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFELPM_KLKH_AGC_STUP_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+155*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFELPM_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFELPM_CFG0 $offset] & 0x7800) >> 11]
  } else {
    set mask [expr [read_RX_DFELPM_CFG0 $offset] & ~0x7800]
    set wdata [expr ($data << 11) | $mask]
    return [write_RX_DFELPM_CFG0 $offset $wdata]
  }
}
proc read_RX_DFELPM_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+155*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFELPM_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+155*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFELPM_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFELPM_CFG1 $offset] & 0x400) >> 10]
  } else {
    set mask [expr [read_RX_DFELPM_CFG1 $offset] & ~0x400]
    set wdata [expr ($data << 10) | $mask]
    return [write_RX_DFELPM_CFG1 $offset $wdata]
  }
}
proc read_RX_DFELPM_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+155*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFELPM_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+155*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFE_KL_LPM_KH_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFE_KL_LPM_KH_CFG0 $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RX_DFE_KL_LPM_KH_CFG0 $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RX_DFE_KL_LPM_KH_CFG0 $offset $wdata]
  }
}
proc read_RX_DFE_KL_LPM_KH_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+155*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFE_KL_LPM_KH_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+155*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DFE_KL_LPM_KH_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DFE_KL_LPM_KH_CFG1 $offset] & 0xe0) >> 5]
  } else {
    set mask [expr [read_RX_DFE_KL_LPM_KH_CFG1 $offset] & ~0xe0]
    set wdata [expr ($data << 5) | $mask]
    return [write_RX_DFE_KL_LPM_KH_CFG1 $offset $wdata]
  }
}
proc read_RX_DFE_KL_LPM_KH_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+155*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DFE_KL_LPM_KH_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+155*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXFE_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXFE_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXFE_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXFE_CFG0 $offset $wdata]
  }
}
proc read_TXFE_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+157*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXFE_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+157*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_UT_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_UT_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_UT_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_UT_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_UT_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+158*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_UT_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+158*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CPLL_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CPLL_CFG0 $offset $wdata]
  }
}
proc read_CPLL_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+159*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+159*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CPLL_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CPLL_CFG1 $offset $wdata]
  }
}
proc read_CPLL_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+160*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+160*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXFE_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXFE_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXFE_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXFE_CFG1 $offset $wdata]
  }
}
proc read_TXFE_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+161*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXFE_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+161*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG0_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG0_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG0_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG0_GEN3 $offset $wdata]
  }
}
proc read_RXCDR_CFG0_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+162*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG0_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+162*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG1_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG1_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG1_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG1_GEN3 $offset $wdata]
  }
}
proc read_RXCDR_CFG1_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+163*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG1_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+163*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG2_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG2_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG2_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG2_GEN3 $offset $wdata]
  }
}
proc read_RXCDR_CFG2_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+164*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG2_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+164*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG3_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG3_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG3_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG3_GEN3 $offset $wdata]
  }
}
proc read_RXCDR_CFG3_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+165*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG3_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+165*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG4_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG4_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG4_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG4_GEN3 $offset $wdata]
  }
}
proc read_RXCDR_CFG4_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+166*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG4_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+166*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXPI_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPI_CFG0 $offset $wdata]
  }
}
proc read_TXPI_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+167*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+167*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXPI_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPI_CFG1 $offset $wdata]
  }
}
proc read_TXPI_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+168*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+168*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_RXPMA_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_RXPMA_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PCIE_RXPMA_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE_RXPMA_CFG $offset $wdata]
  }
}
proc read_PCIE_RXPMA_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+169*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_RXPMA_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+169*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_TXPCS_CFG_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_TXPCS_CFG_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PCIE_TXPCS_CFG_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE_TXPCS_CFG_GEN3 $offset $wdata]
  }
}
proc read_PCIE_TXPCS_CFG_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+170*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_TXPCS_CFG_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+170*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_TXPMA_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_TXPMA_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PCIE_TXPMA_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE_TXPMA_CFG $offset $wdata]
  }
}
proc read_PCIE_TXPMA_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+171*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_TXPMA_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+171*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CLK_SLIP_OVRD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CLK_SLIP_OVRD $offset] & 0xf8) >> 3]
  } else {
    set mask [expr [read_RX_CLK_SLIP_OVRD $offset] & ~0xf8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RX_CLK_SLIP_OVRD $offset $wdata]
  }
}
proc read_RX_CLK_SLIP_OVRD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+172*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CLK_SLIP_OVRD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+172*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPI_PPM { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPI_PPM $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_TXPI_PPM $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPI_PPM $offset $wdata]
  }
}
proc read_TXPI_PPM { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+172*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPI_PPM { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+172*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_PLL_SEL_MODE_GEN4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_PLL_SEL_MODE_GEN4 $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_PCIE_PLL_SEL_MODE_GEN4 $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_PCIE_PLL_SEL_MODE_GEN4 $offset $wdata]
  }
}
proc read_PCIE_PLL_SEL_MODE_GEN4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+173*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_PLL_SEL_MODE_GEN4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+173*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_PLL_SEL_MODE_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_PLL_SEL_MODE_GEN3 $offset] & 0x800) >> 11]
  } else {
    set mask [expr [read_PCIE_PLL_SEL_MODE_GEN3 $offset] & ~0x800]
    set wdata [expr ($data << 11) | $mask]
    return [write_PCIE_PLL_SEL_MODE_GEN3 $offset $wdata]
  }
}
proc read_PCIE_PLL_SEL_MODE_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+173*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_PLL_SEL_MODE_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+173*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_PLL_SEL_MODE_GEN12 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_PLL_SEL_MODE_GEN12 $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_PCIE_PLL_SEL_MODE_GEN12 $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_PCIE_PLL_SEL_MODE_GEN12 $offset $wdata]
  }
}
proc read_PCIE_PLL_SEL_MODE_GEN12 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+173*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_PLL_SEL_MODE_GEN12 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+173*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RATE_SW_USE_DRP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RATE_SW_USE_DRP $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RATE_SW_USE_DRP $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RATE_SW_USE_DRP $offset $wdata]
  }
}
proc read_RATE_SW_USE_DRP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+173*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RATE_SW_USE_DRP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+173*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HD_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HD_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HD_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HD_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_HD_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+174*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HD_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+174*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG5_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG5_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG5_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG5_GEN3 $offset $wdata]
  }
}
proc read_RXCDR_CFG5_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+175*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG5_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+175*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_KH_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_KH_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_KH_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_KH_CFG3 $offset $wdata]
  }
}
proc read_RXDFE_KH_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+176*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_KH_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+176*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_KH_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_KH_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_KH_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_KH_CFG2 $offset $wdata]
  }
}
proc read_RXDFE_KH_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+177*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_KH_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+177*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_KH_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_KH_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_KH_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_KH_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_KH_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+178*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_KH_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+178*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H5_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H5_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H5_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H5_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H5_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+179*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H5_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+179*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG5 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG5 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG5 $offset $wdata]
  }
}
proc read_RXCDR_CFG5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+180*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG5 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+180*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HE_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HE_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HE_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HE_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_HE_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+181*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HE_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+181*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CPLL_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CPLL_CFG3 $offset $wdata]
  }
}
proc read_CPLL_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+182*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+182*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H6_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H6_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H6_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H6_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H6_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+183*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H6_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+183*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H6_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H6_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H6_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H6_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H6_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+184*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H6_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+184*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H7_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H7_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H7_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H7_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H7_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+185*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H7_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+185*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DDI_REALIGN_WAIT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DDI_REALIGN_WAIT $offset] & 0x7c) >> 2]
  } else {
    set mask [expr [read_DDI_REALIGN_WAIT $offset] & ~0x7c]
    set wdata [expr ($data << 2) | $mask]
    return [write_DDI_REALIGN_WAIT $offset $wdata]
  }
}
proc read_DDI_REALIGN_WAIT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+186*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DDI_REALIGN_WAIT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+186*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DDI_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DDI_CTRL $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_DDI_CTRL $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_DDI_CTRL $offset $wdata]
  }
}
proc read_DDI_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+186*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DDI_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+186*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXGBOX_FIFO_INIT_RD_ADDR { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXGBOX_FIFO_INIT_RD_ADDR $offset] & 0xe00) >> 9]
  } else {
    set mask [expr [read_TXGBOX_FIFO_INIT_RD_ADDR $offset] & ~0xe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TXGBOX_FIFO_INIT_RD_ADDR $offset $wdata]
  }
}
proc read_TXGBOX_FIFO_INIT_RD_ADDR { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+187*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXGBOX_FIFO_INIT_RD_ADDR { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+187*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_SAMPLE_PERIOD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_SAMPLE_PERIOD $offset] & 0x1c0) >> 6]
  } else {
    set mask [expr [read_TX_SAMPLE_PERIOD $offset] & ~0x1c0]
    set wdata [expr ($data << 6) | $mask]
    return [write_TX_SAMPLE_PERIOD $offset $wdata]
  }
}
proc read_TX_SAMPLE_PERIOD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+187*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_SAMPLE_PERIOD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+187*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXGBOX_FIFO_INIT_RD_ADDR { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXGBOX_FIFO_INIT_RD_ADDR $offset] & 0x38) >> 3]
  } else {
    set mask [expr [read_RXGBOX_FIFO_INIT_RD_ADDR $offset] & ~0x38]
    set wdata [expr ($data << 3) | $mask]
    return [write_RXGBOX_FIFO_INIT_RD_ADDR $offset $wdata]
  }
}
proc read_RXGBOX_FIFO_INIT_RD_ADDR { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+187*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXGBOX_FIFO_INIT_RD_ADDR { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+187*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SAMPLE_PERIOD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SAMPLE_PERIOD $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_RX_SAMPLE_PERIOD $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_SAMPLE_PERIOD $offset $wdata]
  }
}
proc read_RX_SAMPLE_PERIOD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+187*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SAMPLE_PERIOD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+187*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CPLL_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CPLL_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CPLL_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CPLL_CFG2 $offset $wdata]
  }
}
proc read_CPLL_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+188*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CPLL_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+188*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPHSAMP_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPHSAMP_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXPHSAMP_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPHSAMP_CFG $offset $wdata]
  }
}
proc read_RXPHSAMP_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+189*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPHSAMP_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+189*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPHSLIP_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPHSLIP_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXPHSLIP_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPHSLIP_CFG $offset $wdata]
  }
}
proc read_RXPHSLIP_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+190*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPHSLIP_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+190*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPHBEACON_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPHBEACON_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXPHBEACON_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPHBEACON_CFG $offset $wdata]
  }
}
proc read_RXPHBEACON_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+191*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPHBEACON_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+191*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H7_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H7_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H7_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H7_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H7_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+192*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H7_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+192*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H8_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H8_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H8_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H8_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H8_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+193*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H8_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+193*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H8_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H8_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H8_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H8_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H8_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+194*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H8_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+194*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_BUFG_DIV_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_BUFG_DIV_CTRL $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PCIE_BUFG_DIV_CTRL $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE_BUFG_DIV_CTRL $offset $wdata]
  }
}
proc read_PCIE_BUFG_DIV_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+195*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_BUFG_DIV_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+195*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE_RXPCS_CFG_GEN3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE_RXPCS_CFG_GEN3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PCIE_RXPCS_CFG_GEN3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE_RXPCS_CFG_GEN3 $offset $wdata]
  }
}
proc read_PCIE_RXPCS_CFG_GEN3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+196*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE_RXPCS_CFG_GEN3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+196*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H9_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H9_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H9_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H9_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H9_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+197*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H9_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+197*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_PROGDIV_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_PROGDIV_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RX_PROGDIV_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_PROGDIV_CFG $offset $wdata]
  }
}
proc read_RX_PROGDIV_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+198*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_PROGDIV_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+198*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H9_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H9_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H9_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H9_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H9_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+199*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H9_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+199*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HA_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HA_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HA_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HA_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_HA_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+200*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HA_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+200*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CHAN_BOND_SEQ_1_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CHAN_BOND_SEQ_1_2 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_CHAN_BOND_SEQ_1_2 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CHAN_BOND_SEQ_1_2 $offset $wdata]
  }
}
proc read_CHAN_BOND_SEQ_1_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+202*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CHAN_BOND_SEQ_1_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+202*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_GC_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_GC_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_GC_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_GC_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_GC_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+203*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_GC_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+203*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_GC_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_GC_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_GC_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_GC_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_GC_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+204*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_GC_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+204*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DDI_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DDI_SEL $offset] & 0xfc) >> 2]
  } else {
    set mask [expr [read_RX_DDI_SEL $offset] & ~0xfc]
    set wdata [expr ($data << 2) | $mask]
    return [write_RX_DDI_SEL $offset $wdata]
  }
}
proc read_RX_DDI_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+205*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DDI_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+205*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DEC_VALID_COMMA_ONLY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DEC_VALID_COMMA_ONLY $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_DEC_VALID_COMMA_ONLY $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_DEC_VALID_COMMA_ONLY $offset $wdata]
  }
}
proc read_DEC_VALID_COMMA_ONLY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+205*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DEC_VALID_COMMA_ONLY { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+205*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DEC_MCOMMA_DETECT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DEC_MCOMMA_DETECT $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_DEC_MCOMMA_DETECT $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_DEC_MCOMMA_DETECT $offset $wdata]
  }
}
proc read_DEC_MCOMMA_DETECT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+205*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DEC_MCOMMA_DETECT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+205*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+206*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+206*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+207*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+207*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_RESLOAD_OVRD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_RESLOAD_OVRD $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_RX_RESLOAD_OVRD $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_RX_RESLOAD_OVRD $offset $wdata]
  }
}
proc read_RX_RESLOAD_OVRD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+208*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_RESLOAD_OVRD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+208*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CTLE_PWR_SAVING { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CTLE_PWR_SAVING $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_RX_CTLE_PWR_SAVING $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_RX_CTLE_PWR_SAVING $offset $wdata]
  }
}
proc read_RX_CTLE_PWR_SAVING { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+208*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CTLE_PWR_SAVING { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+208*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_DEGEN_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_DEGEN_CTRL $offset] & 0x70) >> 4]
  } else {
    set mask [expr [read_RX_DEGEN_CTRL $offset] & ~0x70]
    set wdata [expr ($data << 4) | $mask]
    return [write_RX_DEGEN_CTRL $offset $wdata]
  }
}
proc read_RX_DEGEN_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+208*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_DEGEN_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+208*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_RESLOAD_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_RESLOAD_CTRL $offset] & 0xf) >> 0]
  } else {
    set mask [expr [read_RX_RESLOAD_CTRL $offset] & ~0xf]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_RESLOAD_CTRL $offset $wdata]
  }
}
proc read_RX_RESLOAD_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+208*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_RESLOAD_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+208*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_EN_CTLE_RCAL_B { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_EN_CTLE_RCAL_B $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_RX_EN_CTLE_RCAL_B $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_RX_EN_CTLE_RCAL_B $offset $wdata]
  }
}
proc read_RX_EN_CTLE_RCAL_B { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+209*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_EN_CTLE_RCAL_B { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+209*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_CTLE_RES_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_CTLE_RES_CTRL $offset] & 0xf00) >> 8]
  } else {
    set mask [expr [read_RX_CTLE_RES_CTRL $offset] & ~0xf00]
    set wdata [expr ($data << 8) | $mask]
    return [write_RX_CTLE_RES_CTRL $offset $wdata]
  }
}
proc read_RX_CTLE_RES_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+209*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_CTLE_RES_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+209*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_SUM_RES_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_SUM_RES_CTRL $offset] & 0xf) >> 0]
  } else {
    set mask [expr [read_RX_SUM_RES_CTRL $offset] & ~0xf]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_SUM_RES_CTRL $offset $wdata]
  }
}
proc read_RX_SUM_RES_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+209*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_SUM_RES_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+209*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXPI_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXPI_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXPI_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXPI_CFG1 $offset $wdata]
  }
}
proc read_RXPI_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+210*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXPI_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+210*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_EN_RCAL_B { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_EN_RCAL_B $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_LPBK_EN_RCAL_B $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_LPBK_EN_RCAL_B $offset $wdata]
  }
}
proc read_LPBK_EN_RCAL_B { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+211*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_EN_RCAL_B { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+211*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_IND_CTRL2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_IND_CTRL2 $offset] & 0xe0) >> 5]
  } else {
    set mask [expr [read_LPBK_IND_CTRL2 $offset] & ~0xe0]
    set wdata [expr ($data << 5) | $mask]
    return [write_LPBK_IND_CTRL2 $offset $wdata]
  }
}
proc read_LPBK_IND_CTRL2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+211*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_IND_CTRL2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+211*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_BIAS_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_BIAS_CTRL $offset] & 0x1c) >> 2]
  } else {
    set mask [expr [read_LPBK_BIAS_CTRL $offset] & ~0x1c]
    set wdata [expr ($data << 2) | $mask]
    return [write_LPBK_BIAS_CTRL $offset $wdata]
  }
}
proc read_LPBK_BIAS_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+211*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_BIAS_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+211*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_XMODE_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_XMODE_SEL $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_RX_XMODE_SEL $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_RX_XMODE_SEL $offset $wdata]
  }
}
proc read_RX_XMODE_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+211*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_XMODE_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+211*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ISCAN_CK_PH_SEL2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ISCAN_CK_PH_SEL2 $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_ISCAN_CK_PH_SEL2 $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_ISCAN_CK_PH_SEL2 $offset $wdata]
  }
}
proc read_ISCAN_CK_PH_SEL2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+211*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ISCAN_CK_PH_SEL2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+211*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_IND_CTRL1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_IND_CTRL1 $offset] & 0x3800) >> 11]
  } else {
    set mask [expr [read_LPBK_IND_CTRL1 $offset] & ~0x3800]
    set wdata [expr ($data << 11) | $mask]
    return [write_LPBK_IND_CTRL1 $offset $wdata]
  }
}
proc read_LPBK_IND_CTRL1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+212*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_IND_CTRL1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+212*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_RG_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_RG_CTRL $offset] & 0x780) >> 7]
  } else {
    set mask [expr [read_LPBK_RG_CTRL $offset] & ~0x780]
    set wdata [expr ($data << 7) | $mask]
    return [write_LPBK_RG_CTRL $offset $wdata]
  }
}
proc read_LPBK_RG_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+212*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_RG_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+212*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_IND_CTRL0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_IND_CTRL0 $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_LPBK_IND_CTRL0 $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_LPBK_IND_CTRL0 $offset $wdata]
  }
}
proc read_LPBK_IND_CTRL0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+212*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_IND_CTRL0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+212*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL1_CFG_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL1_CFG_3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL1_CFG_3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL1_CFG_3 $offset $wdata]
  }
}
proc read_CKCAL1_CFG_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+213*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL1_CFG_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+213*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL1_DCC_PWRDN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL1_DCC_PWRDN $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_CKCAL1_DCC_PWRDN $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_CKCAL1_DCC_PWRDN $offset $wdata]
  }
}
proc read_CKCAL1_DCC_PWRDN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+213*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL1_DCC_PWRDN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+213*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL1_IQ_PWRDN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL1_IQ_PWRDN $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_CKCAL1_IQ_PWRDN $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL1_IQ_PWRDN $offset $wdata]
  }
}
proc read_CKCAL1_IQ_PWRDN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+213*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL1_IQ_PWRDN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+213*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL2_CFG_3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL2_CFG_3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL2_CFG_3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL2_CFG_3 $offset $wdata]
  }
}
proc read_CKCAL2_CFG_3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+214*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL2_CFG_3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+214*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL2_CFG_4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL2_CFG_4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL2_CFG_4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL2_CFG_4 $offset $wdata]
  }
}
proc read_CKCAL2_CFG_4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+215*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL2_CFG_4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+215*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_PMA_RSV0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_PMA_RSV0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RX_PMA_RSV0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_PMA_RSV0 $offset $wdata]
  }
}
proc read_RX_PMA_RSV0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+216*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_PMA_RSV0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+216*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL2_CFG_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL2_CFG_2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL2_CFG_2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL2_CFG_2 $offset $wdata]
  }
}
proc read_CKCAL2_CFG_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+217*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL2_CFG_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+217*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_LOCK_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_LOCK_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_LOCK_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_LOCK_CFG2 $offset $wdata]
  }
}
proc read_RXCDR_LOCK_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+218*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_LOCK_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+218*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL1_CFG_2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL1_CFG_2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL1_CFG_2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL1_CFG_2 $offset $wdata]
  }
}
proc read_CKCAL1_CFG_2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+219*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL1_CFG_2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+219*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RTX_BUF_TERM_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RTX_BUF_TERM_CTRL $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_RTX_BUF_TERM_CTRL $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_RTX_BUF_TERM_CTRL $offset $wdata]
  }
}
proc read_RTX_BUF_TERM_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+221*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RTX_BUF_TERM_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+221*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RTX_BUF_CML_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RTX_BUF_CML_CTRL $offset] & 0x7) >> 0]
  } else {
    set mask [expr [read_RTX_BUF_CML_CTRL $offset] & ~0x7]
    set wdata [expr ($data << 0) | $mask]
    return [write_RTX_BUF_CML_CTRL $offset $wdata]
  }
}
proc read_RTX_BUF_CML_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+221*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RTX_BUF_CML_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+221*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXPH_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXPH_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TXPH_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TXPH_CFG2 $offset $wdata]
  }
}
proc read_TXPH_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+222*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXPH_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+222*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_LOCK_CFG4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_LOCK_CFG4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_LOCK_CFG4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_LOCK_CFG4 $offset $wdata]
  }
}
proc read_RXCDR_LOCK_CFG4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+223*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_LOCK_CFG4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+223*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CTLE3_OCAP_EXT_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CTLE3_OCAP_EXT_CTRL $offset] & 0x1c0) >> 6]
  } else {
    set mask [expr [read_CTLE3_OCAP_EXT_CTRL $offset] & ~0x1c0]
    set wdata [expr ($data << 6) | $mask]
    return [write_CTLE3_OCAP_EXT_CTRL $offset $wdata]
  }
}
proc read_CTLE3_OCAP_EXT_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+224*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CTLE3_OCAP_EXT_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+224*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CTLE3_OCAP_EXT_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CTLE3_OCAP_EXT_EN $offset] & 0x20) >> 5]
  } else {
    set mask [expr [read_CTLE3_OCAP_EXT_EN $offset] & ~0x20]
    set wdata [expr ($data << 5) | $mask]
    return [write_CTLE3_OCAP_EXT_EN $offset $wdata]
  }
}
proc read_CTLE3_OCAP_EXT_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+224*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CTLE3_OCAP_EXT_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+224*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_VREG_VREFSEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_VREG_VREFSEL $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_TX_VREG_VREFSEL $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_TX_VREG_VREFSEL $offset $wdata]
  }
}
proc read_TX_VREG_VREFSEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+226*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_VREG_VREFSEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+226*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_VREG_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_VREG_CTRL $offset] & 0xe00) >> 9]
  } else {
    set mask [expr [read_TX_VREG_CTRL $offset] & ~0xe00]
    set wdata [expr ($data << 9) | $mask]
    return [write_TX_VREG_CTRL $offset $wdata]
  }
}
proc read_TX_VREG_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+226*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_VREG_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+226*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_VREG_PDB { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_VREG_PDB $offset] & 0x100) >> 8]
  } else {
    set mask [expr [read_TX_VREG_PDB $offset] & ~0x100]
    set wdata [expr ($data << 8) | $mask]
    return [write_TX_VREG_PDB $offset $wdata]
  }
}
proc read_TX_VREG_PDB { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+226*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_VREG_PDB { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+226*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER5 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER5 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER5 $offset $wdata]
  }
}
proc read_ES_QUALIFIER5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+231*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER5 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+231*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER6 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER6 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER6 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER6 $offset $wdata]
  }
}
proc read_ES_QUALIFIER6 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+232*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER6 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+232*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER7 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER7 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER7 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER7 $offset $wdata]
  }
}
proc read_ES_QUALIFIER7 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+233*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER7 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+233*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER8 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER8 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER8 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER8 $offset $wdata]
  }
}
proc read_ES_QUALIFIER8 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+234*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER8 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+234*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUALIFIER9 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUALIFIER9 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUALIFIER9 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUALIFIER9 $offset $wdata]
  }
}
proc read_ES_QUALIFIER9 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+235*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUALIFIER9 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+235*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK5 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK5 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK5 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+236*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK5 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+236*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK6 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK6 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK6 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK6 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK6 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+237*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK6 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+237*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK7 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK7 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK7 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK7 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK7 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+238*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK7 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+238*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK8 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK8 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK8 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK8 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK8 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+239*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK8 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+239*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_QUAL_MASK9 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_QUAL_MASK9 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_QUAL_MASK9 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_QUAL_MASK9 $offset $wdata]
  }
}
proc read_ES_QUAL_MASK9 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+240*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_QUAL_MASK9 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+240*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK5 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK5 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK5 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+241*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK5 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+241*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK6 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK6 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK6 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK6 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK6 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+242*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK6 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+242*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK7 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK7 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK7 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK7 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK7 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+243*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK7 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+243*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK8 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK8 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK8 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK8 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK8 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+244*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK8 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+244*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc ES_SDATA_MASK9 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_ES_SDATA_MASK9 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_ES_SDATA_MASK9 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_ES_SDATA_MASK9 $offset $wdata]
  }
}
proc read_ES_SDATA_MASK9 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+245*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_ES_SDATA_MASK9 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+245*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PMA_RSV1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PMA_RSV1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_PMA_RSV1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_PMA_RSV1 $offset $wdata]
  }
}
proc read_TX_PMA_RSV1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+246*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PMA_RSV1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+246*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL1_CFG_0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL1_CFG_0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL1_CFG_0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL1_CFG_0 $offset $wdata]
  }
}
proc read_CKCAL1_CFG_0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+247*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL1_CFG_0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+247*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL1_CFG_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL1_CFG_1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL1_CFG_1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL1_CFG_1 $offset $wdata]
  }
}
proc read_CKCAL1_CFG_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+248*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL1_CFG_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+248*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL2_CFG_0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL2_CFG_0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL2_CFG_0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL2_CFG_0 $offset $wdata]
  }
}
proc read_CKCAL2_CFG_0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+249*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL2_CFG_0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+249*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXSWBST_MAG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXSWBST_MAG $offset] & 0xe000) >> 13]
  } else {
    set mask [expr [read_TXSWBST_MAG $offset] & ~0xe000]
    set wdata [expr ($data << 13) | $mask]
    return [write_TXSWBST_MAG $offset $wdata]
  }
}
proc read_TXSWBST_MAG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+250*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXSWBST_MAG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+250*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXDRV_FREQBAND { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXDRV_FREQBAND $offset] & 0x200) >> 9]
  } else {
    set mask [expr [read_TXDRV_FREQBAND $offset] & ~0x200]
    set wdata [expr ($data << 9) | $mask]
    return [write_TXDRV_FREQBAND $offset $wdata]
  }
}
proc read_TXDRV_FREQBAND { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+250*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXDRV_FREQBAND { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+250*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXSWBST_BST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXSWBST_BST $offset] & 0x80) >> 7]
  } else {
    set mask [expr [read_TXSWBST_BST $offset] & ~0x80]
    set wdata [expr ($data << 7) | $mask]
    return [write_TXSWBST_BST $offset $wdata]
  }
}
proc read_TXSWBST_BST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+250*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXSWBST_BST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+250*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXSWBST_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXSWBST_EN $offset] & 0x40) >> 6]
  } else {
    set mask [expr [read_TXSWBST_EN $offset] & ~0x40]
    set wdata [expr ($data << 6) | $mask]
    return [write_TXSWBST_EN $offset $wdata]
  }
}
proc read_TXSWBST_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+250*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXSWBST_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+250*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_VREG_CTRL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_VREG_CTRL $offset] & 0xe) >> 1]
  } else {
    set mask [expr [read_RX_VREG_CTRL $offset] & ~0xe]
    set wdata [expr ($data << 1) | $mask]
    return [write_RX_VREG_CTRL $offset $wdata]
  }
}
proc read_RX_VREG_CTRL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+250*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_VREG_CTRL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+250*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_VREG_PDB { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_VREG_PDB $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RX_VREG_PDB $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_VREG_PDB $offset $wdata]
  }
}
proc read_RX_VREG_PDB { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+250*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_VREG_PDB { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+250*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc LPBK_EXT_RCAL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_LPBK_EXT_RCAL $offset] & 0x3c0) >> 6]
  } else {
    set mask [expr [read_LPBK_EXT_RCAL $offset] & ~0x3c0]
    set wdata [expr ($data << 6) | $mask]
    return [write_LPBK_EXT_RCAL $offset $wdata]
  }
}
proc read_LPBK_EXT_RCAL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+251*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_LPBK_EXT_RCAL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+251*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PREIQ_FREQ_BST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PREIQ_FREQ_BST $offset] & 0x10) >> 4]
  } else {
    set mask [expr [read_PREIQ_FREQ_BST $offset] & ~0x10]
    set wdata [expr ($data << 4) | $mask]
    return [write_PREIQ_FREQ_BST $offset $wdata]
  }
}
proc read_PREIQ_FREQ_BST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+251*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PREIQ_FREQ_BST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+251*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PI_BIASSET { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PI_BIASSET $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_TX_PI_BIASSET $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_TX_PI_BIASSET $offset $wdata]
  }
}
proc read_TX_PI_BIASSET { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+251*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PI_BIASSET { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+251*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PHICAL_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PHICAL_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_PHICAL_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_PHICAL_CFG0 $offset $wdata]
  }
}
proc read_TX_PHICAL_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+252*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PHICAL_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+252*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PHICAL_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PHICAL_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_PHICAL_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_PHICAL_CFG1 $offset $wdata]
  }
}
proc read_TX_PHICAL_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+253*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PHICAL_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+253*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_LOCK_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_LOCK_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_LOCK_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_LOCK_CFG3 $offset $wdata]
  }
}
proc read_RXCDR_LOCK_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+254*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_LOCK_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+254*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_UT_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_UT_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_UT_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_UT_CFG2 $offset $wdata]
  }
}
proc read_RXDFE_UT_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+256*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_UT_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+256*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CKCAL2_CFG_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CKCAL2_CFG_1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CKCAL2_CFG_1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CKCAL2_CFG_1 $offset $wdata]
  }
}
proc read_CKCAL2_CFG_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+257*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CKCAL2_CFG_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+257*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc Y_ALL_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_Y_ALL_MODE $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_Y_ALL_MODE $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_Y_ALL_MODE $offset $wdata]
  }
}
proc read_Y_ALL_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+258*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_Y_ALL_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+258*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RCLK_SIPO_DLY_ENB { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RCLK_SIPO_DLY_ENB $offset] & 0x2) >> 1]
  } else {
    set mask [expr [read_RCLK_SIPO_DLY_ENB $offset] & ~0x2]
    set wdata [expr ($data << 1) | $mask]
    return [write_RCLK_SIPO_DLY_ENB $offset $wdata]
  }
}
proc read_RCLK_SIPO_DLY_ENB { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+258*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RCLK_SIPO_DLY_ENB { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+258*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RCLK_SIPO_INV_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RCLK_SIPO_INV_EN $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RCLK_SIPO_INV_EN $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RCLK_SIPO_INV_EN $offset $wdata]
  }
}
proc read_RCLK_SIPO_INV_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+258*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RCLK_SIPO_INV_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+258*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RX_PROGDIV_RATE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_PROGDIV_RATE $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RX_PROGDIV_RATE $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RX_PROGDIV_RATE $offset $wdata]
  }
}
proc read_RX_PROGDIV_RATE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+259*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RX_PROGDIV_RATE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+259*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HF_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HF_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HF_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HF_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_HF_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+260*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HF_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+260*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_PROGDIV_RATE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_PROGDIV_RATE $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_PROGDIV_RATE $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_PROGDIV_RATE $offset $wdata]
  }
}
proc read_TX_PROGDIV_RATE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+261*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_PROGDIV_RATE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+261*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DCC_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DCC_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_TX_DCC_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_DCC_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_TX_DCC_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+262*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DCC_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+262*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HC_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HC_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HC_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HC_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_HC_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+263*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HC_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+263*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL1_I_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL1_I_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL1_I_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL1_I_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL1_I_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+264*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL1_I_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+264*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL1_Q_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL1_Q_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL1_Q_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL1_Q_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL1_Q_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+265*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL1_Q_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+265*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL1_IQ_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL1_IQ_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL1_IQ_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL1_IQ_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL1_IQ_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+266*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL1_IQ_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+266*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL2_D_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL2_D_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL2_D_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL2_D_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL2_D_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+267*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL2_D_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+267*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL2_X_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL2_X_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL2_X_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL2_X_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL2_X_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+268*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL2_X_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+268*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL2_S_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL2_S_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL2_S_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL2_S_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL2_S_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+269*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL2_S_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+269*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCKCAL2_DX_LOOP_RST_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCKCAL2_DX_LOOP_RST_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCKCAL2_DX_LOOP_RST_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCKCAL2_DX_LOOP_RST_CFG $offset $wdata]
  }
}
proc read_RXCKCAL2_DX_LOOP_RST_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+270*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCKCAL2_DX_LOOP_RST_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+270*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_KH_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_KH_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_KH_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_KH_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_KH_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+272*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_KH_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+272*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H4_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H4_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H4_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H4_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H4_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+273*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H4_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+273*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H4_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H4_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H4_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H4_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_H4_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+274*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H4_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+274*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_H3_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_H3_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_H3_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_H3_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_H3_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+275*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_H3_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+275*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc CH_HSPMUX { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_CH_HSPMUX $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_CH_HSPMUX $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_CH_HSPMUX $offset $wdata]
  }
}
proc read_CH_HSPMUX { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+278*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_CH_HSPMUX { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+278*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE3_CLK_COR_MIN_LAT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE3_CLK_COR_MIN_LAT $offset] & 0xf800) >> 11]
  } else {
    set mask [expr [read_PCIE3_CLK_COR_MIN_LAT $offset] & ~0xf800]
    set wdata [expr ($data << 11) | $mask]
    return [write_PCIE3_CLK_COR_MIN_LAT $offset $wdata]
  }
}
proc read_PCIE3_CLK_COR_MIN_LAT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+279*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE3_CLK_COR_MIN_LAT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+279*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE3_CLK_COR_MAX_LAT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE3_CLK_COR_MAX_LAT $offset] & 0x7c0) >> 6]
  } else {
    set mask [expr [read_PCIE3_CLK_COR_MAX_LAT $offset] & ~0x7c0]
    set wdata [expr ($data << 6) | $mask]
    return [write_PCIE3_CLK_COR_MAX_LAT $offset $wdata]
  }
}
proc read_PCIE3_CLK_COR_MAX_LAT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+279*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE3_CLK_COR_MAX_LAT { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+279*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE3_CLK_COR_THRSH_TIMER { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE3_CLK_COR_THRSH_TIMER $offset] & 0x3f) >> 0]
  } else {
    set mask [expr [read_PCIE3_CLK_COR_THRSH_TIMER $offset] & ~0x3f]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE3_CLK_COR_THRSH_TIMER $offset $wdata]
  }
}
proc read_PCIE3_CLK_COR_THRSH_TIMER { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+279*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE3_CLK_COR_THRSH_TIMER { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+279*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_MODE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_MODE $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_USB_MODE $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_USB_MODE $offset $wdata]
  }
}
proc read_USB_MODE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+280*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_MODE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+280*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_EXT_CNTL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_EXT_CNTL $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_USB_EXT_CNTL $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_USB_EXT_CNTL $offset $wdata]
  }
}
proc read_USB_EXT_CNTL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+280*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_EXT_CNTL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+280*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_CLK_COR_EQ_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_CLK_COR_EQ_EN $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_USB_CLK_COR_EQ_EN $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_USB_CLK_COR_EQ_EN $offset $wdata]
  }
}
proc read_USB_CLK_COR_EQ_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+280*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_CLK_COR_EQ_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+280*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_PCIE_ERR_REP_DIS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_PCIE_ERR_REP_DIS $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_USB_PCIE_ERR_REP_DIS $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_USB_PCIE_ERR_REP_DIS $offset $wdata]
  }
}
proc read_USB_PCIE_ERR_REP_DIS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+280*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_PCIE_ERR_REP_DIS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+280*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE3_CLK_COR_FULL_THRSH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE3_CLK_COR_FULL_THRSH $offset] & 0xfc0) >> 6]
  } else {
    set mask [expr [read_PCIE3_CLK_COR_FULL_THRSH $offset] & ~0xfc0]
    set wdata [expr ($data << 6) | $mask]
    return [write_PCIE3_CLK_COR_FULL_THRSH $offset $wdata]
  }
}
proc read_PCIE3_CLK_COR_FULL_THRSH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+280*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE3_CLK_COR_FULL_THRSH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+280*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PCIE3_CLK_COR_EMPTY_THRSH { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PCIE3_CLK_COR_EMPTY_THRSH $offset] & 0x1f) >> 0]
  } else {
    set mask [expr [read_PCIE3_CLK_COR_EMPTY_THRSH $offset] & ~0x1f]
    set wdata [expr ($data << 0) | $mask]
    return [write_PCIE3_CLK_COR_EMPTY_THRSH $offset $wdata]
  }
}
proc read_PCIE3_CLK_COR_EMPTY_THRSH { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+280*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PCIE3_CLK_COR_EMPTY_THRSH { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+280*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_RAW_ELEC { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_RAW_ELEC $offset] & 0x8000) >> 15]
  } else {
    set mask [expr [read_USB_RAW_ELEC $offset] & ~0x8000]
    set wdata [expr ($data << 15) | $mask]
    return [write_USB_RAW_ELEC $offset $wdata]
  }
}
proc read_USB_RAW_ELEC { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+281*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_RAW_ELEC { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+281*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc DELAY_ELEC { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_DELAY_ELEC $offset] & 0x4000) >> 14]
  } else {
    set mask [expr [read_DELAY_ELEC $offset] & ~0x4000]
    set wdata [expr ($data << 14) | $mask]
    return [write_DELAY_ELEC $offset $wdata]
  }
}
proc read_DELAY_ELEC { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+281*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_DELAY_ELEC { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+281*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_BOTH_BURST_IDLE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_BOTH_BURST_IDLE $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_USB_BOTH_BURST_IDLE $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_USB_BOTH_BURST_IDLE $offset $wdata]
  }
}
proc read_USB_BOTH_BURST_IDLE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+281*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_BOTH_BURST_IDLE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+281*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TXREFCLKDIV2_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXREFCLKDIV2_SEL $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_TXREFCLKDIV2_SEL $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_TXREFCLKDIV2_SEL $offset $wdata]
  }
}
proc read_TXREFCLKDIV2_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+281*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TXREFCLKDIV2_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+281*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DEEMPH2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DEEMPH2 $offset] & 0xfc0) >> 6]
  } else {
    set mask [expr [read_TX_DEEMPH2 $offset] & ~0xfc0]
    set wdata [expr ($data << 6) | $mask]
    return [write_TX_DEEMPH2 $offset $wdata]
  }
}
proc read_TX_DEEMPH2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+281*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DEEMPH2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+281*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc TX_DEEMPH3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TX_DEEMPH3 $offset] & 0x3f) >> 0]
  } else {
    set mask [expr [read_TX_DEEMPH3 $offset] & ~0x3f]
    set wdata [expr ($data << 0) | $mask]
    return [write_TX_DEEMPH3 $offset $wdata]
  }
}
proc read_TX_DEEMPH3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+281*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_TX_DEEMPH3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+281*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXREFCLKDIV2_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXREFCLKDIV2_SEL $offset] & 0x40) >> 6]
  } else {
    set mask [expr [read_RXREFCLKDIV2_SEL $offset] & ~0x40]
    set wdata [expr ($data << 6) | $mask]
    return [write_RXREFCLKDIV2_SEL $offset $wdata]
  }
}
proc read_RXREFCLKDIV2_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+282*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXREFCLKDIV2_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+282*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc A_RXTERMINATION { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_A_RXTERMINATION $offset] & 0x20) >> 5]
  } else {
    set mask [expr [read_A_RXTERMINATION $offset] & ~0x20]
    set wdata [expr ($data << 5) | $mask]
    return [write_A_RXTERMINATION $offset $wdata]
  }
}
proc read_A_RXTERMINATION { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+282*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_A_RXTERMINATION { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+282*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPS_TPERIOD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPS_TPERIOD $offset] & 0x1e) >> 1]
  } else {
    set mask [expr [read_USB_LFPS_TPERIOD $offset] & ~0x1e]
    set wdata [expr ($data << 1) | $mask]
    return [write_USB_LFPS_TPERIOD $offset $wdata]
  }
}
proc read_USB_LFPS_TPERIOD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+282*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPS_TPERIOD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+282*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPS_TPERIOD_ACCURATE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPS_TPERIOD_ACCURATE $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_USB_LFPS_TPERIOD_ACCURATE $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPS_TPERIOD_ACCURATE $offset $wdata]
  }
}
proc read_USB_LFPS_TPERIOD_ACCURATE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+282*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPS_TPERIOD_ACCURATE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+282*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG2_GEN4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG2_GEN4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG2_GEN4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG2_GEN4 $offset $wdata]
  }
}
proc read_RXCDR_CFG2_GEN4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+283*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG2_GEN4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+283*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG3_GEN4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG3_GEN4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG3_GEN4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG3_GEN4 $offset $wdata]
  }
}
proc read_RXCDR_CFG3_GEN4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+284*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG3_GEN4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+284*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_BURSTMIN_U3WAKE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_BURSTMIN_U3WAKE $offset] & 0x7f00) >> 8]
  } else {
    set mask [expr [read_USB_BURSTMIN_U3WAKE $offset] & ~0x7f00]
    set wdata [expr ($data << 8) | $mask]
    return [write_USB_BURSTMIN_U3WAKE $offset $wdata]
  }
}
proc read_USB_BURSTMIN_U3WAKE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+285*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_BURSTMIN_U3WAKE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+285*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_BURSTMAX_U3WAKE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_BURSTMAX_U3WAKE $offset] & 0x7f) >> 0]
  } else {
    set mask [expr [read_USB_BURSTMAX_U3WAKE $offset] & ~0x7f]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_BURSTMAX_U3WAKE $offset $wdata]
  }
}
proc read_USB_BURSTMAX_U3WAKE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+285*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_BURSTMAX_U3WAKE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+285*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_IDLEMIN_POLLING { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_IDLEMIN_POLLING $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_USB_IDLEMIN_POLLING $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_IDLEMIN_POLLING $offset $wdata]
  }
}
proc read_USB_IDLEMIN_POLLING { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+286*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_IDLEMIN_POLLING { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+286*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_IDLEMAX_POLLING { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_IDLEMAX_POLLING $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_USB_IDLEMAX_POLLING $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_IDLEMAX_POLLING $offset $wdata]
  }
}
proc read_USB_IDLEMAX_POLLING { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+287*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_IDLEMAX_POLLING { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+287*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPSPOLLING_BURST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPSPOLLING_BURST $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_USB_LFPSPOLLING_BURST $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPSPOLLING_BURST $offset $wdata]
  }
}
proc read_USB_LFPSPOLLING_BURST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+288*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPSPOLLING_BURST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+288*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPSPING_BURST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPSPING_BURST $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_USB_LFPSPING_BURST $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPSPING_BURST $offset $wdata]
  }
}
proc read_USB_LFPSPING_BURST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+289*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPSPING_BURST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+289*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPSU1EXIT_BURST { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPSU1EXIT_BURST $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_USB_LFPSU1EXIT_BURST $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPSU1EXIT_BURST $offset $wdata]
  }
}
proc read_USB_LFPSU1EXIT_BURST { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+290*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPSU1EXIT_BURST { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+290*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPSU2LPEXIT_BURST_MS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPSU2LPEXIT_BURST_MS $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_USB_LFPSU2LPEXIT_BURST_MS $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPSU2LPEXIT_BURST_MS $offset $wdata]
  }
}
proc read_USB_LFPSU2LPEXIT_BURST_MS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+291*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPSU2LPEXIT_BURST_MS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+291*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPSU3WAKE_BURST_MS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPSU3WAKE_BURST_MS $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_USB_LFPSU3WAKE_BURST_MS $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPSU3WAKE_BURST_MS $offset $wdata]
  }
}
proc read_USB_LFPSU3WAKE_BURST_MS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+292*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPSU3WAKE_BURST_MS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+292*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc USB_LFPSPOLLING_IDLE_MS { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_USB_LFPSPOLLING_IDLE_MS $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_USB_LFPSPOLLING_IDLE_MS $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_USB_LFPSPOLLING_IDLE_MS $offset $wdata]
  }
}
proc read_USB_LFPSPOLLING_IDLE_MS { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+293*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_USB_LFPSPOLLING_IDLE_MS { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+293*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HA_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HA_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HA_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HA_CFG1 $offset $wdata]
  }
}
proc read_RXDFE_HA_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+294*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HA_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+294*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXDFE_HB_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXDFE_HB_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RXDFE_HB_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXDFE_HB_CFG0 $offset $wdata]
  }
}
proc read_RXDFE_HB_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+295*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXDFE_HB_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+295*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG3_GEN2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG3_GEN2 $offset] & 0xfc00) >> 10]
  } else {
    set mask [expr [read_RXCDR_CFG3_GEN2 $offset] & ~0xfc00]
    set wdata [expr ($data << 10) | $mask]
    return [write_RXCDR_CFG3_GEN2 $offset $wdata]
  }
}
proc read_RXCDR_CFG3_GEN2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+309*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG3_GEN2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+309*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXCDR_CFG2_GEN2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXCDR_CFG2_GEN2 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_RXCDR_CFG2_GEN2 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXCDR_CFG2_GEN2 $offset $wdata]
  }
}
proc read_RXCDR_CFG2_GEN2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+309*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXCDR_CFG2_GEN2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+309*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc COMMA_ALIGN_LATENCY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_COMMA_ALIGN_LATENCY $offset] & 0x7f) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_COMMA_ALIGN_LATENCY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+592*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_error_count { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_error_count $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_error_count { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+593*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sample_count { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sample_count $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sample_count { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+594*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_control_status { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_control_status $offset] & 0xf) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_control_status { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+595*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte4 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+596*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte3 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+597*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte2 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+598*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte1 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+599*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte0 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+600*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte4 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+601*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte3 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+602*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte2 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+603*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte1 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+604*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte0 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+605*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc RX_PRBS_ERR_CNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_PRBS_ERR_CNT $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_RX_PRBS_ERR_CNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+606*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc RX_PRBS_ERR_CNT { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RX_PRBS_ERR_CNT $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_RX_PRBS_ERR_CNT { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+607*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc TXGBOX_FIFO_LATENCY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_TXGBOX_FIFO_LATENCY $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_TXGBOX_FIFO_LATENCY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+611*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc RXGBOX_FIFO_LATENCY { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXGBOX_FIFO_LATENCY $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_RXGBOX_FIFO_LATENCY { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+617*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte5 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+643*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte6 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte6 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte6 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+644*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte7 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte7 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte7 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+645*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte8 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte8 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte8 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+646*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_sdata_byte9 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_sdata_byte9 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_sdata_byte9 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+647*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte5 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+648*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte6 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte6 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte6 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+649*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte7 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte7 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte7 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+650*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte8 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte8 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte8 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+651*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc es_rdata_byte9 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_es_rdata_byte9 $offset] & 0xffff) >> 0]
  } else {
    return "Read Only Register"
  }
}
proc read_es_rdata_byte9 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+652*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}

proc help_gty_channel_api {} {
  global offset
  puts "CDR_SWAP_MODE_EN               [format 0x%-8X [expr 0x2+$offset]] RW    [0:0]"
  puts "RXBUFRESET_TIME                [format 0x%-8X [expr 0x3+$offset]] RW    [15:11]"
  puts "CFOK_PWRSVE_EN                 [format 0x%-8X [expr 0x3+$offset]] RW    [10:10]"
  puts "EYE_SCAN_SWAP_EN               [format 0x%-8X [expr 0x3+$offset]] RW    [9:9]"
  puts "RX_DATA_WIDTH                  [format 0x%-8X [expr 0x3+$offset]] RW    [8:5]"
  puts "RXCDRFREQRESET_TIME            [format 0x%-8X [expr 0x3+$offset]] RW    [4:0]"
  puts "RXCDRPHRESET_TIME              [format 0x%-8X [expr 0x4+$offset]] RW    [15:11]"
  puts "PCI3_RX_ELECIDLE_H2L_DISABLE   [format 0x%-8X [expr 0x4+$offset]] RW    [10:8]"
  puts "RXDFELPMRESET_TIME             [format 0x%-8X [expr 0x4+$offset]] RW    [7:1]"
  puts "RX_FABINT_USRCLK_FLOP          [format 0x%-8X [expr 0x4+$offset]] RW    [0:0]"
  puts "RXPMARESET_TIME                [format 0x%-8X [expr 0x5+$offset]] RW    [15:11]"
  puts "PCI3_RX_ELECIDLE_LP4_DISABLE   [format 0x%-8X [expr 0x5+$offset]] RW    [10:10]"
  puts "PCI3_RX_FIFO_DISABLE           [format 0x%-8X [expr 0x5+$offset]] RW    [8:8]"
  puts "PCI3_RX_ELECIDLE_EI2_ENABLE    [format 0x%-8X [expr 0x5+$offset]] RW    [9:9]"
  puts "RXPCSRESET_TIME                [format 0x%-8X [expr 0x5+$offset]] RW    [7:3]"
  puts "RXELECIDLE_CFG                 [format 0x%-8X [expr 0x5+$offset]] RW    [2:0]"
  puts "RXDFE_HB_CFG1                  [format 0x%-8X [expr 0x6+$offset]] RW    [15:0]"
  puts "TXPMARESET_TIME                [format 0x%-8X [expr 0x9+$offset]] RW    [15:11]"
  puts "TXPCSRESET_TIME                [format 0x%-8X [expr 0x9+$offset]] RW    [7:3]"
  puts "RX_PMA_POWER_SAVE              [format 0x%-8X [expr 0x9+$offset]] RW    [10:10]"
  puts "TX_PMA_POWER_SAVE              [format 0x%-8X [expr 0x9+$offset]] RW    [9:9]"
  puts "SRSTMODE                       [format 0x%-8X [expr 0x9+$offset]] RW    [8:8]"
  puts "TX_FIFO_BYP_EN                 [format 0x%-8X [expr 0xa+$offset]] RW    [3:3]"
  puts "TX_FABINT_USRCLK_FLOP          [format 0x%-8X [expr 0xb+$offset]] RW    [4:4]"
  puts "RXPMACLK_SEL                   [format 0x%-8X [expr 0xb+$offset]] RW    [8:8]"
  puts "TX_PROGCLK_SEL                 [format 0x%-8X [expr 0xc+$offset]] RW    [10:10]"
  puts "RXISCANRESET_TIME              [format 0x%-8X [expr 0xc+$offset]] RW    [9:5]"
  puts "TXAMONSEL                      [format 0x%-8X [expr 0xd+$offset]] RW    [7:2]"
  puts "BLOCKSEL                       [format 0x%-8X [expr 0xd+$offset]] RW    [0:0]"
  puts "RXCDR_CFG0                     [format 0x%-8X [expr 0xe+$offset]] RW    [15:0]"
  puts "RXCDR_CFG1                     [format 0x%-8X [expr 0xf+$offset]] RW    [15:0]"
  puts "RXCDR_CFG2                     [format 0x%-8X [expr 0x10+$offset]] RW    [15:0]"
  puts "RXCDR_CFG3                     [format 0x%-8X [expr 0x11+$offset]] RW    [15:0]"
  puts "SELCKOK                        [format 0x%-8X [expr 0x11+$offset]] RW    [7:7]"
  puts "RXCDR_CFG4                     [format 0x%-8X [expr 0x12+$offset]] RW    [15:0]"
  puts "CPLL_LOCK_CFG                  [format 0x%-8X [expr 0x13+$offset]] RW    [15:0]"
  puts "CHAN_BOND_MAX_SKEW             [format 0x%-8X [expr 0x14+$offset]] RW    [15:12]"
  puts "CHAN_BOND_SEQ_LEN              [format 0x%-8X [expr 0x14+$offset]] RW    [10:10]"
  puts "CHAN_BOND_SEQ_1_1              [format 0x%-8X [expr 0x14+$offset]] RW    [9:0]"
  puts "PCI3_RX_ELECIDLE_HI_COUNT      [format 0x%-8X [expr 0x15+$offset]] RW    [15:10]"
  puts "CHAN_BOND_SEQ_1_3              [format 0x%-8X [expr 0x15+$offset]] RW    [9:0]"
  puts "PCI3_RX_ELECIDLE_H2L_COUNT     [format 0x%-8X [expr 0x16+$offset]] RW    [15:10]"
  puts "CHAN_BOND_SEQ_1_4              [format 0x%-8X [expr 0x16+$offset]] RW    [9:0]"
  puts "RX_BUFFER_CFG                  [format 0x%-8X [expr 0x17+$offset]] RW    [15:10]"
  puts "RX_DEFER_RESET_BUF_EN          [format 0x%-8X [expr 0x17+$offset]] RW    [9:9]"
  puts "OOBDIVCTL                      [format 0x%-8X [expr 0x17+$offset]] RW    [7:7]"
  puts "PCI3_AUTO_REALIGN              [format 0x%-8X [expr 0x17+$offset]] RW    [5:5]"
  puts "PCI3_PIPE_RX_ELECIDLE          [format 0x%-8X [expr 0x17+$offset]] RW    [4:4]"
  puts "CHAN_BOND_SEQ_1_ENABLE         [format 0x%-8X [expr 0x18+$offset]] RW    [15:12]"
  puts "PCI3_RX_ASYNC_EBUF_BYPASS      [format 0x%-8X [expr 0x18+$offset]] RW    [10:10]"
  puts "CHAN_BOND_SEQ_2_1              [format 0x%-8X [expr 0x18+$offset]] RW    [9:0]"
  puts "CHAN_BOND_SEQ_2_2              [format 0x%-8X [expr 0x19+$offset]] RW    [9:0]"
  puts "CHAN_BOND_SEQ_2_3              [format 0x%-8X [expr 0x1a+$offset]] RW    [9:0]"
  puts "CHAN_BOND_SEQ_2_4              [format 0x%-8X [expr 0x1b+$offset]] RW    [9:0]"
  puts "CHAN_BOND_SEQ_2_ENABLE         [format 0x%-8X [expr 0x1c+$offset]] RW    [15:12]"
  puts "CHAN_BOND_SEQ_2_USE            [format 0x%-8X [expr 0x1c+$offset]] RW    [11:11]"
  puts "CLK_COR_KEEP_IDLE              [format 0x%-8X [expr 0x1c+$offset]] RW    [6:6]"
  puts "CLK_COR_MIN_LAT                [format 0x%-8X [expr 0x1c+$offset]] RW    [5:0]"
  puts "CLK_COR_MAX_LAT                [format 0x%-8X [expr 0x1d+$offset]] RW    [15:10]"
  puts "CLK_COR_PRECEDENCE             [format 0x%-8X [expr 0x1d+$offset]] RW    [9:9]"
  puts "CLK_COR_REPEAT_WAIT            [format 0x%-8X [expr 0x1d+$offset]] RW    [8:4]"
  puts "CLK_COR_SEQ_LEN                [format 0x%-8X [expr 0x1d+$offset]] RW    [2:2]"
  puts "CHAN_BOND_KEEP_ALIGN           [format 0x%-8X [expr 0x1d+$offset]] RW    [0:0]"
  puts "CLK_COR_SEQ_1_1                [format 0x%-8X [expr 0x1e+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_1_2                [format 0x%-8X [expr 0x1f+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_1_3                [format 0x%-8X [expr 0x20+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_1_4                [format 0x%-8X [expr 0x21+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_1_ENABLE           [format 0x%-8X [expr 0x22+$offset]] RW    [15:12]"
  puts "CLK_COR_SEQ_2_1                [format 0x%-8X [expr 0x22+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_2_2                [format 0x%-8X [expr 0x23+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_2_ENABLE           [format 0x%-8X [expr 0x24+$offset]] RW    [15:12]"
  puts "CLK_COR_SEQ_2_USE              [format 0x%-8X [expr 0x24+$offset]] RW    [11:11]"
  puts "CLK_CORRECT_USE                [format 0x%-8X [expr 0x24+$offset]] RW    [10:10]"
  puts "CLK_COR_SEQ_2_3                [format 0x%-8X [expr 0x24+$offset]] RW    [9:0]"
  puts "CLK_COR_SEQ_2_4                [format 0x%-8X [expr 0x25+$offset]] RW    [9:0]"
  puts "RXDFE_HE_CFG0                  [format 0x%-8X [expr 0x26+$offset]] RW    [15:0]"
  puts "ALIGN_COMMA_WORD               [format 0x%-8X [expr 0x27+$offset]] RW    [15:13]"
  puts "ALIGN_COMMA_DOUBLE             [format 0x%-8X [expr 0x27+$offset]] RW    [12:12]"
  puts "SHOW_REALIGN_COMMA             [format 0x%-8X [expr 0x27+$offset]] RW    [11:11]"
  puts "ALIGN_COMMA_ENABLE             [format 0x%-8X [expr 0x27+$offset]] RW    [9:0]"
  puts "CPLL_FBDIV                     [format 0x%-8X [expr 0x28+$offset]] RW    [15:8]"
  puts "CPLL_FBDIV_45                  [format 0x%-8X [expr 0x28+$offset]] RW    [7:7]"
  puts "RXCDR_LOCK_CFG0                [format 0x%-8X [expr 0x29+$offset]] RW    [15:0]"
  puts "CPLL_REFCLK_DIV                [format 0x%-8X [expr 0x2a+$offset]] RW    [15:11]"
  puts "CPLL_IPS_EN                    [format 0x%-8X [expr 0x2a+$offset]] RW    [10:10]"
  puts "CPLL_IPS_REFCLK_SEL            [format 0x%-8X [expr 0x2a+$offset]] RW    [9:7]"
  puts "SATA_CPLL_CFG                  [format 0x%-8X [expr 0x2a+$offset]] RW    [5:5]"
  puts "A_TXDIFFCTRL                   [format 0x%-8X [expr 0x2a+$offset]] RW    [4:0]"
  puts "CPLL_INIT_CFG0                 [format 0x%-8X [expr 0x2b+$offset]] RW    [15:0]"
  puts "DEC_PCOMMA_DETECT              [format 0x%-8X [expr 0x2c+$offset]] RW    [15:15]"
  puts "TX_DIVRESET_TIME               [format 0x%-8X [expr 0x2c+$offset]] RW    [11:7]"
  puts "RX_DIVRESET_TIME               [format 0x%-8X [expr 0x2c+$offset]] RW    [6:2]"
  puts "A_TXPROGDIVRESET               [format 0x%-8X [expr 0x2c+$offset]] RW    [1:1]"
  puts "A_RXPROGDIVRESET               [format 0x%-8X [expr 0x2c+$offset]] RW    [0:0]"
  puts "RXCDR_LOCK_CFG1                [format 0x%-8X [expr 0x2d+$offset]] RW    [15:0]"
  puts "RXCFOK_CFG1                    [format 0x%-8X [expr 0x2e+$offset]] RW    [15:0]"
  puts "RXDFE_H2_CFG0                  [format 0x%-8X [expr 0x2f+$offset]] RW    [15:0]"
  puts "RXDFE_H2_CFG1                  [format 0x%-8X [expr 0x30+$offset]] RW    [15:0]"
  puts "RXCFOK_CFG2                    [format 0x%-8X [expr 0x31+$offset]] RW    [15:0]"
  puts "RXLPM_CFG                      [format 0x%-8X [expr 0x32+$offset]] RW    [15:0]"
  puts "RXLPM_KH_CFG0                  [format 0x%-8X [expr 0x33+$offset]] RW    [15:0]"
  puts "RXLPM_KH_CFG1                  [format 0x%-8X [expr 0x34+$offset]] RW    [15:0]"
  puts "RXDFELPM_KL_CFG0               [format 0x%-8X [expr 0x35+$offset]] RW    [15:0]"
  puts "RXDFELPM_KL_CFG1               [format 0x%-8X [expr 0x36+$offset]] RW    [15:0]"
  puts "RXLPM_OS_CFG0                  [format 0x%-8X [expr 0x37+$offset]] RW    [15:0]"
  puts "RXLPM_OS_CFG1                  [format 0x%-8X [expr 0x38+$offset]] RW    [15:0]"
  puts "RXLPM_GC_CFG                   [format 0x%-8X [expr 0x39+$offset]] RW    [15:0]"
  puts "DMONITOR_CFG1                  [format 0x%-8X [expr 0x3a+$offset]] RW    [15:8]"
  puts "ES_CONTROL                     [format 0x%-8X [expr 0x3c+$offset]] RW    [15:10]"
  puts "ES_PRESCALE                    [format 0x%-8X [expr 0x3c+$offset]] RW    [4:0]"
  puts "ES_EYE_SCAN_EN                 [format 0x%-8X [expr 0x3c+$offset]] RW    [8:8]"
  puts "ES_ERRDET_EN                   [format 0x%-8X [expr 0x3c+$offset]] RW    [9:9]"
  puts "RXDFE_GC_CFG2                  [format 0x%-8X [expr 0x3d+$offset]] RW    [15:0]"
  puts "TXDLY_LCFG                     [format 0x%-8X [expr 0x3e+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER0                  [format 0x%-8X [expr 0x3f+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER1                  [format 0x%-8X [expr 0x40+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER2                  [format 0x%-8X [expr 0x41+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER3                  [format 0x%-8X [expr 0x42+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER4                  [format 0x%-8X [expr 0x43+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK0                  [format 0x%-8X [expr 0x44+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK1                  [format 0x%-8X [expr 0x45+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK2                  [format 0x%-8X [expr 0x46+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK3                  [format 0x%-8X [expr 0x47+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK4                  [format 0x%-8X [expr 0x48+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK0                 [format 0x%-8X [expr 0x49+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK1                 [format 0x%-8X [expr 0x4a+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK2                 [format 0x%-8X [expr 0x4b+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK3                 [format 0x%-8X [expr 0x4c+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK4                 [format 0x%-8X [expr 0x4d+$offset]] RW    [15:0]"
  puts "FTS_LANE_DESKEW_EN             [format 0x%-8X [expr 0x4e+$offset]] RW    [4:4]"
  puts "FTS_DESKEW_SEQ_ENABLE          [format 0x%-8X [expr 0x4e+$offset]] RW    [3:0]"
  puts "ES_HORZ_OFFSET                 [format 0x%-8X [expr 0x4f+$offset]] RW    [15:4]"
  puts "FTS_LANE_DESKEW_CFG            [format 0x%-8X [expr 0x4f+$offset]] RW    [3:0]"
  puts "RXDFE_HC_CFG1                  [format 0x%-8X [expr 0x50+$offset]] RW    [15:0]"
  puts "ES_PMA_CFG                     [format 0x%-8X [expr 0x51+$offset]] RW    [9:0]"
  puts "RX_DFE_AGC_CFG1                [format 0x%-8X [expr 0x52+$offset]] RW    [4:2]"
  puts "TXFE_CFG2                      [format 0x%-8X [expr 0x53+$offset]] RW    [15:0]"
  puts "TXFE_CFG3                      [format 0x%-8X [expr 0x54+$offset]] RW    [15:0]"
  puts "PCIE_64B_DYN_CLKSW_DIS         [format 0x%-8X [expr 0x55+$offset]] RW    [14:14]"
  puts "LOCAL_MASTER                   [format 0x%-8X [expr 0x55+$offset]] RW    [13:13]"
  puts "PCS_PCIE_EN                    [format 0x%-8X [expr 0x55+$offset]] RW    [12:12]"
  puts "PCIE_GEN4_64BIT_INT_EN         [format 0x%-8X [expr 0x55+$offset]] RW    [11:11]"
  puts "ALIGN_MCOMMA_DET               [format 0x%-8X [expr 0x55+$offset]] RW    [10:10]"
  puts "ALIGN_MCOMMA_VALUE             [format 0x%-8X [expr 0x55+$offset]] RW    [9:0]"
  puts "ALIGN_PCOMMA_DET               [format 0x%-8X [expr 0x56+$offset]] RW    [10:10]"
  puts "ALIGN_PCOMMA_VALUE             [format 0x%-8X [expr 0x56+$offset]] RW    [9:0]"
  puts "TX_PROGDIV_CFG                 [format 0x%-8X [expr 0x57+$offset]] RW    [15:0]"
  puts "RXDFE_OS_CFG0                  [format 0x%-8X [expr 0x58+$offset]] RW    [15:0]"
  puts "RXPHDLY_CFG                    [format 0x%-8X [expr 0x59+$offset]] RW    [15:0]"
  puts "RXDFE_OS_CFG1                  [format 0x%-8X [expr 0x5a+$offset]] RW    [15:0]"
  puts "RXDLY_CFG                      [format 0x%-8X [expr 0x5b+$offset]] RW    [15:0]"
  puts "RXDLY_LCFG                     [format 0x%-8X [expr 0x5c+$offset]] RW    [15:0]"
  puts "RXDFE_HF_CFG0                  [format 0x%-8X [expr 0x5d+$offset]] RW    [15:0]"
  puts "RXDFE_HD_CFG0                  [format 0x%-8X [expr 0x5e+$offset]] RW    [15:0]"
  puts "RX_BIAS_CFG0                   [format 0x%-8X [expr 0x5f+$offset]] RW    [15:0]"
  puts "PCS_RSVD0                      [format 0x%-8X [expr 0x60+$offset]] RW    [15:0]"
  puts "PCIE_GEN4_NEW_EIEOS_DET_EN     [format 0x%-8X [expr 0x60+$offset]] RW    [8:4]"
  puts "USB3_RXTERMINATION_CTRL        [format 0x%-8X [expr 0x60+$offset]] RW    [0:0]"
  puts "RXPH_MONITOR_SEL               [format 0x%-8X [expr 0x61+$offset]] RW    [15:11]"
  puts "RX_CM_BUF_PD                   [format 0x%-8X [expr 0x61+$offset]] RW    [10:10]"
  puts "RX_CM_BUF_CFG                  [format 0x%-8X [expr 0x61+$offset]] RW    [9:6]"
  puts "RX_CM_TRIM                     [format 0x%-8X [expr 0x61+$offset]] RW    [5:2]"
  puts "RX_CM_SEL                      [format 0x%-8X [expr 0x61+$offset]] RW    [0:0]"
  puts "RX_I2V_FILTER_EN               [format 0x%-8X [expr 0x62+$offset]] RW    [15:15]"
  puts "RX_SUM_DFETAPREP_EN            [format 0x%-8X [expr 0x62+$offset]] RW    [14:14]"
  puts "RX_SUM_VCM_OVWR                [format 0x%-8X [expr 0x62+$offset]] RW    [13:13]"
  puts "RX_SUM_IREF_TUNE               [format 0x%-8X [expr 0x62+$offset]] RW    [12:9]"
  puts "EYESCAN_VP_RANGE               [format 0x%-8X [expr 0x62+$offset]] RW    [7:7]"
  puts "RX_SUM_VCMTUNE                 [format 0x%-8X [expr 0x62+$offset]] RW    [6:3]"
  puts "RX_SUM_VREF_TUNE               [format 0x%-8X [expr 0x62+$offset]] RW    [2:0]"
  puts "CBCC_DATA_SOURCE_SEL           [format 0x%-8X [expr 0x63+$offset]] RW    [15:15]"
  puts "OOB_PWRUP                      [format 0x%-8X [expr 0x63+$offset]] RW    [14:14]"
  puts "RXOOB_CFG                      [format 0x%-8X [expr 0x63+$offset]] RW    [13:5]"
  puts "RXOUT_DIV                      [format 0x%-8X [expr 0x63+$offset]] RW    [2:0]"
  puts "RX_SIG_VALID_DLY               [format 0x%-8X [expr 0x64+$offset]] RW    [15:11]"
  puts "RXSLIDE_MODE                   [format 0x%-8X [expr 0x64+$offset]] RW    [9:9]"
  puts "RXPRBS_ERR_LOOPBACK            [format 0x%-8X [expr 0x64+$offset]] RW    [8:8]"
  puts "RXSLIDE_AUTO_WAIT              [format 0x%-8X [expr 0x64+$offset]] RW    [7:4]"
  puts "RXBUF_EN                       [format 0x%-8X [expr 0x64+$offset]] RW    [3:3]"
  puts "RX_XCLK_SEL                    [format 0x%-8X [expr 0x64+$offset]] RW    [1:1]"
  puts "RXGEARBOX_EN                   [format 0x%-8X [expr 0x64+$offset]] RW    [0:0]"
  puts "RXBUF_THRESH_OVFLW             [format 0x%-8X [expr 0x65+$offset]] RW    [15:10]"
  puts "DMONITOR_CFG0                  [format 0x%-8X [expr 0x65+$offset]] RW    [9:0]"
  puts "RXBUF_THRESH_OVRD              [format 0x%-8X [expr 0x66+$offset]] RW    [15:15]"
  puts "RXBUF_RESET_ON_COMMAALIGN      [format 0x%-8X [expr 0x66+$offset]] RW    [14:14]"
  puts "RXBUF_RESET_ON_RATE_CHANGE     [format 0x%-8X [expr 0x66+$offset]] RW    [13:13]"
  puts "RXBUF_RESET_ON_CB_CHANGE       [format 0x%-8X [expr 0x66+$offset]] RW    [12:12]"
  puts "RXBUF_THRESH_UNDFLW            [format 0x%-8X [expr 0x66+$offset]] RW    [11:6]"
  puts "RX_CLKMUX_EN                   [format 0x%-8X [expr 0x66+$offset]] RW    [5:5]"
  puts "RX_DISPERR_SEQ_MATCH           [format 0x%-8X [expr 0x66+$offset]] RW    [4:4]"
  puts "RX_WIDEMODE_CDR                [format 0x%-8X [expr 0x66+$offset]] RW    [2:2]"
  puts "RX_INT_DATAWIDTH               [format 0x%-8X [expr 0x66+$offset]] RW    [0:0]"
  puts "RXBUF_EIDLE_HI_CNT             [format 0x%-8X [expr 0x67+$offset]] RW    [15:12]"
  puts "RXCDR_HOLD_DURING_EIDLE        [format 0x%-8X [expr 0x67+$offset]] RW    [11:11]"
  puts "RX_DFE_LPM_HOLD_DURING_EIDLE   [format 0x%-8X [expr 0x67+$offset]] RW    [10:10]"
  puts "RX_WIDEMODE_CDR_GEN3           [format 0x%-8X [expr 0x67+$offset]] RW    [8:8]"
  puts "RXBUF_EIDLE_LO_CNT             [format 0x%-8X [expr 0x67+$offset]] RW    [7:4]"
  puts "RXBUF_RESET_ON_EIDLE           [format 0x%-8X [expr 0x67+$offset]] RW    [3:3]"
  puts "RXCDR_FR_RESET_ON_EIDLE        [format 0x%-8X [expr 0x67+$offset]] RW    [2:2]"
  puts "RXCDR_PH_RESET_ON_EIDLE        [format 0x%-8X [expr 0x67+$offset]] RW    [1:1]"
  puts "RXBUF_ADDR_MODE                [format 0x%-8X [expr 0x67+$offset]] RW    [0:0]"
  puts "SATA_BURST_VAL                 [format 0x%-8X [expr 0x68+$offset]] RW    [15:13]"
  puts "SAS_12G_MODE                   [format 0x%-8X [expr 0x68+$offset]] RW    [10:10]"
  puts "USB_TXIDLE_TUNE_ENABLE         [format 0x%-8X [expr 0x68+$offset]] RW    [9:9]"
  puts "USB_RXIDLE_P0_CTRL             [format 0x%-8X [expr 0x68+$offset]] RW    [8:8]"
  puts "SATA_BURST_SEQ_LEN             [format 0x%-8X [expr 0x68+$offset]] RW    [7:4]"
  puts "SATA_EIDLE_VAL                 [format 0x%-8X [expr 0x68+$offset]] RW    [2:0]"
  puts "USB_POLL_SATA_MIN_BURST        [format 0x%-8X [expr 0x69+$offset]] RW    [15:9]"
  puts "RX_WIDEMODE_CDR_GEN4           [format 0x%-8X [expr 0x69+$offset]] RW    [7:7]"
  puts "USB_U2_SAS_MIN_COM             [format 0x%-8X [expr 0x69+$offset]] RW    [6:0]"
  puts "USB_PING_SATA_MIN_INIT         [format 0x%-8X [expr 0x6a+$offset]] RW    [15:9]"
  puts "USB_U1_SATA_MIN_WAKE           [format 0x%-8X [expr 0x6a+$offset]] RW    [6:0]"
  puts "USB_POLL_SATA_MAX_BURST        [format 0x%-8X [expr 0x6b+$offset]] RW    [15:9]"
  puts "USB_U2_SAS_MAX_COM             [format 0x%-8X [expr 0x6b+$offset]] RW    [6:0]"
  puts "USB_PING_SATA_MAX_INIT         [format 0x%-8X [expr 0x6c+$offset]] RW    [15:9]"
  puts "USB_U1_SATA_MAX_WAKE           [format 0x%-8X [expr 0x6c+$offset]] RW    [6:0]"
  puts "RX_CLK25_DIV                   [format 0x%-8X [expr 0x6d+$offset]] RW    [7:3]"
  puts "RXDFE_UT_CFG1                  [format 0x%-8X [expr 0x6e+$offset]] RW    [15:0]"
  puts "TXPHDLY_CFG1                   [format 0x%-8X [expr 0x6f+$offset]] RW    [15:0]"
  puts "RXDFE_VP_CFG0                  [format 0x%-8X [expr 0x70+$offset]] RW    [15:0]"
  puts "TXPH_MONITOR_SEL               [format 0x%-8X [expr 0x71+$offset]] RW    [6:2]"
  puts "TAPDLY_SET_TX                  [format 0x%-8X [expr 0x71+$offset]] RW    [0:0]"
  puts "ADAPT_CFG2                     [format 0x%-8X [expr 0x72+$offset]] RW    [15:0]"
  puts "RXDFE_VP_CFG1                  [format 0x%-8X [expr 0x73+$offset]] RW    [15:0]"
  puts "TERM_RCAL_CFG                  [format 0x%-8X [expr 0x74+$offset]] RW    [14:0]"
  puts "RXPI_CFG0                      [format 0x%-8X [expr 0x75+$offset]] RW    [15:0]"
  puts "PD_TRANS_TIME_FROM_P2          [format 0x%-8X [expr 0x76+$offset]] RW    [15:4]"
  puts "TERM_RCAL_OVRD                 [format 0x%-8X [expr 0x76+$offset]] RW    [3:1]"
  puts "PD_TRANS_TIME_NONE_P2          [format 0x%-8X [expr 0x77+$offset]] RW    [15:8]"
  puts "PD_TRANS_TIME_TO_P2            [format 0x%-8X [expr 0x77+$offset]] RW    [7:0]"
  puts "TRANS_TIME_RATE                [format 0x%-8X [expr 0x78+$offset]] RW    [15:8]"
  puts "TST_RSV0                       [format 0x%-8X [expr 0x79+$offset]] RW    [15:8]"
  puts "TST_RSV1                       [format 0x%-8X [expr 0x79+$offset]] RW    [7:0]"
  puts "TX_CLK25_DIV                   [format 0x%-8X [expr 0x7a+$offset]] RW    [15:11]"
  puts "TX_XCLK_SEL                    [format 0x%-8X [expr 0x7a+$offset]] RW    [10:10]"
  puts "TX_DATA_WIDTH                  [format 0x%-8X [expr 0x7a+$offset]] RW    [3:0]"
  puts "TX_DEEMPH0                     [format 0x%-8X [expr 0x7b+$offset]] RW    [15:10]"
  puts "TX_DEEMPH1                     [format 0x%-8X [expr 0x7b+$offset]] RW    [7:2]"
  puts "TX_MAINCURSOR_SEL              [format 0x%-8X [expr 0x7c+$offset]] RW    [14:14]"
  puts "TXGEARBOX_EN                   [format 0x%-8X [expr 0x7c+$offset]] RW    [13:13]"
  puts "TXOUT_DIV                      [format 0x%-8X [expr 0x7c+$offset]] RW    [10:8]"
  puts "TXBUF_EN                       [format 0x%-8X [expr 0x7c+$offset]] RW    [7:7]"
  puts "TXBUF_RESET_ON_RATE_CHANGE     [format 0x%-8X [expr 0x7c+$offset]] RW    [6:6]"
  puts "TX_RXDETECT_REF                [format 0x%-8X [expr 0x7c+$offset]] RW    [5:3]"
  puts "TXFIFO_ADDR_CFG                [format 0x%-8X [expr 0x7c+$offset]] RW    [2:2]"
  puts "TX_SW_MEAS                     [format 0x%-8X [expr 0x7c+$offset]] RW    [0:0]"
  puts "TX_RXDETECT_CFG                [format 0x%-8X [expr 0x7d+$offset]] RW    [15:2]"
  puts "TX_CLKMUX_EN                   [format 0x%-8X [expr 0x7e+$offset]] RW    [15:15]"
  puts "TX_LOOPBACK_DRIVE_HIZ          [format 0x%-8X [expr 0x7e+$offset]] RW    [14:14]"
  puts "TX_DRIVE_MODE                  [format 0x%-8X [expr 0x7e+$offset]] RW    [12:8]"
  puts "TX_EIDLE_ASSERT_DELAY          [format 0x%-8X [expr 0x7e+$offset]] RW    [7:5]"
  puts "TX_EIDLE_DEASSERT_DELAY        [format 0x%-8X [expr 0x7e+$offset]] RW    [4:2]"
  puts "TX_MARGIN_FULL_0               [format 0x%-8X [expr 0x7f+$offset]] RW    [15:9]"
  puts "TX_MARGIN_FULL_1               [format 0x%-8X [expr 0x7f+$offset]] RW    [7:1]"
  puts "TX_MARGIN_FULL_2               [format 0x%-8X [expr 0x80+$offset]] RW    [15:9]"
  puts "TX_MARGIN_FULL_3               [format 0x%-8X [expr 0x80+$offset]] RW    [7:1]"
  puts "TX_MARGIN_FULL_4               [format 0x%-8X [expr 0x81+$offset]] RW    [15:9]"
  puts "TX_MARGIN_LOW_0                [format 0x%-8X [expr 0x81+$offset]] RW    [7:1]"
  puts "TX_MARGIN_LOW_1                [format 0x%-8X [expr 0x82+$offset]] RW    [15:9]"
  puts "TX_MARGIN_LOW_2                [format 0x%-8X [expr 0x82+$offset]] RW    [7:1]"
  puts "TX_MARGIN_LOW_3                [format 0x%-8X [expr 0x83+$offset]] RW    [15:9]"
  puts "TX_MARGIN_LOW_4                [format 0x%-8X [expr 0x83+$offset]] RW    [7:1]"
  puts "RXDFE_H3_CFG0                  [format 0x%-8X [expr 0x84+$offset]] RW    [15:0]"
  puts "TX_INT_DATAWIDTH               [format 0x%-8X [expr 0x85+$offset]] RW    [10:10]"
  puts "RXPRBS_LINKACQ_CNT             [format 0x%-8X [expr 0x89+$offset]] RW    [7:0]"
  puts "TX_PMADATA_OPT                 [format 0x%-8X [expr 0x8a+$offset]] RW    [15:15]"
  puts "RXSYNC_OVRD                    [format 0x%-8X [expr 0x8a+$offset]] RW    [14:14]"
  puts "TXSYNC_OVRD                    [format 0x%-8X [expr 0x8a+$offset]] RW    [13:13]"
  puts "TX_IDLE_DATA_ZERO              [format 0x%-8X [expr 0x8a+$offset]] RW    [12:12]"
  puts "A_RXOSCALRESET                 [format 0x%-8X [expr 0x8a+$offset]] RW    [11:11]"
  puts "RXOOB_CLK_CFG                  [format 0x%-8X [expr 0x8a+$offset]] RW    [10:10]"
  puts "TXSYNC_SKIP_DA                 [format 0x%-8X [expr 0x8a+$offset]] RW    [9:9]"
  puts "RXSYNC_SKIP_DA                 [format 0x%-8X [expr 0x8a+$offset]] RW    [8:8]"
  puts "RXOSCALRESET_TIME              [format 0x%-8X [expr 0x8a+$offset]] RW    [4:0]"
  puts "TXSYNC_MULTILANE               [format 0x%-8X [expr 0x8b+$offset]] RW    [10:10]"
  puts "RXSYNC_MULTILANE               [format 0x%-8X [expr 0x8b+$offset]] RW    [9:9]"
  puts "ACJTAG_MODE                    [format 0x%-8X [expr 0x8c+$offset]] RW    [15:15]"
  puts "ACJTAG_DEBUG_MODE              [format 0x%-8X [expr 0x8c+$offset]] RW    [14:14]"
  puts "ACJTAG_RESET                   [format 0x%-8X [expr 0x8c+$offset]] RW    [13:13]"
  puts "RX_SUM_VCM_BIAS_TUNE_EN        [format 0x%-8X [expr 0x8c+$offset]] RW    [12:12]"
  puts "RX_TUNE_AFE_OS                 [format 0x%-8X [expr 0x8c+$offset]] RW    [10:10]"
  puts "RX_DFE_KL_LPM_KL_CFG0          [format 0x%-8X [expr 0x8c+$offset]] RW    [8:8]"
  puts "RX_DFE_KL_LPM_KL_CFG1          [format 0x%-8X [expr 0x8c+$offset]] RW    [7:5]"
  puts "RX_SUM_DEGEN_AVTT_OVERITE      [format 0x%-8X [expr 0x8c+$offset]] RW    [4:4]"
  puts "RX_SUM_PWR_SAVING              [format 0x%-8X [expr 0x8c+$offset]] RW    [3:3]"
  puts "RX_EN_SUM_RCAL_B               [format 0x%-8X [expr 0x8c+$offset]] RW    [2:2]"
  puts "RXDFELPM_KL_CFG2               [format 0x%-8X [expr 0x8d+$offset]] RW    [15:0]"
  puts "TXDLY_CFG                      [format 0x%-8X [expr 0x8e+$offset]] RW    [15:0]"
  puts "TXPH_CFG                       [format 0x%-8X [expr 0x8f+$offset]] RW    [15:0]"
  puts "TXPHDLY_CFG0                   [format 0x%-8X [expr 0x90+$offset]] RW    [15:0]"
  puts "ADAPT_CFG0                     [format 0x%-8X [expr 0x91+$offset]] RW    [15:0]"
  puts "ADAPT_CFG1                     [format 0x%-8X [expr 0x92+$offset]] RW    [15:0]"
  puts "RXCFOK_CFG0                    [format 0x%-8X [expr 0x93+$offset]] RW    [15:0]"
  puts "ES_CLK_PHASE_SEL               [format 0x%-8X [expr 0x94+$offset]] RW    [11:11]"
  puts "USE_PCS_CLK_PHASE_SEL          [format 0x%-8X [expr 0x94+$offset]] RW    [10:10]"
  puts "SAMPLE_CLK_PHASE               [format 0x%-8X [expr 0x94+$offset]] RW    [9:9]"
  puts "TX_PMA_RSV0                    [format 0x%-8X [expr 0x95+$offset]] RW    [15:0]"
  puts "RX_AFE_CM_EN                   [format 0x%-8X [expr 0x97+$offset]] RW    [12:12]"
  puts "RX_CAPFF_SARC_ENB              [format 0x%-8X [expr 0x97+$offset]] RW    [11:11]"
  puts "RX_EYESCAN_VS_NEG_DIR          [format 0x%-8X [expr 0x97+$offset]] RW    [10:10]"
  puts "RX_EYESCAN_VS_UT_SIGN          [format 0x%-8X [expr 0x97+$offset]] RW    [9:9]"
  puts "RX_EYESCAN_VS_CODE             [format 0x%-8X [expr 0x97+$offset]] RW    [8:2]"
  puts "RX_EYESCAN_VS_RANGE            [format 0x%-8X [expr 0x97+$offset]] RW    [0:0]"
  puts "RXDFE_H5_CFG1                  [format 0x%-8X [expr 0x98+$offset]] RW    [15:0]"
  puts "GEARBOX_MODE                   [format 0x%-8X [expr 0x99+$offset]] RW    [15:11]"
  puts "TXPI_SYNFREQ_PPM               [format 0x%-8X [expr 0x99+$offset]] RW    [10:8]"
  puts "TXPI_INVSTROBE_SEL             [format 0x%-8X [expr 0x99+$offset]] RW    [6:6]"
  puts "TXPI_GRAY_SEL                  [format 0x%-8X [expr 0x99+$offset]] RW    [5:5]"
  puts "TXPI_PPM_CFG                   [format 0x%-8X [expr 0x9a+$offset]] RW    [7:0]"
  puts "RX_DFELPM_KLKH_AGC_STUP_EN     [format 0x%-8X [expr 0x9b+$offset]] RW    [15:15]"
  puts "RX_DFELPM_CFG0                 [format 0x%-8X [expr 0x9b+$offset]] RW    [14:11]"
  puts "RX_DFELPM_CFG1                 [format 0x%-8X [expr 0x9b+$offset]] RW    [10:10]"
  puts "RX_DFE_KL_LPM_KH_CFG0          [format 0x%-8X [expr 0x9b+$offset]] RW    [8:8]"
  puts "RX_DFE_KL_LPM_KH_CFG1          [format 0x%-8X [expr 0x9b+$offset]] RW    [7:5]"
  puts "TXFE_CFG0                      [format 0x%-8X [expr 0x9d+$offset]] RW    [15:0]"
  puts "RXDFE_UT_CFG0                  [format 0x%-8X [expr 0x9e+$offset]] RW    [15:0]"
  puts "CPLL_CFG0                      [format 0x%-8X [expr 0x9f+$offset]] RW    [15:0]"
  puts "CPLL_CFG1                      [format 0x%-8X [expr 0xa0+$offset]] RW    [15:0]"
  puts "TXFE_CFG1                      [format 0x%-8X [expr 0xa1+$offset]] RW    [15:0]"
  puts "RXCDR_CFG0_GEN3                [format 0x%-8X [expr 0xa2+$offset]] RW    [15:0]"
  puts "RXCDR_CFG1_GEN3                [format 0x%-8X [expr 0xa3+$offset]] RW    [15:0]"
  puts "RXCDR_CFG2_GEN3                [format 0x%-8X [expr 0xa4+$offset]] RW    [15:0]"
  puts "RXCDR_CFG3_GEN3                [format 0x%-8X [expr 0xa5+$offset]] RW    [15:0]"
  puts "RXCDR_CFG4_GEN3                [format 0x%-8X [expr 0xa6+$offset]] RW    [15:0]"
  puts "TXPI_CFG0                      [format 0x%-8X [expr 0xa7+$offset]] RW    [15:0]"
  puts "TXPI_CFG1                      [format 0x%-8X [expr 0xa8+$offset]] RW    [15:0]"
  puts "PCIE_RXPMA_CFG                 [format 0x%-8X [expr 0xa9+$offset]] RW    [15:0]"
  puts "PCIE_TXPCS_CFG_GEN3            [format 0x%-8X [expr 0xaa+$offset]] RW    [15:0]"
  puts "PCIE_TXPMA_CFG                 [format 0x%-8X [expr 0xab+$offset]] RW    [15:0]"
  puts "RX_CLK_SLIP_OVRD               [format 0x%-8X [expr 0xac+$offset]] RW    [7:3]"
  puts "TXPI_PPM                       [format 0x%-8X [expr 0xac+$offset]] RW    [0:0]"
  puts "PCIE_PLL_SEL_MODE_GEN4         [format 0x%-8X [expr 0xad+$offset]] RW    [13:13]"
  puts "PCIE_PLL_SEL_MODE_GEN3         [format 0x%-8X [expr 0xad+$offset]] RW    [11:11]"
  puts "PCIE_PLL_SEL_MODE_GEN12        [format 0x%-8X [expr 0xad+$offset]] RW    [9:9]"
  puts "RATE_SW_USE_DRP                [format 0x%-8X [expr 0xad+$offset]] RW    [8:8]"
  puts "RXDFE_HD_CFG1                  [format 0x%-8X [expr 0xae+$offset]] RW    [15:0]"
  puts "RXCDR_CFG5_GEN3                [format 0x%-8X [expr 0xaf+$offset]] RW    [15:0]"
  puts "RXDFE_KH_CFG3                  [format 0x%-8X [expr 0xb0+$offset]] RW    [15:0]"
  puts "RXDFE_KH_CFG2                  [format 0x%-8X [expr 0xb1+$offset]] RW    [15:0]"
  puts "RXDFE_KH_CFG1                  [format 0x%-8X [expr 0xb2+$offset]] RW    [15:0]"
  puts "RXDFE_H5_CFG0                  [format 0x%-8X [expr 0xb3+$offset]] RW    [15:0]"
  puts "RXCDR_CFG5                     [format 0x%-8X [expr 0xb4+$offset]] RW    [15:0]"
  puts "RXDFE_HE_CFG1                  [format 0x%-8X [expr 0xb5+$offset]] RW    [15:0]"
  puts "CPLL_CFG3                      [format 0x%-8X [expr 0xb6+$offset]] RW    [15:0]"
  puts "RXDFE_H6_CFG0                  [format 0x%-8X [expr 0xb7+$offset]] RW    [15:0]"
  puts "RXDFE_H6_CFG1                  [format 0x%-8X [expr 0xb8+$offset]] RW    [15:0]"
  puts "RXDFE_H7_CFG0                  [format 0x%-8X [expr 0xb9+$offset]] RW    [15:0]"
  puts "DDI_REALIGN_WAIT               [format 0x%-8X [expr 0xba+$offset]] RW    [6:2]"
  puts "DDI_CTRL                       [format 0x%-8X [expr 0xba+$offset]] RW    [0:0]"
  puts "TXGBOX_FIFO_INIT_RD_ADDR       [format 0x%-8X [expr 0xbb+$offset]] RW    [11:9]"
  puts "TX_SAMPLE_PERIOD               [format 0x%-8X [expr 0xbb+$offset]] RW    [8:6]"
  puts "RXGBOX_FIFO_INIT_RD_ADDR       [format 0x%-8X [expr 0xbb+$offset]] RW    [5:3]"
  puts "RX_SAMPLE_PERIOD               [format 0x%-8X [expr 0xbb+$offset]] RW    [2:0]"
  puts "CPLL_CFG2                      [format 0x%-8X [expr 0xbc+$offset]] RW    [15:0]"
  puts "RXPHSAMP_CFG                   [format 0x%-8X [expr 0xbd+$offset]] RW    [15:0]"
  puts "RXPHSLIP_CFG                   [format 0x%-8X [expr 0xbe+$offset]] RW    [15:0]"
  puts "RXPHBEACON_CFG                 [format 0x%-8X [expr 0xbf+$offset]] RW    [15:0]"
  puts "RXDFE_H7_CFG1                  [format 0x%-8X [expr 0xc0+$offset]] RW    [15:0]"
  puts "RXDFE_H8_CFG0                  [format 0x%-8X [expr 0xc1+$offset]] RW    [15:0]"
  puts "RXDFE_H8_CFG1                  [format 0x%-8X [expr 0xc2+$offset]] RW    [15:0]"
  puts "PCIE_BUFG_DIV_CTRL             [format 0x%-8X [expr 0xc3+$offset]] RW    [15:0]"
  puts "PCIE_RXPCS_CFG_GEN3            [format 0x%-8X [expr 0xc4+$offset]] RW    [15:0]"
  puts "RXDFE_H9_CFG0                  [format 0x%-8X [expr 0xc5+$offset]] RW    [15:0]"
  puts "RX_PROGDIV_CFG                 [format 0x%-8X [expr 0xc6+$offset]] RW    [15:0]"
  puts "RXDFE_H9_CFG1                  [format 0x%-8X [expr 0xc7+$offset]] RW    [15:0]"
  puts "RXDFE_HA_CFG0                  [format 0x%-8X [expr 0xc8+$offset]] RW    [15:0]"
  puts "CHAN_BOND_SEQ_1_2              [format 0x%-8X [expr 0xca+$offset]] RW    [9:0]"
  puts "RXDFE_GC_CFG0                  [format 0x%-8X [expr 0xcb+$offset]] RW    [15:0]"
  puts "RXDFE_GC_CFG1                  [format 0x%-8X [expr 0xcc+$offset]] RW    [15:0]"
  puts "RX_DDI_SEL                     [format 0x%-8X [expr 0xcd+$offset]] RW    [7:2]"
  puts "DEC_VALID_COMMA_ONLY           [format 0x%-8X [expr 0xcd+$offset]] RW    [1:1]"
  puts "DEC_MCOMMA_DETECT              [format 0x%-8X [expr 0xcd+$offset]] RW    [0:0]"
  puts "RXDFE_CFG0                     [format 0x%-8X [expr 0xce+$offset]] RW    [15:0]"
  puts "RXDFE_CFG1                     [format 0x%-8X [expr 0xcf+$offset]] RW    [15:0]"
  puts "RX_RESLOAD_OVRD                [format 0x%-8X [expr 0xd0+$offset]] RW    [8:8]"
  puts "RX_CTLE_PWR_SAVING             [format 0x%-8X [expr 0xd0+$offset]] RW    [7:7]"
  puts "RX_DEGEN_CTRL                  [format 0x%-8X [expr 0xd0+$offset]] RW    [6:4]"
  puts "RX_RESLOAD_CTRL                [format 0x%-8X [expr 0xd0+$offset]] RW    [3:0]"
  puts "RX_EN_CTLE_RCAL_B              [format 0x%-8X [expr 0xd1+$offset]] RW    [12:12]"
  puts "RX_CTLE_RES_CTRL               [format 0x%-8X [expr 0xd1+$offset]] RW    [11:8]"
  puts "RX_SUM_RES_CTRL                [format 0x%-8X [expr 0xd1+$offset]] RW    [3:0]"
  puts "RXPI_CFG1                      [format 0x%-8X [expr 0xd2+$offset]] RW    [15:0]"
  puts "LPBK_EN_RCAL_B                 [format 0x%-8X [expr 0xd3+$offset]] RW    [13:13]"
  puts "LPBK_IND_CTRL2                 [format 0x%-8X [expr 0xd3+$offset]] RW    [7:5]"
  puts "LPBK_BIAS_CTRL                 [format 0x%-8X [expr 0xd3+$offset]] RW    [4:2]"
  puts "RX_XMODE_SEL                   [format 0x%-8X [expr 0xd3+$offset]] RW    [1:1]"
  puts "ISCAN_CK_PH_SEL2               [format 0x%-8X [expr 0xd3+$offset]] RW    [0:0]"
  puts "LPBK_IND_CTRL1                 [format 0x%-8X [expr 0xd4+$offset]] RW    [13:11]"
  puts "LPBK_RG_CTRL                   [format 0x%-8X [expr 0xd4+$offset]] RW    [10:7]"
  puts "LPBK_IND_CTRL0                 [format 0x%-8X [expr 0xd4+$offset]] RW    [2:0]"
  puts "CKCAL1_CFG_3                   [format 0x%-8X [expr 0xd5+$offset]] RW    [15:0]"
  puts "CKCAL1_DCC_PWRDN               [format 0x%-8X [expr 0xd5+$offset]] RW    [1:1]"
  puts "CKCAL1_IQ_PWRDN                [format 0x%-8X [expr 0xd5+$offset]] RW    [0:0]"
  puts "CKCAL2_CFG_3                   [format 0x%-8X [expr 0xd6+$offset]] RW    [15:0]"
  puts "CKCAL2_CFG_4                   [format 0x%-8X [expr 0xd7+$offset]] RW    [15:0]"
  puts "RX_PMA_RSV0                    [format 0x%-8X [expr 0xd8+$offset]] RW    [15:0]"
  puts "CKCAL2_CFG_2                   [format 0x%-8X [expr 0xd9+$offset]] RW    [15:0]"
  puts "RXCDR_LOCK_CFG2                [format 0x%-8X [expr 0xda+$offset]] RW    [15:0]"
  puts "CKCAL1_CFG_2                   [format 0x%-8X [expr 0xdb+$offset]] RW    [15:0]"
  puts "RTX_BUF_TERM_CTRL              [format 0x%-8X [expr 0xdd+$offset]] RW    [3:3]"
  puts "RTX_BUF_CML_CTRL               [format 0x%-8X [expr 0xdd+$offset]] RW    [2:0]"
  puts "TXPH_CFG2                      [format 0x%-8X [expr 0xde+$offset]] RW    [15:0]"
  puts "RXCDR_LOCK_CFG4                [format 0x%-8X [expr 0xdf+$offset]] RW    [15:0]"
  puts "CTLE3_OCAP_EXT_CTRL            [format 0x%-8X [expr 0xe0+$offset]] RW    [8:6]"
  puts "CTLE3_OCAP_EXT_EN              [format 0x%-8X [expr 0xe0+$offset]] RW    [5:5]"
  puts "TX_VREG_VREFSEL                [format 0x%-8X [expr 0xe2+$offset]] RW    [12:12]"
  puts "TX_VREG_CTRL                   [format 0x%-8X [expr 0xe2+$offset]] RW    [11:9]"
  puts "TX_VREG_PDB                    [format 0x%-8X [expr 0xe2+$offset]] RW    [8:8]"
  puts "ES_QUALIFIER5                  [format 0x%-8X [expr 0xe7+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER6                  [format 0x%-8X [expr 0xe8+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER7                  [format 0x%-8X [expr 0xe9+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER8                  [format 0x%-8X [expr 0xea+$offset]] RW    [15:0]"
  puts "ES_QUALIFIER9                  [format 0x%-8X [expr 0xeb+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK5                  [format 0x%-8X [expr 0xec+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK6                  [format 0x%-8X [expr 0xed+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK7                  [format 0x%-8X [expr 0xee+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK8                  [format 0x%-8X [expr 0xef+$offset]] RW    [15:0]"
  puts "ES_QUAL_MASK9                  [format 0x%-8X [expr 0xf0+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK5                 [format 0x%-8X [expr 0xf1+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK6                 [format 0x%-8X [expr 0xf2+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK7                 [format 0x%-8X [expr 0xf3+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK8                 [format 0x%-8X [expr 0xf4+$offset]] RW    [15:0]"
  puts "ES_SDATA_MASK9                 [format 0x%-8X [expr 0xf5+$offset]] RW    [15:0]"
  puts "TX_PMA_RSV1                    [format 0x%-8X [expr 0xf6+$offset]] RW    [15:0]"
  puts "CKCAL1_CFG_0                   [format 0x%-8X [expr 0xf7+$offset]] RW    [15:0]"
  puts "CKCAL1_CFG_1                   [format 0x%-8X [expr 0xf8+$offset]] RW    [15:0]"
  puts "CKCAL2_CFG_0                   [format 0x%-8X [expr 0xf9+$offset]] RW    [15:0]"
  puts "TXSWBST_MAG                    [format 0x%-8X [expr 0xfa+$offset]] RW    [15:13]"
  puts "TXDRV_FREQBAND                 [format 0x%-8X [expr 0xfa+$offset]] RW    [9:9]"
  puts "TXSWBST_BST                    [format 0x%-8X [expr 0xfa+$offset]] RW    [7:7]"
  puts "TXSWBST_EN                     [format 0x%-8X [expr 0xfa+$offset]] RW    [6:6]"
  puts "RX_VREG_CTRL                   [format 0x%-8X [expr 0xfa+$offset]] RW    [3:1]"
  puts "RX_VREG_PDB                    [format 0x%-8X [expr 0xfa+$offset]] RW    [0:0]"
  puts "LPBK_EXT_RCAL                  [format 0x%-8X [expr 0xfb+$offset]] RW    [9:6]"
  puts "PREIQ_FREQ_BST                 [format 0x%-8X [expr 0xfb+$offset]] RW    [4:4]"
  puts "TX_PI_BIASSET                  [format 0x%-8X [expr 0xfb+$offset]] RW    [1:1]"
  puts "TX_PHICAL_CFG0                 [format 0x%-8X [expr 0xfc+$offset]] RW    [15:0]"
  puts "TX_PHICAL_CFG1                 [format 0x%-8X [expr 0xfd+$offset]] RW    [15:0]"
  puts "RXCDR_LOCK_CFG3                [format 0x%-8X [expr 0xfe+$offset]] RW    [15:0]"
  puts "RXDFE_UT_CFG2                  [format 0x%-8X [expr 0x100+$offset]] RW    [15:0]"
  puts "CKCAL2_CFG_1                   [format 0x%-8X [expr 0x101+$offset]] RW    [15:0]"
  puts "Y_ALL_MODE                     [format 0x%-8X [expr 0x102+$offset]] RW    [2:2]"
  puts "RCLK_SIPO_DLY_ENB              [format 0x%-8X [expr 0x102+$offset]] RW    [1:1]"
  puts "RCLK_SIPO_INV_EN               [format 0x%-8X [expr 0x102+$offset]] RW    [0:0]"
  puts "RX_PROGDIV_RATE                [format 0x%-8X [expr 0x103+$offset]] RW    [15:0]"
  puts "RXDFE_HF_CFG1                  [format 0x%-8X [expr 0x104+$offset]] RW    [15:0]"
  puts "TX_PROGDIV_RATE                [format 0x%-8X [expr 0x105+$offset]] RW    [15:0]"
  puts "TX_DCC_LOOP_RST_CFG            [format 0x%-8X [expr 0x106+$offset]] RW    [15:0]"
  puts "RXDFE_HC_CFG0                  [format 0x%-8X [expr 0x107+$offset]] RW    [15:0]"
  puts "RXCKCAL1_I_LOOP_RST_CFG        [format 0x%-8X [expr 0x108+$offset]] RW    [15:0]"
  puts "RXCKCAL1_Q_LOOP_RST_CFG        [format 0x%-8X [expr 0x109+$offset]] RW    [15:0]"
  puts "RXCKCAL1_IQ_LOOP_RST_CFG       [format 0x%-8X [expr 0x10a+$offset]] RW    [15:0]"
  puts "RXCKCAL2_D_LOOP_RST_CFG        [format 0x%-8X [expr 0x10b+$offset]] RW    [15:0]"
  puts "RXCKCAL2_X_LOOP_RST_CFG        [format 0x%-8X [expr 0x10c+$offset]] RW    [15:0]"
  puts "RXCKCAL2_S_LOOP_RST_CFG        [format 0x%-8X [expr 0x10d+$offset]] RW    [15:0]"
  puts "RXCKCAL2_DX_LOOP_RST_CFG       [format 0x%-8X [expr 0x10e+$offset]] RW    [15:0]"
  puts "RXDFE_KH_CFG0                  [format 0x%-8X [expr 0x110+$offset]] RW    [15:0]"
  puts "RXDFE_H4_CFG1                  [format 0x%-8X [expr 0x111+$offset]] RW    [15:0]"
  puts "RXDFE_H4_CFG0                  [format 0x%-8X [expr 0x112+$offset]] RW    [15:0]"
  puts "RXDFE_H3_CFG1                  [format 0x%-8X [expr 0x113+$offset]] RW    [15:0]"
  puts "CH_HSPMUX                      [format 0x%-8X [expr 0x116+$offset]] RW    [15:0]"
  puts "PCIE3_CLK_COR_MIN_LAT          [format 0x%-8X [expr 0x117+$offset]] RW    [15:11]"
  puts "PCIE3_CLK_COR_MAX_LAT          [format 0x%-8X [expr 0x117+$offset]] RW    [10:6]"
  puts "PCIE3_CLK_COR_THRSH_TIMER      [format 0x%-8X [expr 0x117+$offset]] RW    [5:0]"
  puts "USB_MODE                       [format 0x%-8X [expr 0x118+$offset]] RW    [15:15]"
  puts "USB_EXT_CNTL                   [format 0x%-8X [expr 0x118+$offset]] RW    [14:14]"
  puts "USB_CLK_COR_EQ_EN              [format 0x%-8X [expr 0x118+$offset]] RW    [13:13]"
  puts "USB_PCIE_ERR_REP_DIS           [format 0x%-8X [expr 0x118+$offset]] RW    [12:12]"
  puts "PCIE3_CLK_COR_FULL_THRSH       [format 0x%-8X [expr 0x118+$offset]] RW    [11:6]"
  puts "PCIE3_CLK_COR_EMPTY_THRSH      [format 0x%-8X [expr 0x118+$offset]] RW    [4:0]"
  puts "USB_RAW_ELEC                   [format 0x%-8X [expr 0x119+$offset]] RW    [15:15]"
  puts "DELAY_ELEC                     [format 0x%-8X [expr 0x119+$offset]] RW    [14:14]"
  puts "USB_BOTH_BURST_IDLE            [format 0x%-8X [expr 0x119+$offset]] RW    [13:13]"
  puts "TXREFCLKDIV2_SEL               [format 0x%-8X [expr 0x119+$offset]] RW    [12:12]"
  puts "TX_DEEMPH2                     [format 0x%-8X [expr 0x119+$offset]] RW    [11:6]"
  puts "TX_DEEMPH3                     [format 0x%-8X [expr 0x119+$offset]] RW    [5:0]"
  puts "RXREFCLKDIV2_SEL               [format 0x%-8X [expr 0x11a+$offset]] RW    [6:6]"
  puts "A_RXTERMINATION                [format 0x%-8X [expr 0x11a+$offset]] RW    [5:5]"
  puts "USB_LFPS_TPERIOD               [format 0x%-8X [expr 0x11a+$offset]] RW    [4:1]"
  puts "USB_LFPS_TPERIOD_ACCURATE      [format 0x%-8X [expr 0x11a+$offset]] RW    [0:0]"
  puts "RXCDR_CFG2_GEN4                [format 0x%-8X [expr 0x11b+$offset]] RW    [15:0]"
  puts "RXCDR_CFG3_GEN4                [format 0x%-8X [expr 0x11c+$offset]] RW    [15:0]"
  puts "USB_BURSTMIN_U3WAKE            [format 0x%-8X [expr 0x11d+$offset]] RW    [14:8]"
  puts "USB_BURSTMAX_U3WAKE            [format 0x%-8X [expr 0x11d+$offset]] RW    [6:0]"
  puts "USB_IDLEMIN_POLLING            [format 0x%-8X [expr 0x11e+$offset]] RW    [9:0]"
  puts "USB_IDLEMAX_POLLING            [format 0x%-8X [expr 0x11f+$offset]] RW    [9:0]"
  puts "USB_LFPSPOLLING_BURST          [format 0x%-8X [expr 0x120+$offset]] RW    [8:0]"
  puts "USB_LFPSPING_BURST             [format 0x%-8X [expr 0x121+$offset]] RW    [8:0]"
  puts "USB_LFPSU1EXIT_BURST           [format 0x%-8X [expr 0x122+$offset]] RW    [8:0]"
  puts "USB_LFPSU2LPEXIT_BURST_MS      [format 0x%-8X [expr 0x123+$offset]] RW    [8:0]"
  puts "USB_LFPSU3WAKE_BURST_MS        [format 0x%-8X [expr 0x124+$offset]] RW    [8:0]"
  puts "USB_LFPSPOLLING_IDLE_MS        [format 0x%-8X [expr 0x125+$offset]] RW    [8:0]"
  puts "RXDFE_HA_CFG1                  [format 0x%-8X [expr 0x126+$offset]] RW    [15:0]"
  puts "RXDFE_HB_CFG0                  [format 0x%-8X [expr 0x127+$offset]] RW    [15:0]"
  puts "RXCDR_CFG3_GEN2                [format 0x%-8X [expr 0x135+$offset]] RW    [15:10]"
  puts "RXCDR_CFG2_GEN2                [format 0x%-8X [expr 0x135+$offset]] RW    [9:0]"
  puts "COMMA_ALIGN_LATENCY            [format 0x%-8X [expr 0x250+$offset]] RO    [6:0]"
  puts "es_error_count                 [format 0x%-8X [expr 0x251+$offset]] RO    [15:0]"
  puts "es_sample_count                [format 0x%-8X [expr 0x252+$offset]] RO    [15:0]"
  puts "es_control_status              [format 0x%-8X [expr 0x253+$offset]] RO    [3:0]"
  puts "es_rdata_byte4                 [format 0x%-8X [expr 0x254+$offset]] RO    [15:0]"
  puts "es_rdata_byte3                 [format 0x%-8X [expr 0x255+$offset]] RO    [15:0]"
  puts "es_rdata_byte2                 [format 0x%-8X [expr 0x256+$offset]] RO    [15:0]"
  puts "es_rdata_byte1                 [format 0x%-8X [expr 0x257+$offset]] RO    [15:0]"
  puts "es_rdata_byte0                 [format 0x%-8X [expr 0x258+$offset]] RO    [15:0]"
  puts "es_sdata_byte4                 [format 0x%-8X [expr 0x259+$offset]] RO    [15:0]"
  puts "es_sdata_byte3                 [format 0x%-8X [expr 0x25a+$offset]] RO    [15:0]"
  puts "es_sdata_byte2                 [format 0x%-8X [expr 0x25b+$offset]] RO    [15:0]"
  puts "es_sdata_byte1                 [format 0x%-8X [expr 0x25c+$offset]] RO    [15:0]"
  puts "es_sdata_byte0                 [format 0x%-8X [expr 0x25d+$offset]] RO    [15:0]"
  puts "RX_PRBS_ERR_CNT                [format 0x%-8X [expr 0x25e+$offset]] RO    [15:0]"
  puts "RX_PRBS_ERR_CNT                [format 0x%-8X [expr 0x25f+$offset]] RO    [15:0]"
  puts "TXGBOX_FIFO_LATENCY            [format 0x%-8X [expr 0x263+$offset]] RO    [15:0]"
  puts "RXGBOX_FIFO_LATENCY            [format 0x%-8X [expr 0x269+$offset]] RO    [15:0]"
  puts "es_sdata_byte5                 [format 0x%-8X [expr 0x283+$offset]] RO    [15:0]"
  puts "es_sdata_byte6                 [format 0x%-8X [expr 0x284+$offset]] RO    [15:0]"
  puts "es_sdata_byte7                 [format 0x%-8X [expr 0x285+$offset]] RO    [15:0]"
  puts "es_sdata_byte8                 [format 0x%-8X [expr 0x286+$offset]] RO    [15:0]"
  puts "es_sdata_byte9                 [format 0x%-8X [expr 0x287+$offset]] RO    [15:0]"
  puts "es_rdata_byte5                 [format 0x%-8X [expr 0x288+$offset]] RO    [15:0]"
  puts "es_rdata_byte6                 [format 0x%-8X [expr 0x289+$offset]] RO    [15:0]"
  puts "es_rdata_byte7                 [format 0x%-8X [expr 0x28a+$offset]] RO    [15:0]"
  puts "es_rdata_byte8                 [format 0x%-8X [expr 0x28b+$offset]] RO    [15:0]"
  puts "es_rdata_byte9                 [format 0x%-8X [expr 0x28c+$offset]] RO    [15:0]"
}

proc dump_gty_channel_api {} {
  global offset
  puts "CDR_SWAP_MODE_EN               [format 0x%-8X [expr 0x2+$offset]] RW    [0:0]      [CDR_SWAP_MODE_EN]"
  puts "RXBUFRESET_TIME                [format 0x%-8X [expr 0x3+$offset]] RW    [15:11]    [RXBUFRESET_TIME]"
  puts "CFOK_PWRSVE_EN                 [format 0x%-8X [expr 0x3+$offset]] RW    [10:10]    [CFOK_PWRSVE_EN]"
  puts "EYE_SCAN_SWAP_EN               [format 0x%-8X [expr 0x3+$offset]] RW    [9:9]      [EYE_SCAN_SWAP_EN]"
  puts "RX_DATA_WIDTH                  [format 0x%-8X [expr 0x3+$offset]] RW    [8:5]      [RX_DATA_WIDTH]"
  puts "RXCDRFREQRESET_TIME            [format 0x%-8X [expr 0x3+$offset]] RW    [4:0]      [RXCDRFREQRESET_TIME]"
  puts "RXCDRPHRESET_TIME              [format 0x%-8X [expr 0x4+$offset]] RW    [15:11]    [RXCDRPHRESET_TIME]"
  puts "PCI3_RX_ELECIDLE_H2L_DISABLE   [format 0x%-8X [expr 0x4+$offset]] RW    [10:8]     [PCI3_RX_ELECIDLE_H2L_DISABLE]"
  puts "RXDFELPMRESET_TIME             [format 0x%-8X [expr 0x4+$offset]] RW    [7:1]      [RXDFELPMRESET_TIME]"
  puts "RX_FABINT_USRCLK_FLOP          [format 0x%-8X [expr 0x4+$offset]] RW    [0:0]      [RX_FABINT_USRCLK_FLOP]"
  puts "RXPMARESET_TIME                [format 0x%-8X [expr 0x5+$offset]] RW    [15:11]    [RXPMARESET_TIME]"
  puts "PCI3_RX_ELECIDLE_LP4_DISABLE   [format 0x%-8X [expr 0x5+$offset]] RW    [10:10]    [PCI3_RX_ELECIDLE_LP4_DISABLE]"
  puts "PCI3_RX_FIFO_DISABLE           [format 0x%-8X [expr 0x5+$offset]] RW    [8:8]      [PCI3_RX_FIFO_DISABLE]"
  puts "PCI3_RX_ELECIDLE_EI2_ENABLE    [format 0x%-8X [expr 0x5+$offset]] RW    [9:9]      [PCI3_RX_ELECIDLE_EI2_ENABLE]"
  puts "RXPCSRESET_TIME                [format 0x%-8X [expr 0x5+$offset]] RW    [7:3]      [RXPCSRESET_TIME]"
  puts "RXELECIDLE_CFG                 [format 0x%-8X [expr 0x5+$offset]] RW    [2:0]      [RXELECIDLE_CFG]"
  puts "RXDFE_HB_CFG1                  [format 0x%-8X [expr 0x6+$offset]] RW    [15:0]     [RXDFE_HB_CFG1]"
  puts "TXPMARESET_TIME                [format 0x%-8X [expr 0x9+$offset]] RW    [15:11]    [TXPMARESET_TIME]"
  puts "TXPCSRESET_TIME                [format 0x%-8X [expr 0x9+$offset]] RW    [7:3]      [TXPCSRESET_TIME]"
  puts "RX_PMA_POWER_SAVE              [format 0x%-8X [expr 0x9+$offset]] RW    [10:10]    [RX_PMA_POWER_SAVE]"
  puts "TX_PMA_POWER_SAVE              [format 0x%-8X [expr 0x9+$offset]] RW    [9:9]      [TX_PMA_POWER_SAVE]"
  puts "SRSTMODE                       [format 0x%-8X [expr 0x9+$offset]] RW    [8:8]      [SRSTMODE]"
  puts "TX_FIFO_BYP_EN                 [format 0x%-8X [expr 0xa+$offset]] RW    [3:3]      [TX_FIFO_BYP_EN]"
  puts "TX_FABINT_USRCLK_FLOP          [format 0x%-8X [expr 0xb+$offset]] RW    [4:4]      [TX_FABINT_USRCLK_FLOP]"
  puts "RXPMACLK_SEL                   [format 0x%-8X [expr 0xb+$offset]] RW    [8:8]      [RXPMACLK_SEL]"
  puts "TX_PROGCLK_SEL                 [format 0x%-8X [expr 0xc+$offset]] RW    [10:10]    [TX_PROGCLK_SEL]"
  puts "RXISCANRESET_TIME              [format 0x%-8X [expr 0xc+$offset]] RW    [9:5]      [RXISCANRESET_TIME]"
  puts "TXAMONSEL                      [format 0x%-8X [expr 0xd+$offset]] RW    [7:2]      [TXAMONSEL]"
  puts "BLOCKSEL                       [format 0x%-8X [expr 0xd+$offset]] RW    [0:0]      [BLOCKSEL]"
  puts "RXCDR_CFG0                     [format 0x%-8X [expr 0xe+$offset]] RW    [15:0]     [RXCDR_CFG0]"
  puts "RXCDR_CFG1                     [format 0x%-8X [expr 0xf+$offset]] RW    [15:0]     [RXCDR_CFG1]"
  puts "RXCDR_CFG2                     [format 0x%-8X [expr 0x10+$offset]] RW    [15:0]     [RXCDR_CFG2]"
  puts "RXCDR_CFG3                     [format 0x%-8X [expr 0x11+$offset]] RW    [15:0]     [RXCDR_CFG3]"
  puts "SELCKOK                        [format 0x%-8X [expr 0x11+$offset]] RW    [7:7]      [SELCKOK]"
  puts "RXCDR_CFG4                     [format 0x%-8X [expr 0x12+$offset]] RW    [15:0]     [RXCDR_CFG4]"
  puts "CPLL_LOCK_CFG                  [format 0x%-8X [expr 0x13+$offset]] RW    [15:0]     [CPLL_LOCK_CFG]"
  puts "CHAN_BOND_MAX_SKEW             [format 0x%-8X [expr 0x14+$offset]] RW    [15:12]    [CHAN_BOND_MAX_SKEW]"
  puts "CHAN_BOND_SEQ_LEN              [format 0x%-8X [expr 0x14+$offset]] RW    [10:10]    [CHAN_BOND_SEQ_LEN]"
  puts "CHAN_BOND_SEQ_1_1              [format 0x%-8X [expr 0x14+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_1_1]"
  puts "PCI3_RX_ELECIDLE_HI_COUNT      [format 0x%-8X [expr 0x15+$offset]] RW    [15:10]    [PCI3_RX_ELECIDLE_HI_COUNT]"
  puts "CHAN_BOND_SEQ_1_3              [format 0x%-8X [expr 0x15+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_1_3]"
  puts "PCI3_RX_ELECIDLE_H2L_COUNT     [format 0x%-8X [expr 0x16+$offset]] RW    [15:10]    [PCI3_RX_ELECIDLE_H2L_COUNT]"
  puts "CHAN_BOND_SEQ_1_4              [format 0x%-8X [expr 0x16+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_1_4]"
  puts "RX_BUFFER_CFG                  [format 0x%-8X [expr 0x17+$offset]] RW    [15:10]    [RX_BUFFER_CFG]"
  puts "RX_DEFER_RESET_BUF_EN          [format 0x%-8X [expr 0x17+$offset]] RW    [9:9]      [RX_DEFER_RESET_BUF_EN]"
  puts "OOBDIVCTL                      [format 0x%-8X [expr 0x17+$offset]] RW    [7:7]      [OOBDIVCTL]"
  puts "PCI3_AUTO_REALIGN              [format 0x%-8X [expr 0x17+$offset]] RW    [5:5]      [PCI3_AUTO_REALIGN]"
  puts "PCI3_PIPE_RX_ELECIDLE          [format 0x%-8X [expr 0x17+$offset]] RW    [4:4]      [PCI3_PIPE_RX_ELECIDLE]"
  puts "CHAN_BOND_SEQ_1_ENABLE         [format 0x%-8X [expr 0x18+$offset]] RW    [15:12]    [CHAN_BOND_SEQ_1_ENABLE]"
  puts "PCI3_RX_ASYNC_EBUF_BYPASS      [format 0x%-8X [expr 0x18+$offset]] RW    [10:10]    [PCI3_RX_ASYNC_EBUF_BYPASS]"
  puts "CHAN_BOND_SEQ_2_1              [format 0x%-8X [expr 0x18+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_2_1]"
  puts "CHAN_BOND_SEQ_2_2              [format 0x%-8X [expr 0x19+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_2_2]"
  puts "CHAN_BOND_SEQ_2_3              [format 0x%-8X [expr 0x1a+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_2_3]"
  puts "CHAN_BOND_SEQ_2_4              [format 0x%-8X [expr 0x1b+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_2_4]"
  puts "CHAN_BOND_SEQ_2_ENABLE         [format 0x%-8X [expr 0x1c+$offset]] RW    [15:12]    [CHAN_BOND_SEQ_2_ENABLE]"
  puts "CHAN_BOND_SEQ_2_USE            [format 0x%-8X [expr 0x1c+$offset]] RW    [11:11]    [CHAN_BOND_SEQ_2_USE]"
  puts "CLK_COR_KEEP_IDLE              [format 0x%-8X [expr 0x1c+$offset]] RW    [6:6]      [CLK_COR_KEEP_IDLE]"
  puts "CLK_COR_MIN_LAT                [format 0x%-8X [expr 0x1c+$offset]] RW    [5:0]      [CLK_COR_MIN_LAT]"
  puts "CLK_COR_MAX_LAT                [format 0x%-8X [expr 0x1d+$offset]] RW    [15:10]    [CLK_COR_MAX_LAT]"
  puts "CLK_COR_PRECEDENCE             [format 0x%-8X [expr 0x1d+$offset]] RW    [9:9]      [CLK_COR_PRECEDENCE]"
  puts "CLK_COR_REPEAT_WAIT            [format 0x%-8X [expr 0x1d+$offset]] RW    [8:4]      [CLK_COR_REPEAT_WAIT]"
  puts "CLK_COR_SEQ_LEN                [format 0x%-8X [expr 0x1d+$offset]] RW    [2:2]      [CLK_COR_SEQ_LEN]"
  puts "CHAN_BOND_KEEP_ALIGN           [format 0x%-8X [expr 0x1d+$offset]] RW    [0:0]      [CHAN_BOND_KEEP_ALIGN]"
  puts "CLK_COR_SEQ_1_1                [format 0x%-8X [expr 0x1e+$offset]] RW    [9:0]      [CLK_COR_SEQ_1_1]"
  puts "CLK_COR_SEQ_1_2                [format 0x%-8X [expr 0x1f+$offset]] RW    [9:0]      [CLK_COR_SEQ_1_2]"
  puts "CLK_COR_SEQ_1_3                [format 0x%-8X [expr 0x20+$offset]] RW    [9:0]      [CLK_COR_SEQ_1_3]"
  puts "CLK_COR_SEQ_1_4                [format 0x%-8X [expr 0x21+$offset]] RW    [9:0]      [CLK_COR_SEQ_1_4]"
  puts "CLK_COR_SEQ_1_ENABLE           [format 0x%-8X [expr 0x22+$offset]] RW    [15:12]    [CLK_COR_SEQ_1_ENABLE]"
  puts "CLK_COR_SEQ_2_1                [format 0x%-8X [expr 0x22+$offset]] RW    [9:0]      [CLK_COR_SEQ_2_1]"
  puts "CLK_COR_SEQ_2_2                [format 0x%-8X [expr 0x23+$offset]] RW    [9:0]      [CLK_COR_SEQ_2_2]"
  puts "CLK_COR_SEQ_2_ENABLE           [format 0x%-8X [expr 0x24+$offset]] RW    [15:12]    [CLK_COR_SEQ_2_ENABLE]"
  puts "CLK_COR_SEQ_2_USE              [format 0x%-8X [expr 0x24+$offset]] RW    [11:11]    [CLK_COR_SEQ_2_USE]"
  puts "CLK_CORRECT_USE                [format 0x%-8X [expr 0x24+$offset]] RW    [10:10]    [CLK_CORRECT_USE]"
  puts "CLK_COR_SEQ_2_3                [format 0x%-8X [expr 0x24+$offset]] RW    [9:0]      [CLK_COR_SEQ_2_3]"
  puts "CLK_COR_SEQ_2_4                [format 0x%-8X [expr 0x25+$offset]] RW    [9:0]      [CLK_COR_SEQ_2_4]"
  puts "RXDFE_HE_CFG0                  [format 0x%-8X [expr 0x26+$offset]] RW    [15:0]     [RXDFE_HE_CFG0]"
  puts "ALIGN_COMMA_WORD               [format 0x%-8X [expr 0x27+$offset]] RW    [15:13]    [ALIGN_COMMA_WORD]"
  puts "ALIGN_COMMA_DOUBLE             [format 0x%-8X [expr 0x27+$offset]] RW    [12:12]    [ALIGN_COMMA_DOUBLE]"
  puts "SHOW_REALIGN_COMMA             [format 0x%-8X [expr 0x27+$offset]] RW    [11:11]    [SHOW_REALIGN_COMMA]"
  puts "ALIGN_COMMA_ENABLE             [format 0x%-8X [expr 0x27+$offset]] RW    [9:0]      [ALIGN_COMMA_ENABLE]"
  puts "CPLL_FBDIV                     [format 0x%-8X [expr 0x28+$offset]] RW    [15:8]     [CPLL_FBDIV]"
  puts "CPLL_FBDIV_45                  [format 0x%-8X [expr 0x28+$offset]] RW    [7:7]      [CPLL_FBDIV_45]"
  puts "RXCDR_LOCK_CFG0                [format 0x%-8X [expr 0x29+$offset]] RW    [15:0]     [RXCDR_LOCK_CFG0]"
  puts "CPLL_REFCLK_DIV                [format 0x%-8X [expr 0x2a+$offset]] RW    [15:11]    [CPLL_REFCLK_DIV]"
  puts "CPLL_IPS_EN                    [format 0x%-8X [expr 0x2a+$offset]] RW    [10:10]    [CPLL_IPS_EN]"
  puts "CPLL_IPS_REFCLK_SEL            [format 0x%-8X [expr 0x2a+$offset]] RW    [9:7]      [CPLL_IPS_REFCLK_SEL]"
  puts "SATA_CPLL_CFG                  [format 0x%-8X [expr 0x2a+$offset]] RW    [5:5]      [SATA_CPLL_CFG]"
  puts "A_TXDIFFCTRL                   [format 0x%-8X [expr 0x2a+$offset]] RW    [4:0]      [A_TXDIFFCTRL]"
  puts "CPLL_INIT_CFG0                 [format 0x%-8X [expr 0x2b+$offset]] RW    [15:0]     [CPLL_INIT_CFG0]"
  puts "DEC_PCOMMA_DETECT              [format 0x%-8X [expr 0x2c+$offset]] RW    [15:15]    [DEC_PCOMMA_DETECT]"
  puts "TX_DIVRESET_TIME               [format 0x%-8X [expr 0x2c+$offset]] RW    [11:7]     [TX_DIVRESET_TIME]"
  puts "RX_DIVRESET_TIME               [format 0x%-8X [expr 0x2c+$offset]] RW    [6:2]      [RX_DIVRESET_TIME]"
  puts "A_TXPROGDIVRESET               [format 0x%-8X [expr 0x2c+$offset]] RW    [1:1]      [A_TXPROGDIVRESET]"
  puts "A_RXPROGDIVRESET               [format 0x%-8X [expr 0x2c+$offset]] RW    [0:0]      [A_RXPROGDIVRESET]"
  puts "RXCDR_LOCK_CFG1                [format 0x%-8X [expr 0x2d+$offset]] RW    [15:0]     [RXCDR_LOCK_CFG1]"
  puts "RXCFOK_CFG1                    [format 0x%-8X [expr 0x2e+$offset]] RW    [15:0]     [RXCFOK_CFG1]"
  puts "RXDFE_H2_CFG0                  [format 0x%-8X [expr 0x2f+$offset]] RW    [15:0]     [RXDFE_H2_CFG0]"
  puts "RXDFE_H2_CFG1                  [format 0x%-8X [expr 0x30+$offset]] RW    [15:0]     [RXDFE_H2_CFG1]"
  puts "RXCFOK_CFG2                    [format 0x%-8X [expr 0x31+$offset]] RW    [15:0]     [RXCFOK_CFG2]"
  puts "RXLPM_CFG                      [format 0x%-8X [expr 0x32+$offset]] RW    [15:0]     [RXLPM_CFG]"
  puts "RXLPM_KH_CFG0                  [format 0x%-8X [expr 0x33+$offset]] RW    [15:0]     [RXLPM_KH_CFG0]"
  puts "RXLPM_KH_CFG1                  [format 0x%-8X [expr 0x34+$offset]] RW    [15:0]     [RXLPM_KH_CFG1]"
  puts "RXDFELPM_KL_CFG0               [format 0x%-8X [expr 0x35+$offset]] RW    [15:0]     [RXDFELPM_KL_CFG0]"
  puts "RXDFELPM_KL_CFG1               [format 0x%-8X [expr 0x36+$offset]] RW    [15:0]     [RXDFELPM_KL_CFG1]"
  puts "RXLPM_OS_CFG0                  [format 0x%-8X [expr 0x37+$offset]] RW    [15:0]     [RXLPM_OS_CFG0]"
  puts "RXLPM_OS_CFG1                  [format 0x%-8X [expr 0x38+$offset]] RW    [15:0]     [RXLPM_OS_CFG1]"
  puts "RXLPM_GC_CFG                   [format 0x%-8X [expr 0x39+$offset]] RW    [15:0]     [RXLPM_GC_CFG]"
  puts "DMONITOR_CFG1                  [format 0x%-8X [expr 0x3a+$offset]] RW    [15:8]     [DMONITOR_CFG1]"
  puts "ES_CONTROL                     [format 0x%-8X [expr 0x3c+$offset]] RW    [15:10]    [ES_CONTROL]"
  puts "ES_PRESCALE                    [format 0x%-8X [expr 0x3c+$offset]] RW    [4:0]      [ES_PRESCALE]"
  puts "ES_EYE_SCAN_EN                 [format 0x%-8X [expr 0x3c+$offset]] RW    [8:8]      [ES_EYE_SCAN_EN]"
  puts "ES_ERRDET_EN                   [format 0x%-8X [expr 0x3c+$offset]] RW    [9:9]      [ES_ERRDET_EN]"
  puts "RXDFE_GC_CFG2                  [format 0x%-8X [expr 0x3d+$offset]] RW    [15:0]     [RXDFE_GC_CFG2]"
  puts "TXDLY_LCFG                     [format 0x%-8X [expr 0x3e+$offset]] RW    [15:0]     [TXDLY_LCFG]"
  puts "ES_QUALIFIER0                  [format 0x%-8X [expr 0x3f+$offset]] RW    [15:0]     [ES_QUALIFIER0]"
  puts "ES_QUALIFIER1                  [format 0x%-8X [expr 0x40+$offset]] RW    [15:0]     [ES_QUALIFIER1]"
  puts "ES_QUALIFIER2                  [format 0x%-8X [expr 0x41+$offset]] RW    [15:0]     [ES_QUALIFIER2]"
  puts "ES_QUALIFIER3                  [format 0x%-8X [expr 0x42+$offset]] RW    [15:0]     [ES_QUALIFIER3]"
  puts "ES_QUALIFIER4                  [format 0x%-8X [expr 0x43+$offset]] RW    [15:0]     [ES_QUALIFIER4]"
  puts "ES_QUAL_MASK0                  [format 0x%-8X [expr 0x44+$offset]] RW    [15:0]     [ES_QUAL_MASK0]"
  puts "ES_QUAL_MASK1                  [format 0x%-8X [expr 0x45+$offset]] RW    [15:0]     [ES_QUAL_MASK1]"
  puts "ES_QUAL_MASK2                  [format 0x%-8X [expr 0x46+$offset]] RW    [15:0]     [ES_QUAL_MASK2]"
  puts "ES_QUAL_MASK3                  [format 0x%-8X [expr 0x47+$offset]] RW    [15:0]     [ES_QUAL_MASK3]"
  puts "ES_QUAL_MASK4                  [format 0x%-8X [expr 0x48+$offset]] RW    [15:0]     [ES_QUAL_MASK4]"
  puts "ES_SDATA_MASK0                 [format 0x%-8X [expr 0x49+$offset]] RW    [15:0]     [ES_SDATA_MASK0]"
  puts "ES_SDATA_MASK1                 [format 0x%-8X [expr 0x4a+$offset]] RW    [15:0]     [ES_SDATA_MASK1]"
  puts "ES_SDATA_MASK2                 [format 0x%-8X [expr 0x4b+$offset]] RW    [15:0]     [ES_SDATA_MASK2]"
  puts "ES_SDATA_MASK3                 [format 0x%-8X [expr 0x4c+$offset]] RW    [15:0]     [ES_SDATA_MASK3]"
  puts "ES_SDATA_MASK4                 [format 0x%-8X [expr 0x4d+$offset]] RW    [15:0]     [ES_SDATA_MASK4]"
  puts "FTS_LANE_DESKEW_EN             [format 0x%-8X [expr 0x4e+$offset]] RW    [4:4]      [FTS_LANE_DESKEW_EN]"
  puts "FTS_DESKEW_SEQ_ENABLE          [format 0x%-8X [expr 0x4e+$offset]] RW    [3:0]      [FTS_DESKEW_SEQ_ENABLE]"
  puts "ES_HORZ_OFFSET                 [format 0x%-8X [expr 0x4f+$offset]] RW    [15:4]     [ES_HORZ_OFFSET]"
  puts "FTS_LANE_DESKEW_CFG            [format 0x%-8X [expr 0x4f+$offset]] RW    [3:0]      [FTS_LANE_DESKEW_CFG]"
  puts "RXDFE_HC_CFG1                  [format 0x%-8X [expr 0x50+$offset]] RW    [15:0]     [RXDFE_HC_CFG1]"
  puts "ES_PMA_CFG                     [format 0x%-8X [expr 0x51+$offset]] RW    [9:0]      [ES_PMA_CFG]"
  puts "RX_DFE_AGC_CFG1                [format 0x%-8X [expr 0x52+$offset]] RW    [4:2]      [RX_DFE_AGC_CFG1]"
  puts "TXFE_CFG2                      [format 0x%-8X [expr 0x53+$offset]] RW    [15:0]     [TXFE_CFG2]"
  puts "TXFE_CFG3                      [format 0x%-8X [expr 0x54+$offset]] RW    [15:0]     [TXFE_CFG3]"
  puts "PCIE_64B_DYN_CLKSW_DIS         [format 0x%-8X [expr 0x55+$offset]] RW    [14:14]    [PCIE_64B_DYN_CLKSW_DIS]"
  puts "LOCAL_MASTER                   [format 0x%-8X [expr 0x55+$offset]] RW    [13:13]    [LOCAL_MASTER]"
  puts "PCS_PCIE_EN                    [format 0x%-8X [expr 0x55+$offset]] RW    [12:12]    [PCS_PCIE_EN]"
  puts "PCIE_GEN4_64BIT_INT_EN         [format 0x%-8X [expr 0x55+$offset]] RW    [11:11]    [PCIE_GEN4_64BIT_INT_EN]"
  puts "ALIGN_MCOMMA_DET               [format 0x%-8X [expr 0x55+$offset]] RW    [10:10]    [ALIGN_MCOMMA_DET]"
  puts "ALIGN_MCOMMA_VALUE             [format 0x%-8X [expr 0x55+$offset]] RW    [9:0]      [ALIGN_MCOMMA_VALUE]"
  puts "ALIGN_PCOMMA_DET               [format 0x%-8X [expr 0x56+$offset]] RW    [10:10]    [ALIGN_PCOMMA_DET]"
  puts "ALIGN_PCOMMA_VALUE             [format 0x%-8X [expr 0x56+$offset]] RW    [9:0]      [ALIGN_PCOMMA_VALUE]"
  puts "TX_PROGDIV_CFG                 [format 0x%-8X [expr 0x57+$offset]] RW    [15:0]     [TX_PROGDIV_CFG]"
  puts "RXDFE_OS_CFG0                  [format 0x%-8X [expr 0x58+$offset]] RW    [15:0]     [RXDFE_OS_CFG0]"
  puts "RXPHDLY_CFG                    [format 0x%-8X [expr 0x59+$offset]] RW    [15:0]     [RXPHDLY_CFG]"
  puts "RXDFE_OS_CFG1                  [format 0x%-8X [expr 0x5a+$offset]] RW    [15:0]     [RXDFE_OS_CFG1]"
  puts "RXDLY_CFG                      [format 0x%-8X [expr 0x5b+$offset]] RW    [15:0]     [RXDLY_CFG]"
  puts "RXDLY_LCFG                     [format 0x%-8X [expr 0x5c+$offset]] RW    [15:0]     [RXDLY_LCFG]"
  puts "RXDFE_HF_CFG0                  [format 0x%-8X [expr 0x5d+$offset]] RW    [15:0]     [RXDFE_HF_CFG0]"
  puts "RXDFE_HD_CFG0                  [format 0x%-8X [expr 0x5e+$offset]] RW    [15:0]     [RXDFE_HD_CFG0]"
  puts "RX_BIAS_CFG0                   [format 0x%-8X [expr 0x5f+$offset]] RW    [15:0]     [RX_BIAS_CFG0]"
  puts "PCS_RSVD0                      [format 0x%-8X [expr 0x60+$offset]] RW    [15:0]     [PCS_RSVD0]"
  puts "PCIE_GEN4_NEW_EIEOS_DET_EN     [format 0x%-8X [expr 0x60+$offset]] RW    [8:4]      [PCIE_GEN4_NEW_EIEOS_DET_EN]"
  puts "USB3_RXTERMINATION_CTRL        [format 0x%-8X [expr 0x60+$offset]] RW    [0:0]      [USB3_RXTERMINATION_CTRL]"
  puts "RXPH_MONITOR_SEL               [format 0x%-8X [expr 0x61+$offset]] RW    [15:11]    [RXPH_MONITOR_SEL]"
  puts "RX_CM_BUF_PD                   [format 0x%-8X [expr 0x61+$offset]] RW    [10:10]    [RX_CM_BUF_PD]"
  puts "RX_CM_BUF_CFG                  [format 0x%-8X [expr 0x61+$offset]] RW    [9:6]      [RX_CM_BUF_CFG]"
  puts "RX_CM_TRIM                     [format 0x%-8X [expr 0x61+$offset]] RW    [5:2]      [RX_CM_TRIM]"
  puts "RX_CM_SEL                      [format 0x%-8X [expr 0x61+$offset]] RW    [0:0]      [RX_CM_SEL]"
  puts "RX_I2V_FILTER_EN               [format 0x%-8X [expr 0x62+$offset]] RW    [15:15]    [RX_I2V_FILTER_EN]"
  puts "RX_SUM_DFETAPREP_EN            [format 0x%-8X [expr 0x62+$offset]] RW    [14:14]    [RX_SUM_DFETAPREP_EN]"
  puts "RX_SUM_VCM_OVWR                [format 0x%-8X [expr 0x62+$offset]] RW    [13:13]    [RX_SUM_VCM_OVWR]"
  puts "RX_SUM_IREF_TUNE               [format 0x%-8X [expr 0x62+$offset]] RW    [12:9]     [RX_SUM_IREF_TUNE]"
  puts "EYESCAN_VP_RANGE               [format 0x%-8X [expr 0x62+$offset]] RW    [7:7]      [EYESCAN_VP_RANGE]"
  puts "RX_SUM_VCMTUNE                 [format 0x%-8X [expr 0x62+$offset]] RW    [6:3]      [RX_SUM_VCMTUNE]"
  puts "RX_SUM_VREF_TUNE               [format 0x%-8X [expr 0x62+$offset]] RW    [2:0]      [RX_SUM_VREF_TUNE]"
  puts "CBCC_DATA_SOURCE_SEL           [format 0x%-8X [expr 0x63+$offset]] RW    [15:15]    [CBCC_DATA_SOURCE_SEL]"
  puts "OOB_PWRUP                      [format 0x%-8X [expr 0x63+$offset]] RW    [14:14]    [OOB_PWRUP]"
  puts "RXOOB_CFG                      [format 0x%-8X [expr 0x63+$offset]] RW    [13:5]     [RXOOB_CFG]"
  puts "RXOUT_DIV                      [format 0x%-8X [expr 0x63+$offset]] RW    [2:0]      [RXOUT_DIV]"
  puts "RX_SIG_VALID_DLY               [format 0x%-8X [expr 0x64+$offset]] RW    [15:11]    [RX_SIG_VALID_DLY]"
  puts "RXSLIDE_MODE                   [format 0x%-8X [expr 0x64+$offset]] RW    [9:9]      [RXSLIDE_MODE]"
  puts "RXPRBS_ERR_LOOPBACK            [format 0x%-8X [expr 0x64+$offset]] RW    [8:8]      [RXPRBS_ERR_LOOPBACK]"
  puts "RXSLIDE_AUTO_WAIT              [format 0x%-8X [expr 0x64+$offset]] RW    [7:4]      [RXSLIDE_AUTO_WAIT]"
  puts "RXBUF_EN                       [format 0x%-8X [expr 0x64+$offset]] RW    [3:3]      [RXBUF_EN]"
  puts "RX_XCLK_SEL                    [format 0x%-8X [expr 0x64+$offset]] RW    [1:1]      [RX_XCLK_SEL]"
  puts "RXGEARBOX_EN                   [format 0x%-8X [expr 0x64+$offset]] RW    [0:0]      [RXGEARBOX_EN]"
  puts "RXBUF_THRESH_OVFLW             [format 0x%-8X [expr 0x65+$offset]] RW    [15:10]    [RXBUF_THRESH_OVFLW]"
  puts "DMONITOR_CFG0                  [format 0x%-8X [expr 0x65+$offset]] RW    [9:0]      [DMONITOR_CFG0]"
  puts "RXBUF_THRESH_OVRD              [format 0x%-8X [expr 0x66+$offset]] RW    [15:15]    [RXBUF_THRESH_OVRD]"
  puts "RXBUF_RESET_ON_COMMAALIGN      [format 0x%-8X [expr 0x66+$offset]] RW    [14:14]    [RXBUF_RESET_ON_COMMAALIGN]"
  puts "RXBUF_RESET_ON_RATE_CHANGE     [format 0x%-8X [expr 0x66+$offset]] RW    [13:13]    [RXBUF_RESET_ON_RATE_CHANGE]"
  puts "RXBUF_RESET_ON_CB_CHANGE       [format 0x%-8X [expr 0x66+$offset]] RW    [12:12]    [RXBUF_RESET_ON_CB_CHANGE]"
  puts "RXBUF_THRESH_UNDFLW            [format 0x%-8X [expr 0x66+$offset]] RW    [11:6]     [RXBUF_THRESH_UNDFLW]"
  puts "RX_CLKMUX_EN                   [format 0x%-8X [expr 0x66+$offset]] RW    [5:5]      [RX_CLKMUX_EN]"
  puts "RX_DISPERR_SEQ_MATCH           [format 0x%-8X [expr 0x66+$offset]] RW    [4:4]      [RX_DISPERR_SEQ_MATCH]"
  puts "RX_WIDEMODE_CDR                [format 0x%-8X [expr 0x66+$offset]] RW    [2:2]      [RX_WIDEMODE_CDR]"
  puts "RX_INT_DATAWIDTH               [format 0x%-8X [expr 0x66+$offset]] RW    [0:0]      [RX_INT_DATAWIDTH]"
  puts "RXBUF_EIDLE_HI_CNT             [format 0x%-8X [expr 0x67+$offset]] RW    [15:12]    [RXBUF_EIDLE_HI_CNT]"
  puts "RXCDR_HOLD_DURING_EIDLE        [format 0x%-8X [expr 0x67+$offset]] RW    [11:11]    [RXCDR_HOLD_DURING_EIDLE]"
  puts "RX_DFE_LPM_HOLD_DURING_EIDLE   [format 0x%-8X [expr 0x67+$offset]] RW    [10:10]    [RX_DFE_LPM_HOLD_DURING_EIDLE]"
  puts "RX_WIDEMODE_CDR_GEN3           [format 0x%-8X [expr 0x67+$offset]] RW    [8:8]      [RX_WIDEMODE_CDR_GEN3]"
  puts "RXBUF_EIDLE_LO_CNT             [format 0x%-8X [expr 0x67+$offset]] RW    [7:4]      [RXBUF_EIDLE_LO_CNT]"
  puts "RXBUF_RESET_ON_EIDLE           [format 0x%-8X [expr 0x67+$offset]] RW    [3:3]      [RXBUF_RESET_ON_EIDLE]"
  puts "RXCDR_FR_RESET_ON_EIDLE        [format 0x%-8X [expr 0x67+$offset]] RW    [2:2]      [RXCDR_FR_RESET_ON_EIDLE]"
  puts "RXCDR_PH_RESET_ON_EIDLE        [format 0x%-8X [expr 0x67+$offset]] RW    [1:1]      [RXCDR_PH_RESET_ON_EIDLE]"
  puts "RXBUF_ADDR_MODE                [format 0x%-8X [expr 0x67+$offset]] RW    [0:0]      [RXBUF_ADDR_MODE]"
  puts "SATA_BURST_VAL                 [format 0x%-8X [expr 0x68+$offset]] RW    [15:13]    [SATA_BURST_VAL]"
  puts "SAS_12G_MODE                   [format 0x%-8X [expr 0x68+$offset]] RW    [10:10]    [SAS_12G_MODE]"
  puts "USB_TXIDLE_TUNE_ENABLE         [format 0x%-8X [expr 0x68+$offset]] RW    [9:9]      [USB_TXIDLE_TUNE_ENABLE]"
  puts "USB_RXIDLE_P0_CTRL             [format 0x%-8X [expr 0x68+$offset]] RW    [8:8]      [USB_RXIDLE_P0_CTRL]"
  puts "SATA_BURST_SEQ_LEN             [format 0x%-8X [expr 0x68+$offset]] RW    [7:4]      [SATA_BURST_SEQ_LEN]"
  puts "SATA_EIDLE_VAL                 [format 0x%-8X [expr 0x68+$offset]] RW    [2:0]      [SATA_EIDLE_VAL]"
  puts "USB_POLL_SATA_MIN_BURST        [format 0x%-8X [expr 0x69+$offset]] RW    [15:9]     [USB_POLL_SATA_MIN_BURST]"
  puts "RX_WIDEMODE_CDR_GEN4           [format 0x%-8X [expr 0x69+$offset]] RW    [7:7]      [RX_WIDEMODE_CDR_GEN4]"
  puts "USB_U2_SAS_MIN_COM             [format 0x%-8X [expr 0x69+$offset]] RW    [6:0]      [USB_U2_SAS_MIN_COM]"
  puts "USB_PING_SATA_MIN_INIT         [format 0x%-8X [expr 0x6a+$offset]] RW    [15:9]     [USB_PING_SATA_MIN_INIT]"
  puts "USB_U1_SATA_MIN_WAKE           [format 0x%-8X [expr 0x6a+$offset]] RW    [6:0]      [USB_U1_SATA_MIN_WAKE]"
  puts "USB_POLL_SATA_MAX_BURST        [format 0x%-8X [expr 0x6b+$offset]] RW    [15:9]     [USB_POLL_SATA_MAX_BURST]"
  puts "USB_U2_SAS_MAX_COM             [format 0x%-8X [expr 0x6b+$offset]] RW    [6:0]      [USB_U2_SAS_MAX_COM]"
  puts "USB_PING_SATA_MAX_INIT         [format 0x%-8X [expr 0x6c+$offset]] RW    [15:9]     [USB_PING_SATA_MAX_INIT]"
  puts "USB_U1_SATA_MAX_WAKE           [format 0x%-8X [expr 0x6c+$offset]] RW    [6:0]      [USB_U1_SATA_MAX_WAKE]"
  puts "RX_CLK25_DIV                   [format 0x%-8X [expr 0x6d+$offset]] RW    [7:3]      [RX_CLK25_DIV]"
  puts "RXDFE_UT_CFG1                  [format 0x%-8X [expr 0x6e+$offset]] RW    [15:0]     [RXDFE_UT_CFG1]"
  puts "TXPHDLY_CFG1                   [format 0x%-8X [expr 0x6f+$offset]] RW    [15:0]     [TXPHDLY_CFG1]"
  puts "RXDFE_VP_CFG0                  [format 0x%-8X [expr 0x70+$offset]] RW    [15:0]     [RXDFE_VP_CFG0]"
  puts "TXPH_MONITOR_SEL               [format 0x%-8X [expr 0x71+$offset]] RW    [6:2]      [TXPH_MONITOR_SEL]"
  puts "TAPDLY_SET_TX                  [format 0x%-8X [expr 0x71+$offset]] RW    [0:0]      [TAPDLY_SET_TX]"
  puts "ADAPT_CFG2                     [format 0x%-8X [expr 0x72+$offset]] RW    [15:0]     [ADAPT_CFG2]"
  puts "RXDFE_VP_CFG1                  [format 0x%-8X [expr 0x73+$offset]] RW    [15:0]     [RXDFE_VP_CFG1]"
  puts "TERM_RCAL_CFG                  [format 0x%-8X [expr 0x74+$offset]] RW    [14:0]     [TERM_RCAL_CFG]"
  puts "RXPI_CFG0                      [format 0x%-8X [expr 0x75+$offset]] RW    [15:0]     [RXPI_CFG0]"
  puts "PD_TRANS_TIME_FROM_P2          [format 0x%-8X [expr 0x76+$offset]] RW    [15:4]     [PD_TRANS_TIME_FROM_P2]"
  puts "TERM_RCAL_OVRD                 [format 0x%-8X [expr 0x76+$offset]] RW    [3:1]      [TERM_RCAL_OVRD]"
  puts "PD_TRANS_TIME_NONE_P2          [format 0x%-8X [expr 0x77+$offset]] RW    [15:8]     [PD_TRANS_TIME_NONE_P2]"
  puts "PD_TRANS_TIME_TO_P2            [format 0x%-8X [expr 0x77+$offset]] RW    [7:0]      [PD_TRANS_TIME_TO_P2]"
  puts "TRANS_TIME_RATE                [format 0x%-8X [expr 0x78+$offset]] RW    [15:8]     [TRANS_TIME_RATE]"
  puts "TST_RSV0                       [format 0x%-8X [expr 0x79+$offset]] RW    [15:8]     [TST_RSV0]"
  puts "TST_RSV1                       [format 0x%-8X [expr 0x79+$offset]] RW    [7:0]      [TST_RSV1]"
  puts "TX_CLK25_DIV                   [format 0x%-8X [expr 0x7a+$offset]] RW    [15:11]    [TX_CLK25_DIV]"
  puts "TX_XCLK_SEL                    [format 0x%-8X [expr 0x7a+$offset]] RW    [10:10]    [TX_XCLK_SEL]"
  puts "TX_DATA_WIDTH                  [format 0x%-8X [expr 0x7a+$offset]] RW    [3:0]      [TX_DATA_WIDTH]"
  puts "TX_DEEMPH0                     [format 0x%-8X [expr 0x7b+$offset]] RW    [15:10]    [TX_DEEMPH0]"
  puts "TX_DEEMPH1                     [format 0x%-8X [expr 0x7b+$offset]] RW    [7:2]      [TX_DEEMPH1]"
  puts "TX_MAINCURSOR_SEL              [format 0x%-8X [expr 0x7c+$offset]] RW    [14:14]    [TX_MAINCURSOR_SEL]"
  puts "TXGEARBOX_EN                   [format 0x%-8X [expr 0x7c+$offset]] RW    [13:13]    [TXGEARBOX_EN]"
  puts "TXOUT_DIV                      [format 0x%-8X [expr 0x7c+$offset]] RW    [10:8]     [TXOUT_DIV]"
  puts "TXBUF_EN                       [format 0x%-8X [expr 0x7c+$offset]] RW    [7:7]      [TXBUF_EN]"
  puts "TXBUF_RESET_ON_RATE_CHANGE     [format 0x%-8X [expr 0x7c+$offset]] RW    [6:6]      [TXBUF_RESET_ON_RATE_CHANGE]"
  puts "TX_RXDETECT_REF                [format 0x%-8X [expr 0x7c+$offset]] RW    [5:3]      [TX_RXDETECT_REF]"
  puts "TXFIFO_ADDR_CFG                [format 0x%-8X [expr 0x7c+$offset]] RW    [2:2]      [TXFIFO_ADDR_CFG]"
  puts "TX_SW_MEAS                     [format 0x%-8X [expr 0x7c+$offset]] RW    [0:0]      [TX_SW_MEAS]"
  puts "TX_RXDETECT_CFG                [format 0x%-8X [expr 0x7d+$offset]] RW    [15:2]     [TX_RXDETECT_CFG]"
  puts "TX_CLKMUX_EN                   [format 0x%-8X [expr 0x7e+$offset]] RW    [15:15]    [TX_CLKMUX_EN]"
  puts "TX_LOOPBACK_DRIVE_HIZ          [format 0x%-8X [expr 0x7e+$offset]] RW    [14:14]    [TX_LOOPBACK_DRIVE_HIZ]"
  puts "TX_DRIVE_MODE                  [format 0x%-8X [expr 0x7e+$offset]] RW    [12:8]     [TX_DRIVE_MODE]"
  puts "TX_EIDLE_ASSERT_DELAY          [format 0x%-8X [expr 0x7e+$offset]] RW    [7:5]      [TX_EIDLE_ASSERT_DELAY]"
  puts "TX_EIDLE_DEASSERT_DELAY        [format 0x%-8X [expr 0x7e+$offset]] RW    [4:2]      [TX_EIDLE_DEASSERT_DELAY]"
  puts "TX_MARGIN_FULL_0               [format 0x%-8X [expr 0x7f+$offset]] RW    [15:9]     [TX_MARGIN_FULL_0]"
  puts "TX_MARGIN_FULL_1               [format 0x%-8X [expr 0x7f+$offset]] RW    [7:1]      [TX_MARGIN_FULL_1]"
  puts "TX_MARGIN_FULL_2               [format 0x%-8X [expr 0x80+$offset]] RW    [15:9]     [TX_MARGIN_FULL_2]"
  puts "TX_MARGIN_FULL_3               [format 0x%-8X [expr 0x80+$offset]] RW    [7:1]      [TX_MARGIN_FULL_3]"
  puts "TX_MARGIN_FULL_4               [format 0x%-8X [expr 0x81+$offset]] RW    [15:9]     [TX_MARGIN_FULL_4]"
  puts "TX_MARGIN_LOW_0                [format 0x%-8X [expr 0x81+$offset]] RW    [7:1]      [TX_MARGIN_LOW_0]"
  puts "TX_MARGIN_LOW_1                [format 0x%-8X [expr 0x82+$offset]] RW    [15:9]     [TX_MARGIN_LOW_1]"
  puts "TX_MARGIN_LOW_2                [format 0x%-8X [expr 0x82+$offset]] RW    [7:1]      [TX_MARGIN_LOW_2]"
  puts "TX_MARGIN_LOW_3                [format 0x%-8X [expr 0x83+$offset]] RW    [15:9]     [TX_MARGIN_LOW_3]"
  puts "TX_MARGIN_LOW_4                [format 0x%-8X [expr 0x83+$offset]] RW    [7:1]      [TX_MARGIN_LOW_4]"
  puts "RXDFE_H3_CFG0                  [format 0x%-8X [expr 0x84+$offset]] RW    [15:0]     [RXDFE_H3_CFG0]"
  puts "TX_INT_DATAWIDTH               [format 0x%-8X [expr 0x85+$offset]] RW    [10:10]    [TX_INT_DATAWIDTH]"
  puts "RXPRBS_LINKACQ_CNT             [format 0x%-8X [expr 0x89+$offset]] RW    [7:0]      [RXPRBS_LINKACQ_CNT]"
  puts "TX_PMADATA_OPT                 [format 0x%-8X [expr 0x8a+$offset]] RW    [15:15]    [TX_PMADATA_OPT]"
  puts "RXSYNC_OVRD                    [format 0x%-8X [expr 0x8a+$offset]] RW    [14:14]    [RXSYNC_OVRD]"
  puts "TXSYNC_OVRD                    [format 0x%-8X [expr 0x8a+$offset]] RW    [13:13]    [TXSYNC_OVRD]"
  puts "TX_IDLE_DATA_ZERO              [format 0x%-8X [expr 0x8a+$offset]] RW    [12:12]    [TX_IDLE_DATA_ZERO]"
  puts "A_RXOSCALRESET                 [format 0x%-8X [expr 0x8a+$offset]] RW    [11:11]    [A_RXOSCALRESET]"
  puts "RXOOB_CLK_CFG                  [format 0x%-8X [expr 0x8a+$offset]] RW    [10:10]    [RXOOB_CLK_CFG]"
  puts "TXSYNC_SKIP_DA                 [format 0x%-8X [expr 0x8a+$offset]] RW    [9:9]      [TXSYNC_SKIP_DA]"
  puts "RXSYNC_SKIP_DA                 [format 0x%-8X [expr 0x8a+$offset]] RW    [8:8]      [RXSYNC_SKIP_DA]"
  puts "RXOSCALRESET_TIME              [format 0x%-8X [expr 0x8a+$offset]] RW    [4:0]      [RXOSCALRESET_TIME]"
  puts "TXSYNC_MULTILANE               [format 0x%-8X [expr 0x8b+$offset]] RW    [10:10]    [TXSYNC_MULTILANE]"
  puts "RXSYNC_MULTILANE               [format 0x%-8X [expr 0x8b+$offset]] RW    [9:9]      [RXSYNC_MULTILANE]"
  puts "ACJTAG_MODE                    [format 0x%-8X [expr 0x8c+$offset]] RW    [15:15]    [ACJTAG_MODE]"
  puts "ACJTAG_DEBUG_MODE              [format 0x%-8X [expr 0x8c+$offset]] RW    [14:14]    [ACJTAG_DEBUG_MODE]"
  puts "ACJTAG_RESET                   [format 0x%-8X [expr 0x8c+$offset]] RW    [13:13]    [ACJTAG_RESET]"
  puts "RX_SUM_VCM_BIAS_TUNE_EN        [format 0x%-8X [expr 0x8c+$offset]] RW    [12:12]    [RX_SUM_VCM_BIAS_TUNE_EN]"
  puts "RX_TUNE_AFE_OS                 [format 0x%-8X [expr 0x8c+$offset]] RW    [10:10]    [RX_TUNE_AFE_OS]"
  puts "RX_DFE_KL_LPM_KL_CFG0          [format 0x%-8X [expr 0x8c+$offset]] RW    [8:8]      [RX_DFE_KL_LPM_KL_CFG0]"
  puts "RX_DFE_KL_LPM_KL_CFG1          [format 0x%-8X [expr 0x8c+$offset]] RW    [7:5]      [RX_DFE_KL_LPM_KL_CFG1]"
  puts "RX_SUM_DEGEN_AVTT_OVERITE      [format 0x%-8X [expr 0x8c+$offset]] RW    [4:4]      [RX_SUM_DEGEN_AVTT_OVERITE]"
  puts "RX_SUM_PWR_SAVING              [format 0x%-8X [expr 0x8c+$offset]] RW    [3:3]      [RX_SUM_PWR_SAVING]"
  puts "RX_EN_SUM_RCAL_B               [format 0x%-8X [expr 0x8c+$offset]] RW    [2:2]      [RX_EN_SUM_RCAL_B]"
  puts "RXDFELPM_KL_CFG2               [format 0x%-8X [expr 0x8d+$offset]] RW    [15:0]     [RXDFELPM_KL_CFG2]"
  puts "TXDLY_CFG                      [format 0x%-8X [expr 0x8e+$offset]] RW    [15:0]     [TXDLY_CFG]"
  puts "TXPH_CFG                       [format 0x%-8X [expr 0x8f+$offset]] RW    [15:0]     [TXPH_CFG]"
  puts "TXPHDLY_CFG0                   [format 0x%-8X [expr 0x90+$offset]] RW    [15:0]     [TXPHDLY_CFG0]"
  puts "ADAPT_CFG0                     [format 0x%-8X [expr 0x91+$offset]] RW    [15:0]     [ADAPT_CFG0]"
  puts "ADAPT_CFG1                     [format 0x%-8X [expr 0x92+$offset]] RW    [15:0]     [ADAPT_CFG1]"
  puts "RXCFOK_CFG0                    [format 0x%-8X [expr 0x93+$offset]] RW    [15:0]     [RXCFOK_CFG0]"
  puts "ES_CLK_PHASE_SEL               [format 0x%-8X [expr 0x94+$offset]] RW    [11:11]    [ES_CLK_PHASE_SEL]"
  puts "USE_PCS_CLK_PHASE_SEL          [format 0x%-8X [expr 0x94+$offset]] RW    [10:10]    [USE_PCS_CLK_PHASE_SEL]"
  puts "SAMPLE_CLK_PHASE               [format 0x%-8X [expr 0x94+$offset]] RW    [9:9]      [SAMPLE_CLK_PHASE]"
  puts "TX_PMA_RSV0                    [format 0x%-8X [expr 0x95+$offset]] RW    [15:0]     [TX_PMA_RSV0]"
  puts "RX_AFE_CM_EN                   [format 0x%-8X [expr 0x97+$offset]] RW    [12:12]    [RX_AFE_CM_EN]"
  puts "RX_CAPFF_SARC_ENB              [format 0x%-8X [expr 0x97+$offset]] RW    [11:11]    [RX_CAPFF_SARC_ENB]"
  puts "RX_EYESCAN_VS_NEG_DIR          [format 0x%-8X [expr 0x97+$offset]] RW    [10:10]    [RX_EYESCAN_VS_NEG_DIR]"
  puts "RX_EYESCAN_VS_UT_SIGN          [format 0x%-8X [expr 0x97+$offset]] RW    [9:9]      [RX_EYESCAN_VS_UT_SIGN]"
  puts "RX_EYESCAN_VS_CODE             [format 0x%-8X [expr 0x97+$offset]] RW    [8:2]      [RX_EYESCAN_VS_CODE]"
  puts "RX_EYESCAN_VS_RANGE            [format 0x%-8X [expr 0x97+$offset]] RW    [0:0]      [RX_EYESCAN_VS_RANGE]"
  puts "RXDFE_H5_CFG1                  [format 0x%-8X [expr 0x98+$offset]] RW    [15:0]     [RXDFE_H5_CFG1]"
  puts "GEARBOX_MODE                   [format 0x%-8X [expr 0x99+$offset]] RW    [15:11]    [GEARBOX_MODE]"
  puts "TXPI_SYNFREQ_PPM               [format 0x%-8X [expr 0x99+$offset]] RW    [10:8]     [TXPI_SYNFREQ_PPM]"
  puts "TXPI_INVSTROBE_SEL             [format 0x%-8X [expr 0x99+$offset]] RW    [6:6]      [TXPI_INVSTROBE_SEL]"
  puts "TXPI_GRAY_SEL                  [format 0x%-8X [expr 0x99+$offset]] RW    [5:5]      [TXPI_GRAY_SEL]"
  puts "TXPI_PPM_CFG                   [format 0x%-8X [expr 0x9a+$offset]] RW    [7:0]      [TXPI_PPM_CFG]"
  puts "RX_DFELPM_KLKH_AGC_STUP_EN     [format 0x%-8X [expr 0x9b+$offset]] RW    [15:15]    [RX_DFELPM_KLKH_AGC_STUP_EN]"
  puts "RX_DFELPM_CFG0                 [format 0x%-8X [expr 0x9b+$offset]] RW    [14:11]    [RX_DFELPM_CFG0]"
  puts "RX_DFELPM_CFG1                 [format 0x%-8X [expr 0x9b+$offset]] RW    [10:10]    [RX_DFELPM_CFG1]"
  puts "RX_DFE_KL_LPM_KH_CFG0          [format 0x%-8X [expr 0x9b+$offset]] RW    [8:8]      [RX_DFE_KL_LPM_KH_CFG0]"
  puts "RX_DFE_KL_LPM_KH_CFG1          [format 0x%-8X [expr 0x9b+$offset]] RW    [7:5]      [RX_DFE_KL_LPM_KH_CFG1]"
  puts "TXFE_CFG0                      [format 0x%-8X [expr 0x9d+$offset]] RW    [15:0]     [TXFE_CFG0]"
  puts "RXDFE_UT_CFG0                  [format 0x%-8X [expr 0x9e+$offset]] RW    [15:0]     [RXDFE_UT_CFG0]"
  puts "CPLL_CFG0                      [format 0x%-8X [expr 0x9f+$offset]] RW    [15:0]     [CPLL_CFG0]"
  puts "CPLL_CFG1                      [format 0x%-8X [expr 0xa0+$offset]] RW    [15:0]     [CPLL_CFG1]"
  puts "TXFE_CFG1                      [format 0x%-8X [expr 0xa1+$offset]] RW    [15:0]     [TXFE_CFG1]"
  puts "RXCDR_CFG0_GEN3                [format 0x%-8X [expr 0xa2+$offset]] RW    [15:0]     [RXCDR_CFG0_GEN3]"
  puts "RXCDR_CFG1_GEN3                [format 0x%-8X [expr 0xa3+$offset]] RW    [15:0]     [RXCDR_CFG1_GEN3]"
  puts "RXCDR_CFG2_GEN3                [format 0x%-8X [expr 0xa4+$offset]] RW    [15:0]     [RXCDR_CFG2_GEN3]"
  puts "RXCDR_CFG3_GEN3                [format 0x%-8X [expr 0xa5+$offset]] RW    [15:0]     [RXCDR_CFG3_GEN3]"
  puts "RXCDR_CFG4_GEN3                [format 0x%-8X [expr 0xa6+$offset]] RW    [15:0]     [RXCDR_CFG4_GEN3]"
  puts "TXPI_CFG0                      [format 0x%-8X [expr 0xa7+$offset]] RW    [15:0]     [TXPI_CFG0]"
  puts "TXPI_CFG1                      [format 0x%-8X [expr 0xa8+$offset]] RW    [15:0]     [TXPI_CFG1]"
  puts "PCIE_RXPMA_CFG                 [format 0x%-8X [expr 0xa9+$offset]] RW    [15:0]     [PCIE_RXPMA_CFG]"
  puts "PCIE_TXPCS_CFG_GEN3            [format 0x%-8X [expr 0xaa+$offset]] RW    [15:0]     [PCIE_TXPCS_CFG_GEN3]"
  puts "PCIE_TXPMA_CFG                 [format 0x%-8X [expr 0xab+$offset]] RW    [15:0]     [PCIE_TXPMA_CFG]"
  puts "RX_CLK_SLIP_OVRD               [format 0x%-8X [expr 0xac+$offset]] RW    [7:3]      [RX_CLK_SLIP_OVRD]"
  puts "TXPI_PPM                       [format 0x%-8X [expr 0xac+$offset]] RW    [0:0]      [TXPI_PPM]"
  puts "PCIE_PLL_SEL_MODE_GEN4         [format 0x%-8X [expr 0xad+$offset]] RW    [13:13]    [PCIE_PLL_SEL_MODE_GEN4]"
  puts "PCIE_PLL_SEL_MODE_GEN3         [format 0x%-8X [expr 0xad+$offset]] RW    [11:11]    [PCIE_PLL_SEL_MODE_GEN3]"
  puts "PCIE_PLL_SEL_MODE_GEN12        [format 0x%-8X [expr 0xad+$offset]] RW    [9:9]      [PCIE_PLL_SEL_MODE_GEN12]"
  puts "RATE_SW_USE_DRP                [format 0x%-8X [expr 0xad+$offset]] RW    [8:8]      [RATE_SW_USE_DRP]"
  puts "RXDFE_HD_CFG1                  [format 0x%-8X [expr 0xae+$offset]] RW    [15:0]     [RXDFE_HD_CFG1]"
  puts "RXCDR_CFG5_GEN3                [format 0x%-8X [expr 0xaf+$offset]] RW    [15:0]     [RXCDR_CFG5_GEN3]"
  puts "RXDFE_KH_CFG3                  [format 0x%-8X [expr 0xb0+$offset]] RW    [15:0]     [RXDFE_KH_CFG3]"
  puts "RXDFE_KH_CFG2                  [format 0x%-8X [expr 0xb1+$offset]] RW    [15:0]     [RXDFE_KH_CFG2]"
  puts "RXDFE_KH_CFG1                  [format 0x%-8X [expr 0xb2+$offset]] RW    [15:0]     [RXDFE_KH_CFG1]"
  puts "RXDFE_H5_CFG0                  [format 0x%-8X [expr 0xb3+$offset]] RW    [15:0]     [RXDFE_H5_CFG0]"
  puts "RXCDR_CFG5                     [format 0x%-8X [expr 0xb4+$offset]] RW    [15:0]     [RXCDR_CFG5]"
  puts "RXDFE_HE_CFG1                  [format 0x%-8X [expr 0xb5+$offset]] RW    [15:0]     [RXDFE_HE_CFG1]"
  puts "CPLL_CFG3                      [format 0x%-8X [expr 0xb6+$offset]] RW    [15:0]     [CPLL_CFG3]"
  puts "RXDFE_H6_CFG0                  [format 0x%-8X [expr 0xb7+$offset]] RW    [15:0]     [RXDFE_H6_CFG0]"
  puts "RXDFE_H6_CFG1                  [format 0x%-8X [expr 0xb8+$offset]] RW    [15:0]     [RXDFE_H6_CFG1]"
  puts "RXDFE_H7_CFG0                  [format 0x%-8X [expr 0xb9+$offset]] RW    [15:0]     [RXDFE_H7_CFG0]"
  puts "DDI_REALIGN_WAIT               [format 0x%-8X [expr 0xba+$offset]] RW    [6:2]      [DDI_REALIGN_WAIT]"
  puts "DDI_CTRL                       [format 0x%-8X [expr 0xba+$offset]] RW    [0:0]      [DDI_CTRL]"
  puts "TXGBOX_FIFO_INIT_RD_ADDR       [format 0x%-8X [expr 0xbb+$offset]] RW    [11:9]     [TXGBOX_FIFO_INIT_RD_ADDR]"
  puts "TX_SAMPLE_PERIOD               [format 0x%-8X [expr 0xbb+$offset]] RW    [8:6]      [TX_SAMPLE_PERIOD]"
  puts "RXGBOX_FIFO_INIT_RD_ADDR       [format 0x%-8X [expr 0xbb+$offset]] RW    [5:3]      [RXGBOX_FIFO_INIT_RD_ADDR]"
  puts "RX_SAMPLE_PERIOD               [format 0x%-8X [expr 0xbb+$offset]] RW    [2:0]      [RX_SAMPLE_PERIOD]"
  puts "CPLL_CFG2                      [format 0x%-8X [expr 0xbc+$offset]] RW    [15:0]     [CPLL_CFG2]"
  puts "RXPHSAMP_CFG                   [format 0x%-8X [expr 0xbd+$offset]] RW    [15:0]     [RXPHSAMP_CFG]"
  puts "RXPHSLIP_CFG                   [format 0x%-8X [expr 0xbe+$offset]] RW    [15:0]     [RXPHSLIP_CFG]"
  puts "RXPHBEACON_CFG                 [format 0x%-8X [expr 0xbf+$offset]] RW    [15:0]     [RXPHBEACON_CFG]"
  puts "RXDFE_H7_CFG1                  [format 0x%-8X [expr 0xc0+$offset]] RW    [15:0]     [RXDFE_H7_CFG1]"
  puts "RXDFE_H8_CFG0                  [format 0x%-8X [expr 0xc1+$offset]] RW    [15:0]     [RXDFE_H8_CFG0]"
  puts "RXDFE_H8_CFG1                  [format 0x%-8X [expr 0xc2+$offset]] RW    [15:0]     [RXDFE_H8_CFG1]"
  puts "PCIE_BUFG_DIV_CTRL             [format 0x%-8X [expr 0xc3+$offset]] RW    [15:0]     [PCIE_BUFG_DIV_CTRL]"
  puts "PCIE_RXPCS_CFG_GEN3            [format 0x%-8X [expr 0xc4+$offset]] RW    [15:0]     [PCIE_RXPCS_CFG_GEN3]"
  puts "RXDFE_H9_CFG0                  [format 0x%-8X [expr 0xc5+$offset]] RW    [15:0]     [RXDFE_H9_CFG0]"
  puts "RX_PROGDIV_CFG                 [format 0x%-8X [expr 0xc6+$offset]] RW    [15:0]     [RX_PROGDIV_CFG]"
  puts "RXDFE_H9_CFG1                  [format 0x%-8X [expr 0xc7+$offset]] RW    [15:0]     [RXDFE_H9_CFG1]"
  puts "RXDFE_HA_CFG0                  [format 0x%-8X [expr 0xc8+$offset]] RW    [15:0]     [RXDFE_HA_CFG0]"
  puts "CHAN_BOND_SEQ_1_2              [format 0x%-8X [expr 0xca+$offset]] RW    [9:0]      [CHAN_BOND_SEQ_1_2]"
  puts "RXDFE_GC_CFG0                  [format 0x%-8X [expr 0xcb+$offset]] RW    [15:0]     [RXDFE_GC_CFG0]"
  puts "RXDFE_GC_CFG1                  [format 0x%-8X [expr 0xcc+$offset]] RW    [15:0]     [RXDFE_GC_CFG1]"
  puts "RX_DDI_SEL                     [format 0x%-8X [expr 0xcd+$offset]] RW    [7:2]      [RX_DDI_SEL]"
  puts "DEC_VALID_COMMA_ONLY           [format 0x%-8X [expr 0xcd+$offset]] RW    [1:1]      [DEC_VALID_COMMA_ONLY]"
  puts "DEC_MCOMMA_DETECT              [format 0x%-8X [expr 0xcd+$offset]] RW    [0:0]      [DEC_MCOMMA_DETECT]"
  puts "RXDFE_CFG0                     [format 0x%-8X [expr 0xce+$offset]] RW    [15:0]     [RXDFE_CFG0]"
  puts "RXDFE_CFG1                     [format 0x%-8X [expr 0xcf+$offset]] RW    [15:0]     [RXDFE_CFG1]"
  puts "RX_RESLOAD_OVRD                [format 0x%-8X [expr 0xd0+$offset]] RW    [8:8]      [RX_RESLOAD_OVRD]"
  puts "RX_CTLE_PWR_SAVING             [format 0x%-8X [expr 0xd0+$offset]] RW    [7:7]      [RX_CTLE_PWR_SAVING]"
  puts "RX_DEGEN_CTRL                  [format 0x%-8X [expr 0xd0+$offset]] RW    [6:4]      [RX_DEGEN_CTRL]"
  puts "RX_RESLOAD_CTRL                [format 0x%-8X [expr 0xd0+$offset]] RW    [3:0]      [RX_RESLOAD_CTRL]"
  puts "RX_EN_CTLE_RCAL_B              [format 0x%-8X [expr 0xd1+$offset]] RW    [12:12]    [RX_EN_CTLE_RCAL_B]"
  puts "RX_CTLE_RES_CTRL               [format 0x%-8X [expr 0xd1+$offset]] RW    [11:8]     [RX_CTLE_RES_CTRL]"
  puts "RX_SUM_RES_CTRL                [format 0x%-8X [expr 0xd1+$offset]] RW    [3:0]      [RX_SUM_RES_CTRL]"
  puts "RXPI_CFG1                      [format 0x%-8X [expr 0xd2+$offset]] RW    [15:0]     [RXPI_CFG1]"
  puts "LPBK_EN_RCAL_B                 [format 0x%-8X [expr 0xd3+$offset]] RW    [13:13]    [LPBK_EN_RCAL_B]"
  puts "LPBK_IND_CTRL2                 [format 0x%-8X [expr 0xd3+$offset]] RW    [7:5]      [LPBK_IND_CTRL2]"
  puts "LPBK_BIAS_CTRL                 [format 0x%-8X [expr 0xd3+$offset]] RW    [4:2]      [LPBK_BIAS_CTRL]"
  puts "RX_XMODE_SEL                   [format 0x%-8X [expr 0xd3+$offset]] RW    [1:1]      [RX_XMODE_SEL]"
  puts "ISCAN_CK_PH_SEL2               [format 0x%-8X [expr 0xd3+$offset]] RW    [0:0]      [ISCAN_CK_PH_SEL2]"
  puts "LPBK_IND_CTRL1                 [format 0x%-8X [expr 0xd4+$offset]] RW    [13:11]    [LPBK_IND_CTRL1]"
  puts "LPBK_RG_CTRL                   [format 0x%-8X [expr 0xd4+$offset]] RW    [10:7]     [LPBK_RG_CTRL]"
  puts "LPBK_IND_CTRL0                 [format 0x%-8X [expr 0xd4+$offset]] RW    [2:0]      [LPBK_IND_CTRL0]"
  puts "CKCAL1_CFG_3                   [format 0x%-8X [expr 0xd5+$offset]] RW    [15:0]     [CKCAL1_CFG_3]"
  puts "CKCAL1_DCC_PWRDN               [format 0x%-8X [expr 0xd5+$offset]] RW    [1:1]      [CKCAL1_DCC_PWRDN]"
  puts "CKCAL1_IQ_PWRDN                [format 0x%-8X [expr 0xd5+$offset]] RW    [0:0]      [CKCAL1_IQ_PWRDN]"
  puts "CKCAL2_CFG_3                   [format 0x%-8X [expr 0xd6+$offset]] RW    [15:0]     [CKCAL2_CFG_3]"
  puts "CKCAL2_CFG_4                   [format 0x%-8X [expr 0xd7+$offset]] RW    [15:0]     [CKCAL2_CFG_4]"
  puts "RX_PMA_RSV0                    [format 0x%-8X [expr 0xd8+$offset]] RW    [15:0]     [RX_PMA_RSV0]"
  puts "CKCAL2_CFG_2                   [format 0x%-8X [expr 0xd9+$offset]] RW    [15:0]     [CKCAL2_CFG_2]"
  puts "RXCDR_LOCK_CFG2                [format 0x%-8X [expr 0xda+$offset]] RW    [15:0]     [RXCDR_LOCK_CFG2]"
  puts "CKCAL1_CFG_2                   [format 0x%-8X [expr 0xdb+$offset]] RW    [15:0]     [CKCAL1_CFG_2]"
  puts "RTX_BUF_TERM_CTRL              [format 0x%-8X [expr 0xdd+$offset]] RW    [3:3]      [RTX_BUF_TERM_CTRL]"
  puts "RTX_BUF_CML_CTRL               [format 0x%-8X [expr 0xdd+$offset]] RW    [2:0]      [RTX_BUF_CML_CTRL]"
  puts "TXPH_CFG2                      [format 0x%-8X [expr 0xde+$offset]] RW    [15:0]     [TXPH_CFG2]"
  puts "RXCDR_LOCK_CFG4                [format 0x%-8X [expr 0xdf+$offset]] RW    [15:0]     [RXCDR_LOCK_CFG4]"
  puts "CTLE3_OCAP_EXT_CTRL            [format 0x%-8X [expr 0xe0+$offset]] RW    [8:6]      [CTLE3_OCAP_EXT_CTRL]"
  puts "CTLE3_OCAP_EXT_EN              [format 0x%-8X [expr 0xe0+$offset]] RW    [5:5]      [CTLE3_OCAP_EXT_EN]"
  puts "TX_VREG_VREFSEL                [format 0x%-8X [expr 0xe2+$offset]] RW    [12:12]    [TX_VREG_VREFSEL]"
  puts "TX_VREG_CTRL                   [format 0x%-8X [expr 0xe2+$offset]] RW    [11:9]     [TX_VREG_CTRL]"
  puts "TX_VREG_PDB                    [format 0x%-8X [expr 0xe2+$offset]] RW    [8:8]      [TX_VREG_PDB]"
  puts "ES_QUALIFIER5                  [format 0x%-8X [expr 0xe7+$offset]] RW    [15:0]     [ES_QUALIFIER5]"
  puts "ES_QUALIFIER6                  [format 0x%-8X [expr 0xe8+$offset]] RW    [15:0]     [ES_QUALIFIER6]"
  puts "ES_QUALIFIER7                  [format 0x%-8X [expr 0xe9+$offset]] RW    [15:0]     [ES_QUALIFIER7]"
  puts "ES_QUALIFIER8                  [format 0x%-8X [expr 0xea+$offset]] RW    [15:0]     [ES_QUALIFIER8]"
  puts "ES_QUALIFIER9                  [format 0x%-8X [expr 0xeb+$offset]] RW    [15:0]     [ES_QUALIFIER9]"
  puts "ES_QUAL_MASK5                  [format 0x%-8X [expr 0xec+$offset]] RW    [15:0]     [ES_QUAL_MASK5]"
  puts "ES_QUAL_MASK6                  [format 0x%-8X [expr 0xed+$offset]] RW    [15:0]     [ES_QUAL_MASK6]"
  puts "ES_QUAL_MASK7                  [format 0x%-8X [expr 0xee+$offset]] RW    [15:0]     [ES_QUAL_MASK7]"
  puts "ES_QUAL_MASK8                  [format 0x%-8X [expr 0xef+$offset]] RW    [15:0]     [ES_QUAL_MASK8]"
  puts "ES_QUAL_MASK9                  [format 0x%-8X [expr 0xf0+$offset]] RW    [15:0]     [ES_QUAL_MASK9]"
  puts "ES_SDATA_MASK5                 [format 0x%-8X [expr 0xf1+$offset]] RW    [15:0]     [ES_SDATA_MASK5]"
  puts "ES_SDATA_MASK6                 [format 0x%-8X [expr 0xf2+$offset]] RW    [15:0]     [ES_SDATA_MASK6]"
  puts "ES_SDATA_MASK7                 [format 0x%-8X [expr 0xf3+$offset]] RW    [15:0]     [ES_SDATA_MASK7]"
  puts "ES_SDATA_MASK8                 [format 0x%-8X [expr 0xf4+$offset]] RW    [15:0]     [ES_SDATA_MASK8]"
  puts "ES_SDATA_MASK9                 [format 0x%-8X [expr 0xf5+$offset]] RW    [15:0]     [ES_SDATA_MASK9]"
  puts "TX_PMA_RSV1                    [format 0x%-8X [expr 0xf6+$offset]] RW    [15:0]     [TX_PMA_RSV1]"
  puts "CKCAL1_CFG_0                   [format 0x%-8X [expr 0xf7+$offset]] RW    [15:0]     [CKCAL1_CFG_0]"
  puts "CKCAL1_CFG_1                   [format 0x%-8X [expr 0xf8+$offset]] RW    [15:0]     [CKCAL1_CFG_1]"
  puts "CKCAL2_CFG_0                   [format 0x%-8X [expr 0xf9+$offset]] RW    [15:0]     [CKCAL2_CFG_0]"
  puts "TXSWBST_MAG                    [format 0x%-8X [expr 0xfa+$offset]] RW    [15:13]    [TXSWBST_MAG]"
  puts "TXDRV_FREQBAND                 [format 0x%-8X [expr 0xfa+$offset]] RW    [9:9]      [TXDRV_FREQBAND]"
  puts "TXSWBST_BST                    [format 0x%-8X [expr 0xfa+$offset]] RW    [7:7]      [TXSWBST_BST]"
  puts "TXSWBST_EN                     [format 0x%-8X [expr 0xfa+$offset]] RW    [6:6]      [TXSWBST_EN]"
  puts "RX_VREG_CTRL                   [format 0x%-8X [expr 0xfa+$offset]] RW    [3:1]      [RX_VREG_CTRL]"
  puts "RX_VREG_PDB                    [format 0x%-8X [expr 0xfa+$offset]] RW    [0:0]      [RX_VREG_PDB]"
  puts "LPBK_EXT_RCAL                  [format 0x%-8X [expr 0xfb+$offset]] RW    [9:6]      [LPBK_EXT_RCAL]"
  puts "PREIQ_FREQ_BST                 [format 0x%-8X [expr 0xfb+$offset]] RW    [4:4]      [PREIQ_FREQ_BST]"
  puts "TX_PI_BIASSET                  [format 0x%-8X [expr 0xfb+$offset]] RW    [1:1]      [TX_PI_BIASSET]"
  puts "TX_PHICAL_CFG0                 [format 0x%-8X [expr 0xfc+$offset]] RW    [15:0]     [TX_PHICAL_CFG0]"
  puts "TX_PHICAL_CFG1                 [format 0x%-8X [expr 0xfd+$offset]] RW    [15:0]     [TX_PHICAL_CFG1]"
  puts "RXCDR_LOCK_CFG3                [format 0x%-8X [expr 0xfe+$offset]] RW    [15:0]     [RXCDR_LOCK_CFG3]"
  puts "RXDFE_UT_CFG2                  [format 0x%-8X [expr 0x100+$offset]] RW    [15:0]     [RXDFE_UT_CFG2]"
  puts "CKCAL2_CFG_1                   [format 0x%-8X [expr 0x101+$offset]] RW    [15:0]     [CKCAL2_CFG_1]"
  puts "Y_ALL_MODE                     [format 0x%-8X [expr 0x102+$offset]] RW    [2:2]      [Y_ALL_MODE]"
  puts "RCLK_SIPO_DLY_ENB              [format 0x%-8X [expr 0x102+$offset]] RW    [1:1]      [RCLK_SIPO_DLY_ENB]"
  puts "RCLK_SIPO_INV_EN               [format 0x%-8X [expr 0x102+$offset]] RW    [0:0]      [RCLK_SIPO_INV_EN]"
  puts "RX_PROGDIV_RATE                [format 0x%-8X [expr 0x103+$offset]] RW    [15:0]     [RX_PROGDIV_RATE]"
  puts "RXDFE_HF_CFG1                  [format 0x%-8X [expr 0x104+$offset]] RW    [15:0]     [RXDFE_HF_CFG1]"
  puts "TX_PROGDIV_RATE                [format 0x%-8X [expr 0x105+$offset]] RW    [15:0]     [TX_PROGDIV_RATE]"
  puts "TX_DCC_LOOP_RST_CFG            [format 0x%-8X [expr 0x106+$offset]] RW    [15:0]     [TX_DCC_LOOP_RST_CFG]"
  puts "RXDFE_HC_CFG0                  [format 0x%-8X [expr 0x107+$offset]] RW    [15:0]     [RXDFE_HC_CFG0]"
  puts "RXCKCAL1_I_LOOP_RST_CFG        [format 0x%-8X [expr 0x108+$offset]] RW    [15:0]     [RXCKCAL1_I_LOOP_RST_CFG]"
  puts "RXCKCAL1_Q_LOOP_RST_CFG        [format 0x%-8X [expr 0x109+$offset]] RW    [15:0]     [RXCKCAL1_Q_LOOP_RST_CFG]"
  puts "RXCKCAL1_IQ_LOOP_RST_CFG       [format 0x%-8X [expr 0x10a+$offset]] RW    [15:0]     [RXCKCAL1_IQ_LOOP_RST_CFG]"
  puts "RXCKCAL2_D_LOOP_RST_CFG        [format 0x%-8X [expr 0x10b+$offset]] RW    [15:0]     [RXCKCAL2_D_LOOP_RST_CFG]"
  puts "RXCKCAL2_X_LOOP_RST_CFG        [format 0x%-8X [expr 0x10c+$offset]] RW    [15:0]     [RXCKCAL2_X_LOOP_RST_CFG]"
  puts "RXCKCAL2_S_LOOP_RST_CFG        [format 0x%-8X [expr 0x10d+$offset]] RW    [15:0]     [RXCKCAL2_S_LOOP_RST_CFG]"
  puts "RXCKCAL2_DX_LOOP_RST_CFG       [format 0x%-8X [expr 0x10e+$offset]] RW    [15:0]     [RXCKCAL2_DX_LOOP_RST_CFG]"
  puts "RXDFE_KH_CFG0                  [format 0x%-8X [expr 0x110+$offset]] RW    [15:0]     [RXDFE_KH_CFG0]"
  puts "RXDFE_H4_CFG1                  [format 0x%-8X [expr 0x111+$offset]] RW    [15:0]     [RXDFE_H4_CFG1]"
  puts "RXDFE_H4_CFG0                  [format 0x%-8X [expr 0x112+$offset]] RW    [15:0]     [RXDFE_H4_CFG0]"
  puts "RXDFE_H3_CFG1                  [format 0x%-8X [expr 0x113+$offset]] RW    [15:0]     [RXDFE_H3_CFG1]"
  puts "CH_HSPMUX                      [format 0x%-8X [expr 0x116+$offset]] RW    [15:0]     [CH_HSPMUX]"
  puts "PCIE3_CLK_COR_MIN_LAT          [format 0x%-8X [expr 0x117+$offset]] RW    [15:11]    [PCIE3_CLK_COR_MIN_LAT]"
  puts "PCIE3_CLK_COR_MAX_LAT          [format 0x%-8X [expr 0x117+$offset]] RW    [10:6]     [PCIE3_CLK_COR_MAX_LAT]"
  puts "PCIE3_CLK_COR_THRSH_TIMER      [format 0x%-8X [expr 0x117+$offset]] RW    [5:0]      [PCIE3_CLK_COR_THRSH_TIMER]"
  puts "USB_MODE                       [format 0x%-8X [expr 0x118+$offset]] RW    [15:15]    [USB_MODE]"
  puts "USB_EXT_CNTL                   [format 0x%-8X [expr 0x118+$offset]] RW    [14:14]    [USB_EXT_CNTL]"
  puts "USB_CLK_COR_EQ_EN              [format 0x%-8X [expr 0x118+$offset]] RW    [13:13]    [USB_CLK_COR_EQ_EN]"
  puts "USB_PCIE_ERR_REP_DIS           [format 0x%-8X [expr 0x118+$offset]] RW    [12:12]    [USB_PCIE_ERR_REP_DIS]"
  puts "PCIE3_CLK_COR_FULL_THRSH       [format 0x%-8X [expr 0x118+$offset]] RW    [11:6]     [PCIE3_CLK_COR_FULL_THRSH]"
  puts "PCIE3_CLK_COR_EMPTY_THRSH      [format 0x%-8X [expr 0x118+$offset]] RW    [4:0]      [PCIE3_CLK_COR_EMPTY_THRSH]"
  puts "USB_RAW_ELEC                   [format 0x%-8X [expr 0x119+$offset]] RW    [15:15]    [USB_RAW_ELEC]"
  puts "DELAY_ELEC                     [format 0x%-8X [expr 0x119+$offset]] RW    [14:14]    [DELAY_ELEC]"
  puts "USB_BOTH_BURST_IDLE            [format 0x%-8X [expr 0x119+$offset]] RW    [13:13]    [USB_BOTH_BURST_IDLE]"
  puts "TXREFCLKDIV2_SEL               [format 0x%-8X [expr 0x119+$offset]] RW    [12:12]    [TXREFCLKDIV2_SEL]"
  puts "TX_DEEMPH2                     [format 0x%-8X [expr 0x119+$offset]] RW    [11:6]     [TX_DEEMPH2]"
  puts "TX_DEEMPH3                     [format 0x%-8X [expr 0x119+$offset]] RW    [5:0]      [TX_DEEMPH3]"
  puts "RXREFCLKDIV2_SEL               [format 0x%-8X [expr 0x11a+$offset]] RW    [6:6]      [RXREFCLKDIV2_SEL]"
  puts "A_RXTERMINATION                [format 0x%-8X [expr 0x11a+$offset]] RW    [5:5]      [A_RXTERMINATION]"
  puts "USB_LFPS_TPERIOD               [format 0x%-8X [expr 0x11a+$offset]] RW    [4:1]      [USB_LFPS_TPERIOD]"
  puts "USB_LFPS_TPERIOD_ACCURATE      [format 0x%-8X [expr 0x11a+$offset]] RW    [0:0]      [USB_LFPS_TPERIOD_ACCURATE]"
  puts "RXCDR_CFG2_GEN4                [format 0x%-8X [expr 0x11b+$offset]] RW    [15:0]     [RXCDR_CFG2_GEN4]"
  puts "RXCDR_CFG3_GEN4                [format 0x%-8X [expr 0x11c+$offset]] RW    [15:0]     [RXCDR_CFG3_GEN4]"
  puts "USB_BURSTMIN_U3WAKE            [format 0x%-8X [expr 0x11d+$offset]] RW    [14:8]     [USB_BURSTMIN_U3WAKE]"
  puts "USB_BURSTMAX_U3WAKE            [format 0x%-8X [expr 0x11d+$offset]] RW    [6:0]      [USB_BURSTMAX_U3WAKE]"
  puts "USB_IDLEMIN_POLLING            [format 0x%-8X [expr 0x11e+$offset]] RW    [9:0]      [USB_IDLEMIN_POLLING]"
  puts "USB_IDLEMAX_POLLING            [format 0x%-8X [expr 0x11f+$offset]] RW    [9:0]      [USB_IDLEMAX_POLLING]"
  puts "USB_LFPSPOLLING_BURST          [format 0x%-8X [expr 0x120+$offset]] RW    [8:0]      [USB_LFPSPOLLING_BURST]"
  puts "USB_LFPSPING_BURST             [format 0x%-8X [expr 0x121+$offset]] RW    [8:0]      [USB_LFPSPING_BURST]"
  puts "USB_LFPSU1EXIT_BURST           [format 0x%-8X [expr 0x122+$offset]] RW    [8:0]      [USB_LFPSU1EXIT_BURST]"
  puts "USB_LFPSU2LPEXIT_BURST_MS      [format 0x%-8X [expr 0x123+$offset]] RW    [8:0]      [USB_LFPSU2LPEXIT_BURST_MS]"
  puts "USB_LFPSU3WAKE_BURST_MS        [format 0x%-8X [expr 0x124+$offset]] RW    [8:0]      [USB_LFPSU3WAKE_BURST_MS]"
  puts "USB_LFPSPOLLING_IDLE_MS        [format 0x%-8X [expr 0x125+$offset]] RW    [8:0]      [USB_LFPSPOLLING_IDLE_MS]"
  puts "RXDFE_HA_CFG1                  [format 0x%-8X [expr 0x126+$offset]] RW    [15:0]     [RXDFE_HA_CFG1]"
  puts "RXDFE_HB_CFG0                  [format 0x%-8X [expr 0x127+$offset]] RW    [15:0]     [RXDFE_HB_CFG0]"
  puts "RXCDR_CFG3_GEN2                [format 0x%-8X [expr 0x135+$offset]] RW    [15:10]    [RXCDR_CFG3_GEN2]"
  puts "RXCDR_CFG2_GEN2                [format 0x%-8X [expr 0x135+$offset]] RW    [9:0]      [RXCDR_CFG2_GEN2]"
  puts "COMMA_ALIGN_LATENCY            [format 0x%-8X [expr 0x250+$offset]] RO    [6:0]      [COMMA_ALIGN_LATENCY]"
  puts "es_error_count                 [format 0x%-8X [expr 0x251+$offset]] RO    [15:0]     [es_error_count]"
  puts "es_sample_count                [format 0x%-8X [expr 0x252+$offset]] RO    [15:0]     [es_sample_count]"
  puts "es_control_status              [format 0x%-8X [expr 0x253+$offset]] RO    [3:0]      [es_control_status]"
  puts "es_rdata_byte4                 [format 0x%-8X [expr 0x254+$offset]] RO    [15:0]     [es_rdata_byte4]"
  puts "es_rdata_byte3                 [format 0x%-8X [expr 0x255+$offset]] RO    [15:0]     [es_rdata_byte3]"
  puts "es_rdata_byte2                 [format 0x%-8X [expr 0x256+$offset]] RO    [15:0]     [es_rdata_byte2]"
  puts "es_rdata_byte1                 [format 0x%-8X [expr 0x257+$offset]] RO    [15:0]     [es_rdata_byte1]"
  puts "es_rdata_byte0                 [format 0x%-8X [expr 0x258+$offset]] RO    [15:0]     [es_rdata_byte0]"
  puts "es_sdata_byte4                 [format 0x%-8X [expr 0x259+$offset]] RO    [15:0]     [es_sdata_byte4]"
  puts "es_sdata_byte3                 [format 0x%-8X [expr 0x25a+$offset]] RO    [15:0]     [es_sdata_byte3]"
  puts "es_sdata_byte2                 [format 0x%-8X [expr 0x25b+$offset]] RO    [15:0]     [es_sdata_byte2]"
  puts "es_sdata_byte1                 [format 0x%-8X [expr 0x25c+$offset]] RO    [15:0]     [es_sdata_byte1]"
  puts "es_sdata_byte0                 [format 0x%-8X [expr 0x25d+$offset]] RO    [15:0]     [es_sdata_byte0]"
  puts "RX_PRBS_ERR_CNT                [format 0x%-8X [expr 0x25e+$offset]] RO    [15:0]     [RX_PRBS_ERR_CNT]"
  puts "RX_PRBS_ERR_CNT                [format 0x%-8X [expr 0x25f+$offset]] RO    [15:0]     [RX_PRBS_ERR_CNT]"
  puts "TXGBOX_FIFO_LATENCY            [format 0x%-8X [expr 0x263+$offset]] RO    [15:0]     [TXGBOX_FIFO_LATENCY]"
  puts "RXGBOX_FIFO_LATENCY            [format 0x%-8X [expr 0x269+$offset]] RO    [15:0]     [RXGBOX_FIFO_LATENCY]"
  puts "es_sdata_byte5                 [format 0x%-8X [expr 0x283+$offset]] RO    [15:0]     [es_sdata_byte5]"
  puts "es_sdata_byte6                 [format 0x%-8X [expr 0x284+$offset]] RO    [15:0]     [es_sdata_byte6]"
  puts "es_sdata_byte7                 [format 0x%-8X [expr 0x285+$offset]] RO    [15:0]     [es_sdata_byte7]"
  puts "es_sdata_byte8                 [format 0x%-8X [expr 0x286+$offset]] RO    [15:0]     [es_sdata_byte8]"
  puts "es_sdata_byte9                 [format 0x%-8X [expr 0x287+$offset]] RO    [15:0]     [es_sdata_byte9]"
  puts "es_rdata_byte5                 [format 0x%-8X [expr 0x288+$offset]] RO    [15:0]     [es_rdata_byte5]"
  puts "es_rdata_byte6                 [format 0x%-8X [expr 0x289+$offset]] RO    [15:0]     [es_rdata_byte6]"
  puts "es_rdata_byte7                 [format 0x%-8X [expr 0x28a+$offset]] RO    [15:0]     [es_rdata_byte7]"
  puts "es_rdata_byte8                 [format 0x%-8X [expr 0x28b+$offset]] RO    [15:0]     [es_rdata_byte8]"
  puts "es_rdata_byte9                 [format 0x%-8X [expr 0x28c+$offset]] RO    [15:0]     [es_rdata_byte9]"
}
set offset [expr (1<<12)*0]
