
proc QPLL0_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG0 $offset $wdata]
  }
}
proc read_QPLL0_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+8*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+8*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc COMMON_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_COMMON_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_COMMON_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_COMMON_CFG0 $offset $wdata]
  }
}
proc read_COMMON_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+9*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_COMMON_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+9*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RSVD_ATTR0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RSVD_ATTR0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RSVD_ATTR0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RSVD_ATTR0 $offset $wdata]
  }
}
proc read_RSVD_ATTR0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+11*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RSVD_ATTR0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+11*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PPF0_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PPF0_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PPF0_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PPF0_CFG $offset $wdata]
  }
}
proc read_PPF0_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+13*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PPF0_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+13*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0CLKOUT_RATE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0CLKOUT_RATE $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_QPLL0CLKOUT_RATE $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0CLKOUT_RATE $offset $wdata]
  }
}
proc read_QPLL0CLKOUT_RATE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+14*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0CLKOUT_RATE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+14*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG1 $offset $wdata]
  }
}
proc read_QPLL0_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+16*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+16*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG2 $offset $wdata]
  }
}
proc read_QPLL0_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+17*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+17*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_LOCK_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_LOCK_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_LOCK_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_LOCK_CFG $offset $wdata]
  }
}
proc read_QPLL0_LOCK_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+18*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_LOCK_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+18*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_INIT_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_INIT_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_INIT_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_INIT_CFG0 $offset $wdata]
  }
}
proc read_QPLL0_INIT_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+19*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_INIT_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+19*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_INIT_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_INIT_CFG1 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_QPLL0_INIT_CFG1 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_QPLL0_INIT_CFG1 $offset $wdata]
  }
}
proc read_QPLL0_INIT_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+20*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_INIT_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+20*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_FBDIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_FBDIV $offset] & 0xff) >> 0]
  } else {
    set mask [expr [read_QPLL0_FBDIV $offset] & ~0xff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_FBDIV $offset $wdata]
  }
}
proc read_QPLL0_FBDIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+20*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_FBDIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+20*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG3 $offset $wdata]
  }
}
proc read_QPLL0_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+21*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+21*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CP $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CP $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CP $offset $wdata]
  }
}
proc read_QPLL0_CP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+22*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+22*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_REFCLK_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_REFCLK_DIV $offset] & 0xf80) >> 7]
  } else {
    set mask [expr [read_QPLL0_REFCLK_DIV $offset] & ~0xf80]
    set wdata [expr ($data << 7) | $mask]
    return [write_QPLL0_REFCLK_DIV $offset $wdata]
  }
}
proc read_QPLL0_REFCLK_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+24*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_REFCLK_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+24*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_IPS_REFCLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_IPS_REFCLK_SEL $offset] & 0x38) >> 3]
  } else {
    set mask [expr [read_QPLL0_IPS_REFCLK_SEL $offset] & ~0x38]
    set wdata [expr ($data << 3) | $mask]
    return [write_QPLL0_IPS_REFCLK_SEL $offset $wdata]
  }
}
proc read_QPLL0_IPS_REFCLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+24*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_IPS_REFCLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+24*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_IPS_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_IPS_EN $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_QPLL0_IPS_EN $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_IPS_EN $offset $wdata]
  }
}
proc read_QPLL0_IPS_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+24*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_IPS_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+24*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_LPF { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_LPF $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL0_LPF $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_LPF $offset $wdata]
  }
}
proc read_QPLL0_LPF { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+25*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_LPF { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+25*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CFG1_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG1_G3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG1_G3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG1_G3 $offset $wdata]
  }
}
proc read_QPLL0_CFG1_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+26*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG1_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+26*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CFG2_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG2_G3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG2_G3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG2_G3 $offset $wdata]
  }
}
proc read_QPLL0_CFG2_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+27*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG2_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+27*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_LPF_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_LPF_G3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL0_LPF_G3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_LPF_G3 $offset $wdata]
  }
}
proc read_QPLL0_LPF_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+28*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_LPF_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+28*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_LOCK_CFG_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_LOCK_CFG_G3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_LOCK_CFG_G3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_LOCK_CFG_G3 $offset $wdata]
  }
}
proc read_QPLL0_LOCK_CFG_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+29*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_LOCK_CFG_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+29*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RSVD_ATTR0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RSVD_ATTR0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RSVD_ATTR0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RSVD_ATTR0 $offset $wdata]
  }
}
proc read_RSVD_ATTR0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+30*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RSVD_ATTR0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+30*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_FBDIV_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_FBDIV_G3 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_QPLL0_FBDIV_G3 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_QPLL0_FBDIV_G3 $offset $wdata]
  }
}
proc read_QPLL0_FBDIV_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+31*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_FBDIV_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+31*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_RATE_SW_USE_DRP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_RATE_SW_USE_DRP $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_QPLL0_RATE_SW_USE_DRP $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_QPLL0_RATE_SW_USE_DRP $offset $wdata]
  }
}
proc read_QPLL0_RATE_SW_USE_DRP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+31*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_RATE_SW_USE_DRP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+31*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_PCIE_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_PCIE_EN $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_QPLL0_PCIE_EN $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_QPLL0_PCIE_EN $offset $wdata]
  }
}
proc read_QPLL0_PCIE_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+31*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_PCIE_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+31*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXRECCLKOUT0_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXRECCLKOUT0_SEL $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RXRECCLKOUT0_SEL $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXRECCLKOUT0_SEL $offset $wdata]
  }
}
proc read_RXRECCLKOUT0_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+31*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXRECCLKOUT0_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+31*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_SDM_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_SDM_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_SDM_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_SDM_CFG0 $offset $wdata]
  }
}
proc read_QPLL0_SDM_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+32*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_SDM_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+32*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_SDM_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_SDM_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_SDM_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_SDM_CFG1 $offset $wdata]
  }
}
proc read_QPLL0_SDM_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+33*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_SDM_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+33*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SDM0INITSEED0_0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SDM0INITSEED0_0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_SDM0INITSEED0_0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_SDM0INITSEED0_0 $offset $wdata]
  }
}
proc read_SDM0INITSEED0_0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+34*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SDM0INITSEED0_0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+34*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SDM0INITSEED0_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SDM0INITSEED0_1 $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_SDM0INITSEED0_1 $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_SDM0INITSEED0_1 $offset $wdata]
  }
}
proc read_SDM0INITSEED0_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+35*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SDM0INITSEED0_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+35*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_SDM_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_SDM_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_SDM_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_SDM_CFG2 $offset $wdata]
  }
}
proc read_QPLL0_SDM_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+36*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_SDM_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+36*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CP_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CP_G3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CP_G3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CP_G3 $offset $wdata]
  }
}
proc read_QPLL0_CP_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+37*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CP_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+37*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RSVD_ATTR1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RSVD_ATTR1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RSVD_ATTR1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RSVD_ATTR1 $offset $wdata]
  }
}
proc read_RSVD_ATTR1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+45*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RSVD_ATTR1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+45*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL0_CFG4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL0_CFG4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL0_CFG4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL0_CFG4 $offset $wdata]
  }
}
proc read_QPLL0_CFG4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+48*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL0_CFG4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+48*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG0 $offset $wdata]
  }
}
proc read_UB_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+72*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+72*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG1 $offset $wdata]
  }
}
proc read_UB_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+76*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+76*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG2 $offset $wdata]
  }
}
proc read_UB_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+80*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+80*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG3 $offset $wdata]
  }
}
proc read_UB_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+84*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+84*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG4 $offset $wdata]
  }
}
proc read_UB_CFG4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+88*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+88*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG5 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG5 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG5 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG5 $offset $wdata]
  }
}
proc read_UB_CFG5 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+92*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG5 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+92*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc UB_CFG6 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_UB_CFG6 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_UB_CFG6 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_UB_CFG6 $offset $wdata]
  }
}
proc read_UB_CFG6 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+95*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_UB_CFG6 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+95*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BIAS_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BIAS_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_BIAS_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_BIAS_CFG0 $offset $wdata]
  }
}
proc read_BIAS_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+129*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BIAS_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+129*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BIAS_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BIAS_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_BIAS_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_BIAS_CFG1 $offset $wdata]
  }
}
proc read_BIAS_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+130*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BIAS_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+130*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BIAS_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BIAS_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_BIAS_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_BIAS_CFG2 $offset $wdata]
  }
}
proc read_BIAS_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+131*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BIAS_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+131*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BIAS_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BIAS_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_BIAS_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_BIAS_CFG3 $offset $wdata]
  }
}
proc read_BIAS_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+132*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BIAS_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+132*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BIAS_CFG4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BIAS_CFG4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_BIAS_CFG4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_BIAS_CFG4 $offset $wdata]
  }
}
proc read_BIAS_CFG4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+134*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BIAS_CFG4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+134*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG0 $offset $wdata]
  }
}
proc read_QPLL1_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+136*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+136*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc COMMON_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_COMMON_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_COMMON_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_COMMON_CFG1 $offset $wdata]
  }
}
proc read_COMMON_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+137*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_COMMON_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+137*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc POR_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_POR_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_POR_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_POR_CFG $offset $wdata]
  }
}
proc read_POR_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+139*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_POR_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+139*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc PPF1_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_PPF1_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_PPF1_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_PPF1_CFG $offset $wdata]
  }
}
proc read_PPF1_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+141*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_PPF1_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+141*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1CLKOUT_RATE { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1CLKOUT_RATE $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_QPLL1CLKOUT_RATE $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1CLKOUT_RATE $offset $wdata]
  }
}
proc read_QPLL1CLKOUT_RATE { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+142*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1CLKOUT_RATE { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+142*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc BIAS_CFG_RSVD { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_BIAS_CFG_RSVD $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_BIAS_CFG_RSVD $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_BIAS_CFG_RSVD $offset $wdata]
  }
}
proc read_BIAS_CFG_RSVD { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+143*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_BIAS_CFG_RSVD { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+143*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG1 $offset $wdata]
  }
}
proc read_QPLL1_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+144*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+144*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG2 $offset $wdata]
  }
}
proc read_QPLL1_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+145*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+145*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_LOCK_CFG { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_LOCK_CFG $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_LOCK_CFG $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_LOCK_CFG $offset $wdata]
  }
}
proc read_QPLL1_LOCK_CFG { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+146*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_LOCK_CFG { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+146*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_INIT_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_INIT_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_INIT_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_INIT_CFG0 $offset $wdata]
  }
}
proc read_QPLL1_INIT_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+147*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_INIT_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+147*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_INIT_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_INIT_CFG1 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_QPLL1_INIT_CFG1 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_QPLL1_INIT_CFG1 $offset $wdata]
  }
}
proc read_QPLL1_INIT_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+148*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_INIT_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+148*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_FBDIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_FBDIV $offset] & 0xff) >> 0]
  } else {
    set mask [expr [read_QPLL1_FBDIV $offset] & ~0xff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_FBDIV $offset $wdata]
  }
}
proc read_QPLL1_FBDIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+148*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_FBDIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+148*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG3 $offset $wdata]
  }
}
proc read_QPLL1_CFG3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+149*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+149*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CP $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CP $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CP $offset $wdata]
  }
}
proc read_QPLL1_CP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+150*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+150*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_REFCLK_DIV { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_REFCLK_DIV $offset] & 0xf80) >> 7]
  } else {
    set mask [expr [read_QPLL1_REFCLK_DIV $offset] & ~0xf80]
    set wdata [expr ($data << 7) | $mask]
    return [write_QPLL1_REFCLK_DIV $offset $wdata]
  }
}
proc read_QPLL1_REFCLK_DIV { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+152*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_REFCLK_DIV { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+152*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_IPS_REFCLK_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_IPS_REFCLK_SEL $offset] & 0x38) >> 3]
  } else {
    set mask [expr [read_QPLL1_IPS_REFCLK_SEL $offset] & ~0x38]
    set wdata [expr ($data << 3) | $mask]
    return [write_QPLL1_IPS_REFCLK_SEL $offset $wdata]
  }
}
proc read_QPLL1_IPS_REFCLK_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+152*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_IPS_REFCLK_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+152*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SARC_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SARC_EN $offset] & 0x1000) >> 12]
  } else {
    set mask [expr [read_SARC_EN $offset] & ~0x1000]
    set wdata [expr ($data << 12) | $mask]
    return [write_SARC_EN $offset $wdata]
  }
}
proc read_SARC_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+152*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SARC_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+152*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_IPS_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_IPS_EN $offset] & 0x40) >> 6]
  } else {
    set mask [expr [read_QPLL1_IPS_EN $offset] & ~0x40]
    set wdata [expr ($data << 6) | $mask]
    return [write_QPLL1_IPS_EN $offset $wdata]
  }
}
proc read_QPLL1_IPS_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+152*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_IPS_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+152*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SARC_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SARC_SEL $offset] & 0x2000) >> 13]
  } else {
    set mask [expr [read_SARC_SEL $offset] & ~0x2000]
    set wdata [expr ($data << 13) | $mask]
    return [write_SARC_SEL $offset $wdata]
  }
}
proc read_SARC_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+152*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SARC_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+152*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_LPF { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_LPF $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_LPF $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_LPF $offset $wdata]
  }
}
proc read_QPLL1_LPF { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+153*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_LPF { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+153*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG1_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG1_G3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG1_G3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG1_G3 $offset $wdata]
  }
}
proc read_QPLL1_CFG1_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+154*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG1_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+154*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG2_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG2_G3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG2_G3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG2_G3 $offset $wdata]
  }
}
proc read_QPLL1_CFG2_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+155*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG2_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+155*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_LPF_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_LPF_G3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL1_LPF_G3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_LPF_G3 $offset $wdata]
  }
}
proc read_QPLL1_LPF_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+156*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_LPF_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+156*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_LOCK_CFG_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_LOCK_CFG_G3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_LOCK_CFG_G3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_LOCK_CFG_G3 $offset $wdata]
  }
}
proc read_QPLL1_LOCK_CFG_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+157*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_LOCK_CFG_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+157*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RSVD_ATTR2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RSVD_ATTR2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RSVD_ATTR2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RSVD_ATTR2 $offset $wdata]
  }
}
proc read_RSVD_ATTR2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+158*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RSVD_ATTR2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+158*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_FBDIV_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_FBDIV_G3 $offset] & 0xff00) >> 8]
  } else {
    set mask [expr [read_QPLL1_FBDIV_G3 $offset] & ~0xff00]
    set wdata [expr ($data << 8) | $mask]
    return [write_QPLL1_FBDIV_G3 $offset $wdata]
  }
}
proc read_QPLL1_FBDIV_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+159*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_FBDIV_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+159*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_RATE_SW_USE_DRP { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_RATE_SW_USE_DRP $offset] & 0x8) >> 3]
  } else {
    set mask [expr [read_QPLL1_RATE_SW_USE_DRP $offset] & ~0x8]
    set wdata [expr ($data << 3) | $mask]
    return [write_QPLL1_RATE_SW_USE_DRP $offset $wdata]
  }
}
proc read_QPLL1_RATE_SW_USE_DRP { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+159*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_RATE_SW_USE_DRP { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+159*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_PCI_EN { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_PCI_EN $offset] & 0x4) >> 2]
  } else {
    set mask [expr [read_QPLL1_PCI_EN $offset] & ~0x4]
    set wdata [expr ($data << 2) | $mask]
    return [write_QPLL1_PCI_EN $offset $wdata]
  }
}
proc read_QPLL1_PCI_EN { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+159*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_PCI_EN { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+159*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RXRECCLKOUT1_SEL { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RXRECCLKOUT1_SEL $offset] & 0x1) >> 0]
  } else {
    set mask [expr [read_RXRECCLKOUT1_SEL $offset] & ~0x1]
    set wdata [expr ($data << 0) | $mask]
    return [write_RXRECCLKOUT1_SEL $offset $wdata]
  }
}
proc read_RXRECCLKOUT1_SEL { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+159*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RXRECCLKOUT1_SEL { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+159*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_SDM_CFG0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_SDM_CFG0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_SDM_CFG0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_SDM_CFG0 $offset $wdata]
  }
}
proc read_QPLL1_SDM_CFG0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+160*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_SDM_CFG0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+160*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_SDM_CFG1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_SDM_CFG1 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_SDM_CFG1 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_SDM_CFG1 $offset $wdata]
  }
}
proc read_QPLL1_SDM_CFG1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+161*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_SDM_CFG1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+161*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SDM1INITSEED0_0 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SDM1INITSEED0_0 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_SDM1INITSEED0_0 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_SDM1INITSEED0_0 $offset $wdata]
  }
}
proc read_SDM1INITSEED0_0 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+162*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SDM1INITSEED0_0 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+162*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc SDM1INITSEED0_1 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_SDM1INITSEED0_1 $offset] & 0x1ff) >> 0]
  } else {
    set mask [expr [read_SDM1INITSEED0_1 $offset] & ~0x1ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_SDM1INITSEED0_1 $offset $wdata]
  }
}
proc read_SDM1INITSEED0_1 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+163*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_SDM1INITSEED0_1 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+163*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_SDM_CFG2 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_SDM_CFG2 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_SDM_CFG2 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_SDM_CFG2 $offset $wdata]
  }
}
proc read_QPLL1_SDM_CFG2 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+164*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_SDM_CFG2 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+164*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CP_G3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CP_G3 $offset] & 0x3ff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CP_G3 $offset] & ~0x3ff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CP_G3 $offset $wdata]
  }
}
proc read_QPLL1_CP_G3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+165*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CP_G3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+165*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc RSVD_ATTR3 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_RSVD_ATTR3 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_RSVD_ATTR3 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_RSVD_ATTR3 $offset $wdata]
  }
}
proc read_RSVD_ATTR3 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+173*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_RSVD_ATTR3 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+173*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc QPLL1_CFG4 { { data "" } } {
  global offset
  if { $data eq "" } {
    return [expr ([read_QPLL1_CFG4 $offset] & 0xffff) >> 0]
  } else {
    set mask [expr [read_QPLL1_CFG4 $offset] & ~0xffff]
    set wdata [expr ($data << 0) | $mask]
    return [write_QPLL1_CFG4 $offset $wdata]
  }
}
proc read_QPLL1_CFG4 { offset } {
  create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -type read -address [format %.8X [expr $offset+176*4 ] ] -force
  run_hw_axi [get_hw_axi_txns rd_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn rd_txn -t d8]] 1]
}
proc write_QPLL1_CFG4 { offset  data } {
  create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address [format %.8X [expr $offset+176*4 ] ] -data [format %.8X $data] -force
  run_hw_axi [get_hw_axi_txns wr_txn]  -quiet
  return [lindex [regexp -inline -all -- {\S+} [report_hw_axi_txn wr_txn -t d8]] 1]
}

