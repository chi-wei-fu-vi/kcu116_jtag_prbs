set drp_addr_width 10
set drp_count 1
set address_range [expr $drp_count * 2**($drp_addr_width + 2) ]

get_hw_axis
reset_hw_axi [get_hw_axis]

set offset [expr 0x00000000]
create_hw_axi_txn my_read [get_hw_axis hw_axi_1] -type read -address [format %.8X $offset] -force

set_msg_config -id {[Labtoolstcl 44-481]} -limit $address_range
for {set i 0} {$i < $address_range} {set i [expr $i + 4]} {
    
    set tmp_address [format %.8X  [expr $i+$offset] ]
#    puts "Reading Address $tmp_address"
    puts "set_property CMD.ADDR $tmp_address \[get_hw_axi_txns my_read\]"
    set_property CMD.ADDR $tmp_address [get_hw_axi_txns my_read]
    run_hw_axi [get_hw_axi_txns my_read]
}

display_hw_ila_data [upload_hw_ila_data hw_ila_3]