proc help_gty_common_api {} {
  global offset
  puts "QPLL0_CFG0                     [format 0x%-8X [expr 0x8+$offset]] RW    [15:0]"
  puts "COMMON_CFG0                    [format 0x%-8X [expr 0x9+$offset]] RW    [15:0]"
  puts "RSVD_ATTR0                     [format 0x%-8X [expr 0xb+$offset]] RW    [15:0]"
  puts "PPF0_CFG                       [format 0x%-8X [expr 0xd+$offset]] RW    [15:0]"
  puts "QPLL0CLKOUT_RATE               [format 0x%-8X [expr 0xe+$offset]] RW    [0:0]"
  puts "QPLL0_CFG1                     [format 0x%-8X [expr 0x10+$offset]] RW    [15:0]"
  puts "QPLL0_CFG2                     [format 0x%-8X [expr 0x11+$offset]] RW    [15:0]"
  puts "QPLL0_LOCK_CFG                 [format 0x%-8X [expr 0x12+$offset]] RW    [15:0]"
  puts "QPLL0_INIT_CFG0                [format 0x%-8X [expr 0x13+$offset]] RW    [15:0]"
  puts "QPLL0_INIT_CFG1                [format 0x%-8X [expr 0x14+$offset]] RW    [15:8]"
  puts "QPLL0_FBDIV                    [format 0x%-8X [expr 0x14+$offset]] RW    [7:0]"
  puts "QPLL0_CFG3                     [format 0x%-8X [expr 0x15+$offset]] RW    [15:0]"
  puts "QPLL0_CP                       [format 0x%-8X [expr 0x16+$offset]] RW    [9:0]"
  puts "QPLL0_REFCLK_DIV               [format 0x%-8X [expr 0x18+$offset]] RW    [11:7]"
  puts "QPLL0_IPS_REFCLK_SEL           [format 0x%-8X [expr 0x18+$offset]] RW    [5:3]"
  puts "QPLL0_IPS_EN                   [format 0x%-8X [expr 0x18+$offset]] RW    [0:0]"
  puts "QPLL0_LPF                      [format 0x%-8X [expr 0x19+$offset]] RW    [9:0]"
  puts "QPLL0_CFG1_G3                  [format 0x%-8X [expr 0x1a+$offset]] RW    [15:0]"
  puts "QPLL0_CFG2_G3                  [format 0x%-8X [expr 0x1b+$offset]] RW    [15:0]"
  puts "QPLL0_LPF_G3                   [format 0x%-8X [expr 0x1c+$offset]] RW    [9:0]"
  puts "QPLL0_LOCK_CFG_G3              [format 0x%-8X [expr 0x1d+$offset]] RW    [15:0]"
  puts "RSVD_ATTR0                     [format 0x%-8X [expr 0x1e+$offset]] RW    [15:0]"
  puts "QPLL0_FBDIV_G3                 [format 0x%-8X [expr 0x1f+$offset]] RW    [15:8]"
  puts "QPLL0_RATE_SW_USE_DRP          [format 0x%-8X [expr 0x1f+$offset]] RW    [3:3]"
  puts "QPLL0_PCIE_EN                  [format 0x%-8X [expr 0x1f+$offset]] RW    [2:2]"
  puts "RXRECCLKOUT0_SEL               [format 0x%-8X [expr 0x1f+$offset]] RW    [0:0]"
  puts "QPLL0_SDM_CFG0                 [format 0x%-8X [expr 0x20+$offset]] RW    [15:0]"
  puts "QPLL0_SDM_CFG1                 [format 0x%-8X [expr 0x21+$offset]] RW    [15:0]"
  puts "SDM0INITSEED0_0                [format 0x%-8X [expr 0x22+$offset]] RW    [15:0]"
  puts "SDM0INITSEED0_1                [format 0x%-8X [expr 0x23+$offset]] RW    [8:0]"
  puts "QPLL0_SDM_CFG2                 [format 0x%-8X [expr 0x24+$offset]] RW    [15:0]"
  puts "QPLL0_CP_G3                    [format 0x%-8X [expr 0x25+$offset]] RW    [9:0]"
  puts "RSVD_ATTR1                     [format 0x%-8X [expr 0x2d+$offset]] RW    [15:0]"
  puts "QPLL0_CFG4                     [format 0x%-8X [expr 0x30+$offset]] RW    [15:0]"
  puts "UB_CFG0                        [format 0x%-8X [expr 0x48+$offset]] RW    [15:0]"
  puts "UB_CFG1                        [format 0x%-8X [expr 0x4c+$offset]] RW    [15:0]"
  puts "UB_CFG2                        [format 0x%-8X [expr 0x50+$offset]] RW    [15:0]"
  puts "UB_CFG3                        [format 0x%-8X [expr 0x54+$offset]] RW    [15:0]"
  puts "UB_CFG4                        [format 0x%-8X [expr 0x58+$offset]] RW    [15:0]"
  puts "UB_CFG5                        [format 0x%-8X [expr 0x5c+$offset]] RW    [15:0]"
  puts "UB_CFG6                        [format 0x%-8X [expr 0x5f+$offset]] RW    [15:0]"
  puts "BIAS_CFG0                      [format 0x%-8X [expr 0x81+$offset]] RW    [15:0]"
  puts "BIAS_CFG1                      [format 0x%-8X [expr 0x82+$offset]] RW    [15:0]"
  puts "BIAS_CFG2                      [format 0x%-8X [expr 0x83+$offset]] RW    [15:0]"
  puts "BIAS_CFG3                      [format 0x%-8X [expr 0x84+$offset]] RW    [15:0]"
  puts "BIAS_CFG4                      [format 0x%-8X [expr 0x86+$offset]] RW    [15:0]"
  puts "QPLL1_CFG0                     [format 0x%-8X [expr 0x88+$offset]] RW    [15:0]"
  puts "COMMON_CFG1                    [format 0x%-8X [expr 0x89+$offset]] RW    [15:0]"
  puts "POR_CFG                        [format 0x%-8X [expr 0x8b+$offset]] RW    [15:0]"
  puts "PPF1_CFG                       [format 0x%-8X [expr 0x8d+$offset]] RW    [15:0]"
  puts "QPLL1CLKOUT_RATE               [format 0x%-8X [expr 0x8e+$offset]] RW    [0:0]"
  puts "BIAS_CFG_RSVD                  [format 0x%-8X [expr 0x8f+$offset]] RW    [15:0]"
  puts "QPLL1_CFG1                     [format 0x%-8X [expr 0x90+$offset]] RW    [15:0]"
  puts "QPLL1_CFG2                     [format 0x%-8X [expr 0x91+$offset]] RW    [15:0]"
  puts "QPLL1_LOCK_CFG                 [format 0x%-8X [expr 0x92+$offset]] RW    [15:0]"
  puts "QPLL1_INIT_CFG0                [format 0x%-8X [expr 0x93+$offset]] RW    [15:0]"
  puts "QPLL1_INIT_CFG1                [format 0x%-8X [expr 0x94+$offset]] RW    [15:8]"
  puts "QPLL1_FBDIV                    [format 0x%-8X [expr 0x94+$offset]] RW    [7:0]"
  puts "QPLL1_CFG3                     [format 0x%-8X [expr 0x95+$offset]] RW    [15:0]"
  puts "QPLL1_CP                       [format 0x%-8X [expr 0x96+$offset]] RW    [9:0]"
  puts "QPLL1_REFCLK_DIV               [format 0x%-8X [expr 0x98+$offset]] RW    [11:7]"
  puts "QPLL1_IPS_REFCLK_SEL           [format 0x%-8X [expr 0x98+$offset]] RW    [5:3]"
  puts "SARC_EN                        [format 0x%-8X [expr 0x98+$offset]] RW    [12:12]"
  puts "QPLL1_IPS_EN                   [format 0x%-8X [expr 0x98+$offset]] RW    [6:6]"
  puts "SARC_SEL                       [format 0x%-8X [expr 0x98+$offset]] RW    [13:13]"
  puts "QPLL1_LPF                      [format 0x%-8X [expr 0x99+$offset]] RW    [15:0]"
  puts "QPLL1_CFG1_G3                  [format 0x%-8X [expr 0x9a+$offset]] RW    [15:0]"
  puts "QPLL1_CFG2_G3                  [format 0x%-8X [expr 0x9b+$offset]] RW    [15:0]"
  puts "QPLL1_LPF_G3                   [format 0x%-8X [expr 0x9c+$offset]] RW    [9:0]"
  puts "QPLL1_LOCK_CFG_G3              [format 0x%-8X [expr 0x9d+$offset]] RW    [15:0]"
  puts "RSVD_ATTR2                     [format 0x%-8X [expr 0x9e+$offset]] RW    [15:0]"
  puts "QPLL1_FBDIV_G3                 [format 0x%-8X [expr 0x9f+$offset]] RW    [15:8]"
  puts "QPLL1_RATE_SW_USE_DRP          [format 0x%-8X [expr 0x9f+$offset]] RW    [3:3]"
  puts "QPLL1_PCI_EN                   [format 0x%-8X [expr 0x9f+$offset]] RW    [2:2]"
  puts "RXRECCLKOUT1_SEL               [format 0x%-8X [expr 0x9f+$offset]] RW    [0:0]"
  puts "QPLL1_SDM_CFG0                 [format 0x%-8X [expr 0xa0+$offset]] RW    [15:0]"
  puts "QPLL1_SDM_CFG1                 [format 0x%-8X [expr 0xa1+$offset]] RW    [15:0]"
  puts "SDM1INITSEED0_0                [format 0x%-8X [expr 0xa2+$offset]] RW    [15:0]"
  puts "SDM1INITSEED0_1                [format 0x%-8X [expr 0xa3+$offset]] RW    [8:0]"
  puts "QPLL1_SDM_CFG2                 [format 0x%-8X [expr 0xa4+$offset]] RW    [15:0]"
  puts "QPLL1_CP_G3                    [format 0x%-8X [expr 0xa5+$offset]] RW    [9:0]"
  puts "RSVD_ATTR3                     [format 0x%-8X [expr 0xad+$offset]] RW    [15:0]"
  puts "QPLL1_CFG4                     [format 0x%-8X [expr 0xb0+$offset]] RW    [15:0]"
}

proc dump_gty_common_api {} {
  global offset
  puts "QPLL0_CFG0                     [format 0x%-8X [expr 0x8+$offset]] RW    [15:0]     [QPLL0_CFG0]"
  puts "COMMON_CFG0                    [format 0x%-8X [expr 0x9+$offset]] RW    [15:0]     [COMMON_CFG0]"
  puts "RSVD_ATTR0                     [format 0x%-8X [expr 0xb+$offset]] RW    [15:0]     [RSVD_ATTR0]"
  puts "PPF0_CFG                       [format 0x%-8X [expr 0xd+$offset]] RW    [15:0]     [PPF0_CFG]"
  puts "QPLL0CLKOUT_RATE               [format 0x%-8X [expr 0xe+$offset]] RW    [0:0]      [QPLL0CLKOUT_RATE]"
  puts "QPLL0_CFG1                     [format 0x%-8X [expr 0x10+$offset]] RW    [15:0]     [QPLL0_CFG1]"
  puts "QPLL0_CFG2                     [format 0x%-8X [expr 0x11+$offset]] RW    [15:0]     [QPLL0_CFG2]"
  puts "QPLL0_LOCK_CFG                 [format 0x%-8X [expr 0x12+$offset]] RW    [15:0]     [QPLL0_LOCK_CFG]"
  puts "QPLL0_INIT_CFG0                [format 0x%-8X [expr 0x13+$offset]] RW    [15:0]     [QPLL0_INIT_CFG0]"
  puts "QPLL0_INIT_CFG1                [format 0x%-8X [expr 0x14+$offset]] RW    [15:8]     [QPLL0_INIT_CFG1]"
  puts "QPLL0_FBDIV                    [format 0x%-8X [expr 0x14+$offset]] RW    [7:0]      [QPLL0_FBDIV]"
  puts "QPLL0_CFG3                     [format 0x%-8X [expr 0x15+$offset]] RW    [15:0]     [QPLL0_CFG3]"
  puts "QPLL0_CP                       [format 0x%-8X [expr 0x16+$offset]] RW    [9:0]      [QPLL0_CP]"
  puts "QPLL0_REFCLK_DIV               [format 0x%-8X [expr 0x18+$offset]] RW    [11:7]     [QPLL0_REFCLK_DIV]"
  puts "QPLL0_IPS_REFCLK_SEL           [format 0x%-8X [expr 0x18+$offset]] RW    [5:3]      [QPLL0_IPS_REFCLK_SEL]"
  puts "QPLL0_IPS_EN                   [format 0x%-8X [expr 0x18+$offset]] RW    [0:0]      [QPLL0_IPS_EN]"
  puts "QPLL0_LPF                      [format 0x%-8X [expr 0x19+$offset]] RW    [9:0]      [QPLL0_LPF]"
  puts "QPLL0_CFG1_G3                  [format 0x%-8X [expr 0x1a+$offset]] RW    [15:0]     [QPLL0_CFG1_G3]"
  puts "QPLL0_CFG2_G3                  [format 0x%-8X [expr 0x1b+$offset]] RW    [15:0]     [QPLL0_CFG2_G3]"
  puts "QPLL0_LPF_G3                   [format 0x%-8X [expr 0x1c+$offset]] RW    [9:0]      [QPLL0_LPF_G3]"
  puts "QPLL0_LOCK_CFG_G3              [format 0x%-8X [expr 0x1d+$offset]] RW    [15:0]     [QPLL0_LOCK_CFG_G3]"
  puts "RSVD_ATTR0                     [format 0x%-8X [expr 0x1e+$offset]] RW    [15:0]     [RSVD_ATTR0]"
  puts "QPLL0_FBDIV_G3                 [format 0x%-8X [expr 0x1f+$offset]] RW    [15:8]     [QPLL0_FBDIV_G3]"
  puts "QPLL0_RATE_SW_USE_DRP          [format 0x%-8X [expr 0x1f+$offset]] RW    [3:3]      [QPLL0_RATE_SW_USE_DRP]"
  puts "QPLL0_PCIE_EN                  [format 0x%-8X [expr 0x1f+$offset]] RW    [2:2]      [QPLL0_PCIE_EN]"
  puts "RXRECCLKOUT0_SEL               [format 0x%-8X [expr 0x1f+$offset]] RW    [0:0]      [RXRECCLKOUT0_SEL]"
  puts "QPLL0_SDM_CFG0                 [format 0x%-8X [expr 0x20+$offset]] RW    [15:0]     [QPLL0_SDM_CFG0]"
  puts "QPLL0_SDM_CFG1                 [format 0x%-8X [expr 0x21+$offset]] RW    [15:0]     [QPLL0_SDM_CFG1]"
  puts "SDM0INITSEED0_0                [format 0x%-8X [expr 0x22+$offset]] RW    [15:0]     [SDM0INITSEED0_0]"
  puts "SDM0INITSEED0_1                [format 0x%-8X [expr 0x23+$offset]] RW    [8:0]      [SDM0INITSEED0_1]"
  puts "QPLL0_SDM_CFG2                 [format 0x%-8X [expr 0x24+$offset]] RW    [15:0]     [QPLL0_SDM_CFG2]"
  puts "QPLL0_CP_G3                    [format 0x%-8X [expr 0x25+$offset]] RW    [9:0]      [QPLL0_CP_G3]"
  puts "RSVD_ATTR1                     [format 0x%-8X [expr 0x2d+$offset]] RW    [15:0]     [RSVD_ATTR1]"
  puts "QPLL0_CFG4                     [format 0x%-8X [expr 0x30+$offset]] RW    [15:0]     [QPLL0_CFG4]"
  puts "UB_CFG0                        [format 0x%-8X [expr 0x48+$offset]] RW    [15:0]     [UB_CFG0]"
  puts "UB_CFG1                        [format 0x%-8X [expr 0x4c+$offset]] RW    [15:0]     [UB_CFG1]"
  puts "UB_CFG2                        [format 0x%-8X [expr 0x50+$offset]] RW    [15:0]     [UB_CFG2]"
  puts "UB_CFG3                        [format 0x%-8X [expr 0x54+$offset]] RW    [15:0]     [UB_CFG3]"
  puts "UB_CFG4                        [format 0x%-8X [expr 0x58+$offset]] RW    [15:0]     [UB_CFG4]"
  puts "UB_CFG5                        [format 0x%-8X [expr 0x5c+$offset]] RW    [15:0]     [UB_CFG5]"
  puts "UB_CFG6                        [format 0x%-8X [expr 0x5f+$offset]] RW    [15:0]     [UB_CFG6]"
  puts "BIAS_CFG0                      [format 0x%-8X [expr 0x81+$offset]] RW    [15:0]     [BIAS_CFG0]"
  puts "BIAS_CFG1                      [format 0x%-8X [expr 0x82+$offset]] RW    [15:0]     [BIAS_CFG1]"
  puts "BIAS_CFG2                      [format 0x%-8X [expr 0x83+$offset]] RW    [15:0]     [BIAS_CFG2]"
  puts "BIAS_CFG3                      [format 0x%-8X [expr 0x84+$offset]] RW    [15:0]     [BIAS_CFG3]"
  puts "BIAS_CFG4                      [format 0x%-8X [expr 0x86+$offset]] RW    [15:0]     [BIAS_CFG4]"
  puts "QPLL1_CFG0                     [format 0x%-8X [expr 0x88+$offset]] RW    [15:0]     [QPLL1_CFG0]"
  puts "COMMON_CFG1                    [format 0x%-8X [expr 0x89+$offset]] RW    [15:0]     [COMMON_CFG1]"
  puts "POR_CFG                        [format 0x%-8X [expr 0x8b+$offset]] RW    [15:0]     [POR_CFG]"
  puts "PPF1_CFG                       [format 0x%-8X [expr 0x8d+$offset]] RW    [15:0]     [PPF1_CFG]"
  puts "QPLL1CLKOUT_RATE               [format 0x%-8X [expr 0x8e+$offset]] RW    [0:0]      [QPLL1CLKOUT_RATE]"
  puts "BIAS_CFG_RSVD                  [format 0x%-8X [expr 0x8f+$offset]] RW    [15:0]     [BIAS_CFG_RSVD]"
  puts "QPLL1_CFG1                     [format 0x%-8X [expr 0x90+$offset]] RW    [15:0]     [QPLL1_CFG1]"
  puts "QPLL1_CFG2                     [format 0x%-8X [expr 0x91+$offset]] RW    [15:0]     [QPLL1_CFG2]"
  puts "QPLL1_LOCK_CFG                 [format 0x%-8X [expr 0x92+$offset]] RW    [15:0]     [QPLL1_LOCK_CFG]"
  puts "QPLL1_INIT_CFG0                [format 0x%-8X [expr 0x93+$offset]] RW    [15:0]     [QPLL1_INIT_CFG0]"
  puts "QPLL1_INIT_CFG1                [format 0x%-8X [expr 0x94+$offset]] RW    [15:8]     [QPLL1_INIT_CFG1]"
  puts "QPLL1_FBDIV                    [format 0x%-8X [expr 0x94+$offset]] RW    [7:0]      [QPLL1_FBDIV]"
  puts "QPLL1_CFG3                     [format 0x%-8X [expr 0x95+$offset]] RW    [15:0]     [QPLL1_CFG3]"
  puts "QPLL1_CP                       [format 0x%-8X [expr 0x96+$offset]] RW    [9:0]      [QPLL1_CP]"
  puts "QPLL1_REFCLK_DIV               [format 0x%-8X [expr 0x98+$offset]] RW    [11:7]     [QPLL1_REFCLK_DIV]"
  puts "QPLL1_IPS_REFCLK_SEL           [format 0x%-8X [expr 0x98+$offset]] RW    [5:3]      [QPLL1_IPS_REFCLK_SEL]"
  puts "SARC_EN                        [format 0x%-8X [expr 0x98+$offset]] RW    [12:12]    [SARC_EN]"
  puts "QPLL1_IPS_EN                   [format 0x%-8X [expr 0x98+$offset]] RW    [6:6]      [QPLL1_IPS_EN]"
  puts "SARC_SEL                       [format 0x%-8X [expr 0x98+$offset]] RW    [13:13]    [SARC_SEL]"
  puts "QPLL1_LPF                      [format 0x%-8X [expr 0x99+$offset]] RW    [15:0]     [QPLL1_LPF]"
  puts "QPLL1_CFG1_G3                  [format 0x%-8X [expr 0x9a+$offset]] RW    [15:0]     [QPLL1_CFG1_G3]"
  puts "QPLL1_CFG2_G3                  [format 0x%-8X [expr 0x9b+$offset]] RW    [15:0]     [QPLL1_CFG2_G3]"
  puts "QPLL1_LPF_G3                   [format 0x%-8X [expr 0x9c+$offset]] RW    [9:0]      [QPLL1_LPF_G3]"
  puts "QPLL1_LOCK_CFG_G3              [format 0x%-8X [expr 0x9d+$offset]] RW    [15:0]     [QPLL1_LOCK_CFG_G3]"
  puts "RSVD_ATTR2                     [format 0x%-8X [expr 0x9e+$offset]] RW    [15:0]     [RSVD_ATTR2]"
  puts "QPLL1_FBDIV_G3                 [format 0x%-8X [expr 0x9f+$offset]] RW    [15:8]     [QPLL1_FBDIV_G3]"
  puts "QPLL1_RATE_SW_USE_DRP          [format 0x%-8X [expr 0x9f+$offset]] RW    [3:3]      [QPLL1_RATE_SW_USE_DRP]"
  puts "QPLL1_PCI_EN                   [format 0x%-8X [expr 0x9f+$offset]] RW    [2:2]      [QPLL1_PCI_EN]"
  puts "RXRECCLKOUT1_SEL               [format 0x%-8X [expr 0x9f+$offset]] RW    [0:0]      [RXRECCLKOUT1_SEL]"
  puts "QPLL1_SDM_CFG0                 [format 0x%-8X [expr 0xa0+$offset]] RW    [15:0]     [QPLL1_SDM_CFG0]"
  puts "QPLL1_SDM_CFG1                 [format 0x%-8X [expr 0xa1+$offset]] RW    [15:0]     [QPLL1_SDM_CFG1]"
  puts "SDM1INITSEED0_0                [format 0x%-8X [expr 0xa2+$offset]] RW    [15:0]     [SDM1INITSEED0_0]"
  puts "SDM1INITSEED0_1                [format 0x%-8X [expr 0xa3+$offset]] RW    [8:0]      [SDM1INITSEED0_1]"
  puts "QPLL1_SDM_CFG2                 [format 0x%-8X [expr 0xa4+$offset]] RW    [15:0]     [QPLL1_SDM_CFG2]"
  puts "QPLL1_CP_G3                    [format 0x%-8X [expr 0xa5+$offset]] RW    [9:0]      [QPLL1_CP_G3]"
  puts "RSVD_ATTR3                     [format 0x%-8X [expr 0xad+$offset]] RW    [15:0]     [RSVD_ATTR3]"
  puts "QPLL1_CFG4                     [format 0x%-8X [expr 0xb0+$offset]] RW    [15:0]     [QPLL1_CFG4]"
}
set offset [expr (1<<12)*0]
