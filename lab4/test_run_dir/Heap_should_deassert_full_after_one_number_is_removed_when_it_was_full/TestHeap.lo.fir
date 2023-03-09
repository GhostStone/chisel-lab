FIRRTL version 1.1.0
circuit TestHeap :
  module Fetcher :
    input clock : Clock
    input reset : UInt<1>
    input io_req_index : UInt<4>
    input io_req_size : UInt<4>
    input io_req_valid : UInt<1>
    output io_res_parent_item : UInt<8>
    output io_res_parent_index : UInt<4>
    output io_res_children_0_valid : UInt<1>
    output io_res_children_0_data_item : UInt<8>
    output io_res_children_0_data_index : UInt<4>
    output io_res_children_1_valid : UInt<1>
    output io_res_children_1_data_item : UInt<8>
    output io_res_children_1_data_index : UInt<4>
    output io_res_valid : UInt<1>
    output io_mem_index : UInt<4>
    output io_mem_withSiblings : UInt<1>
    input io_mem_values_0 : UInt<8>
    input io_mem_values_1 : UInt<8>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Fetcher.scala 35:25]
    reg validReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), validReg) @[Fetcher.scala 36:25]
    reg sizeReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sizeReg) @[Fetcher.scala 38:24]
    reg parentIndexReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), parentIndexReg) @[Fetcher.scala 40:31]
    reg childIndexReg_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), childIndexReg_0) @[Fetcher.scala 41:30]
    reg childIndexReg_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), childIndexReg_1) @[Fetcher.scala 41:30]
    reg parentReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), parentReg) @[Fetcher.scala 42:26]
    reg childrenReg_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), childrenReg_0) @[Fetcher.scala 43:28]
    reg childrenReg_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), childrenReg_1) @[Fetcher.scala 43:28]
    reg maskReg_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maskReg_0) @[Fetcher.scala 44:24]
    reg maskReg_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maskReg_1) @[Fetcher.scala 44:24]
    node _T = asUInt(UInt<1>("h0")) @[Fetcher.scala 55:20]
    node _T_1 = asUInt(stateReg) @[Fetcher.scala 55:20]
    node _T_2 = eq(_T, _T_1) @[Fetcher.scala 55:20]
    node _stateReg_T = mux(io_req_valid, UInt<1>("h1"), UInt<1>("h0")) @[Fetcher.scala 57:22]
    node _T_3 = asUInt(UInt<1>("h1")) @[Fetcher.scala 55:20]
    node _T_4 = asUInt(stateReg) @[Fetcher.scala 55:20]
    node _T_5 = eq(_T_3, _T_4) @[Fetcher.scala 55:20]
    node _T_6 = shl(parentIndexReg, 1) @[Fetcher.scala 67:70]
    node _T_7 = add(_T_6, UInt<1>("h1")) @[Fetcher.scala 67:93]
    node _T_8 = tail(_T_7, 1) @[Fetcher.scala 67:93]
    node _T_9 = shl(parentIndexReg, 1) @[Fetcher.scala 67:70]
    node _T_10 = add(_T_9, UInt<2>("h2")) @[Fetcher.scala 67:93]
    node _T_11 = tail(_T_10, 1) @[Fetcher.scala 67:93]
    node _T_12 = asUInt(UInt<2>("h2")) @[Fetcher.scala 55:20]
    node _T_13 = asUInt(stateReg) @[Fetcher.scala 55:20]
    node _T_14 = eq(_T_12, _T_13) @[Fetcher.scala 55:20]
    node _T_15 = asUInt(UInt<2>("h3")) @[Fetcher.scala 55:20]
    node _T_16 = asUInt(stateReg) @[Fetcher.scala 55:20]
    node _T_17 = eq(_T_15, _T_16) @[Fetcher.scala 55:20]
    node _T_18 = lt(childIndexReg_0, sizeReg) @[Fetcher.scala 83:46]
    node _T_19 = lt(childIndexReg_1, sizeReg) @[Fetcher.scala 83:46]
    node _GEN_0 = mux(_T_17, UInt<1>("h0"), stateReg) @[Fetcher.scala 55:20 80:16 35:25]
    node _GEN_1 = mux(_T_17, io_mem_values_0, childrenReg_0) @[Fetcher.scala 55:20 82:19 43:28]
    node _GEN_2 = mux(_T_17, io_mem_values_1, childrenReg_1) @[Fetcher.scala 55:20 82:19 43:28]
    node _WIRE_1_0 = _T_18 @[Fetcher.scala 83:{25,25}]
    node _GEN_3 = mux(_T_17, _WIRE_1_0, maskReg_0) @[Fetcher.scala 55:20 83:15 44:24]
    node _WIRE_1_1 = _T_19 @[Fetcher.scala 83:{25,25}]
    node _GEN_4 = mux(_T_17, _WIRE_1_1, maskReg_1) @[Fetcher.scala 55:20 83:15 44:24]
    node _GEN_5 = mux(_T_17, UInt<1>("h1"), validReg) @[Fetcher.scala 55:20 85:16 36:25]
    node _GEN_6 = mux(_T_14, UInt<2>("h3"), _GEN_0) @[Fetcher.scala 55:20 72:16]
    node _GEN_7 = mux(_T_14, io_mem_values_0, parentReg) @[Fetcher.scala 55:20 74:17 42:26]
    node _GEN_8 = mux(_T_14, childIndexReg_0, parentIndexReg) @[Fetcher.scala 53:16 55:20 76:20]
    node _GEN_9 = mux(_T_14, UInt<1>("h1"), UInt<1>("h0")) @[Fetcher.scala 55:20 52:23 77:27]
    node _GEN_10 = mux(_T_14, childrenReg_0, _GEN_1) @[Fetcher.scala 55:20 43:28]
    node _GEN_11 = mux(_T_14, childrenReg_1, _GEN_2) @[Fetcher.scala 55:20 43:28]
    node _GEN_12 = mux(_T_14, maskReg_0, _GEN_3) @[Fetcher.scala 55:20 44:24]
    node _GEN_13 = mux(_T_14, maskReg_1, _GEN_4) @[Fetcher.scala 55:20 44:24]
    node _GEN_14 = mux(_T_14, validReg, _GEN_5) @[Fetcher.scala 55:20 36:25]
    node _GEN_15 = mux(_T_5, UInt<2>("h2"), _GEN_6) @[Fetcher.scala 55:20 65:16]
    node _WIRE__0 = _T_8 @[Fetcher.scala 67:{31,31}]
    node _GEN_16 = mux(_T_5, _WIRE__0, childIndexReg_0) @[Fetcher.scala 55:20 67:21 41:30]
    node _WIRE__1 = _T_11 @[Fetcher.scala 67:{31,31}]
    node _GEN_17 = mux(_T_5, _WIRE__1, childIndexReg_1) @[Fetcher.scala 55:20 67:21 41:30]
    node _GEN_18 = mux(_T_5, parentIndexReg, _GEN_8) @[Fetcher.scala 55:20 69:20]
    node _GEN_19 = mux(_T_5, parentReg, _GEN_7) @[Fetcher.scala 55:20 42:26]
    node _GEN_20 = mux(_T_5, UInt<1>("h0"), _GEN_9) @[Fetcher.scala 55:20 52:23]
    node _GEN_21 = mux(_T_5, childrenReg_0, _GEN_10) @[Fetcher.scala 55:20 43:28]
    node _GEN_22 = mux(_T_5, childrenReg_1, _GEN_11) @[Fetcher.scala 55:20 43:28]
    node _GEN_23 = mux(_T_5, maskReg_0, _GEN_12) @[Fetcher.scala 55:20 44:24]
    node _GEN_24 = mux(_T_5, maskReg_1, _GEN_13) @[Fetcher.scala 55:20 44:24]
    node _GEN_25 = mux(_T_5, validReg, _GEN_14) @[Fetcher.scala 55:20 36:25]
    node _GEN_26 = mux(_T_2, _stateReg_T, _GEN_15) @[Fetcher.scala 55:20 57:16]
    node _GEN_27 = mux(_T_2, io_req_index, parentIndexReg) @[Fetcher.scala 55:20 59:22 40:31]
    node _GEN_28 = mux(_T_2, io_req_size, sizeReg) @[Fetcher.scala 55:20 60:15 38:24]
    node _GEN_29 = mux(_T_2, validReg, UInt<1>("h0")) @[Fetcher.scala 51:16 55:20 62:20]
    node _GEN_30 = mux(_T_2, childIndexReg_0, _GEN_16) @[Fetcher.scala 55:20 41:30]
    node _GEN_31 = mux(_T_2, childIndexReg_1, _GEN_17) @[Fetcher.scala 55:20 41:30]
    node _GEN_32 = mux(_T_2, parentIndexReg, _GEN_18) @[Fetcher.scala 53:16 55:20]
    node _GEN_33 = mux(_T_2, parentReg, _GEN_19) @[Fetcher.scala 55:20 42:26]
    node _GEN_34 = mux(_T_2, UInt<1>("h0"), _GEN_20) @[Fetcher.scala 55:20 52:23]
    node _GEN_35 = mux(_T_2, childrenReg_0, _GEN_21) @[Fetcher.scala 55:20 43:28]
    node _GEN_36 = mux(_T_2, childrenReg_1, _GEN_22) @[Fetcher.scala 55:20 43:28]
    node _GEN_37 = mux(_T_2, maskReg_0, _GEN_23) @[Fetcher.scala 55:20 44:24]
    node _GEN_38 = mux(_T_2, maskReg_1, _GEN_24) @[Fetcher.scala 55:20 44:24]
    node _GEN_39 = mux(_T_2, validReg, _GEN_25) @[Fetcher.scala 55:20 36:25]
    node _childIndexReg_WIRE_0 = UInt<4>("h0") @[Fetcher.scala 41:{38,38}]
    node _childIndexReg_WIRE_1 = UInt<4>("h0") @[Fetcher.scala 41:{38,38}]
    node _childrenReg_WIRE_0 = UInt<8>("h0") @[Fetcher.scala 43:{36,36}]
    node _childrenReg_WIRE_1 = UInt<8>("h0") @[Fetcher.scala 43:{36,36}]
    node _maskReg_WIRE_0 = UInt<1>("h0") @[Fetcher.scala 44:{32,32}]
    node _maskReg_WIRE_1 = UInt<1>("h0") @[Fetcher.scala 44:{32,32}]
    node io_res_parent_w_item = parentReg @[package.scala 19:19 20:14]
    node io_res_parent_w_index = parentIndexReg @[package.scala 19:19 21:15]
    node w_item = childrenReg_0 @[package.scala 19:19 20:14]
    node w_index = childIndexReg_0 @[package.scala 19:19 21:15]
    node v_valid = maskReg_0 @[package.scala 37:19 38:15]
    node v_data_item = w_item @[package.scala 37:19 39:14]
    node v_data_index = w_index @[package.scala 37:19 39:14]
    node w_1_item = childrenReg_1 @[package.scala 19:19 20:14]
    node w_1_index = childIndexReg_1 @[package.scala 19:19 21:15]
    node v_1_valid = maskReg_1 @[package.scala 37:19 38:15]
    node v_1_data_item = w_1_item @[package.scala 37:19 39:14]
    node v_1_data_index = w_1_index @[package.scala 37:19 39:14]
    io_res_parent_item <= io_res_parent_w_item @[Fetcher.scala 45:17]
    io_res_parent_index <= io_res_parent_w_index @[Fetcher.scala 45:17]
    io_res_children_0_valid <= v_valid @[Fetcher.scala 47:19]
    io_res_children_0_data_item <= v_data_item @[Fetcher.scala 47:19]
    io_res_children_0_data_index <= v_data_index @[Fetcher.scala 47:19]
    io_res_children_1_valid <= v_1_valid @[Fetcher.scala 47:19]
    io_res_children_1_data_item <= v_1_data_item @[Fetcher.scala 47:19]
    io_res_children_1_data_index <= v_1_data_index @[Fetcher.scala 47:19]
    io_res_valid <= _GEN_29
    io_mem_index <= _GEN_32
    io_mem_withSiblings <= _GEN_34
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_26) @[Fetcher.scala 35:{25,25}]
    validReg <= mux(reset, UInt<1>("h0"), _GEN_39) @[Fetcher.scala 36:{25,25}]
    sizeReg <= mux(reset, UInt<4>("h0"), _GEN_28) @[Fetcher.scala 38:{24,24}]
    parentIndexReg <= mux(reset, UInt<4>("h0"), _GEN_27) @[Fetcher.scala 40:{31,31}]
    childIndexReg_0 <= bits(mux(reset, _childIndexReg_WIRE_0, _GEN_30), 3, 0) @[Fetcher.scala 41:{30,30}]
    childIndexReg_1 <= bits(mux(reset, _childIndexReg_WIRE_1, _GEN_31), 3, 0) @[Fetcher.scala 41:{30,30}]
    parentReg <= mux(reset, UInt<8>("h0"), _GEN_33) @[Fetcher.scala 42:{26,26}]
    childrenReg_0 <= mux(reset, _childrenReg_WIRE_0, _GEN_35) @[Fetcher.scala 43:{28,28}]
    childrenReg_1 <= mux(reset, _childrenReg_WIRE_1, _GEN_36) @[Fetcher.scala 43:{28,28}]
    maskReg_0 <= mux(reset, _maskReg_WIRE_0, _GEN_37) @[Fetcher.scala 44:{24,24}]
    maskReg_1 <= mux(reset, _maskReg_WIRE_1, _GEN_38) @[Fetcher.scala 44:{24,24}]

  module Swapper :
    input clock : Clock
    input reset : UInt<1>
    input io_req_values_0_item : UInt<8>
    input io_req_values_0_index : UInt<4>
    input io_req_values_1_item : UInt<8>
    input io_req_values_1_index : UInt<4>
    input io_req_valid : UInt<1>
    output io_req_ready : UInt<1>
    output io_mem_index : UInt<4>
    output io_mem_value : UInt<8>
    output io_mem_valid : UInt<1>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Swapper.scala 29:25]
    reg valuesReg_0_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), valuesReg_0_item) @[Swapper.scala 30:22]
    reg valuesReg_0_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), valuesReg_0_index) @[Swapper.scala 30:22]
    reg valuesReg_1_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), valuesReg_1_item) @[Swapper.scala 30:22]
    reg valuesReg_1_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), valuesReg_1_index) @[Swapper.scala 30:22]
    node _T = asUInt(UInt<1>("h0")) @[Swapper.scala 36:20]
    node _T_1 = asUInt(stateReg) @[Swapper.scala 36:20]
    node _T_2 = eq(_T, _T_1) @[Swapper.scala 36:20]
    node _stateReg_T = mux(io_req_valid, UInt<1>("h1"), UInt<1>("h0")) @[Swapper.scala 38:22]
    node _T_3 = asUInt(UInt<1>("h1")) @[Swapper.scala 36:20]
    node _T_4 = asUInt(stateReg) @[Swapper.scala 36:20]
    node _T_5 = eq(_T_3, _T_4) @[Swapper.scala 36:20]
    node _T_6 = asUInt(UInt<2>("h2")) @[Swapper.scala 36:20]
    node _T_7 = asUInt(stateReg) @[Swapper.scala 36:20]
    node _T_8 = eq(_T_6, _T_7) @[Swapper.scala 36:20]
    node _GEN_0 = mux(_T_8, UInt<1>("h0"), stateReg) @[Swapper.scala 36:20 50:16 29:25]
    node _GEN_1 = validif(_T_8, valuesReg_1_index) @[Swapper.scala 36:20 52:20]
    node _GEN_2 = validif(_T_8, valuesReg_0_item) @[Swapper.scala 36:20 53:20]
    node _GEN_3 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[Swapper.scala 34:16 36:20 54:20]
    node _GEN_4 = mux(_T_5, UInt<2>("h2"), _GEN_0) @[Swapper.scala 36:20 43:16]
    node _GEN_5 = mux(_T_5, valuesReg_0_index, _GEN_1) @[Swapper.scala 36:20 45:20]
    node _GEN_6 = mux(_T_5, valuesReg_1_item, _GEN_2) @[Swapper.scala 36:20 46:20]
    node _GEN_7 = mux(_T_5, UInt<1>("h1"), _GEN_3) @[Swapper.scala 36:20 47:20]
    node _GEN_8 = mux(_T_2, _stateReg_T, _GEN_4) @[Swapper.scala 36:20 38:16]
    node _GEN_9 = mux(_T_2, io_req_values_0_item, valuesReg_0_item) @[Swapper.scala 36:20 39:17 30:22]
    node _GEN_10 = mux(_T_2, io_req_values_0_index, valuesReg_0_index) @[Swapper.scala 36:20 39:17 30:22]
    node _GEN_11 = mux(_T_2, io_req_values_1_item, valuesReg_1_item) @[Swapper.scala 36:20 39:17 30:22]
    node _GEN_12 = mux(_T_2, io_req_values_1_index, valuesReg_1_index) @[Swapper.scala 36:20 39:17 30:22]
    node _GEN_13 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Swapper.scala 32:16 36:20 40:20]
    node _GEN_14 = validif(eq(_T_2, UInt<1>("h0")), _GEN_5) @[Swapper.scala 36:20]
    node _GEN_15 = validif(eq(_T_2, UInt<1>("h0")), _GEN_6) @[Swapper.scala 36:20]
    node _GEN_16 = mux(_T_2, UInt<1>("h0"), _GEN_7) @[Swapper.scala 34:16 36:20]
    io_req_ready <= _GEN_13
    io_mem_index <= _GEN_14
    io_mem_value <= _GEN_15
    io_mem_valid <= _GEN_16
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_8) @[Swapper.scala 29:{25,25}]
    valuesReg_0_item <= _GEN_9
    valuesReg_0_index <= _GEN_10
    valuesReg_1_item <= _GEN_11
    valuesReg_1_index <= _GEN_12

  module HeapMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_read_index : UInt<4>
    input io_read_withSiblings : UInt<1>
    output io_read_values_0 : UInt<8>
    output io_read_values_1 : UInt<8>
    input io_write_index : UInt<4>
    input io_write_value : UInt<8>
    input io_write_valid : UInt<1>
    output io_root : UInt<8>

    mem banks_0 : @[HeapMemory.scala 38:38]
      data-type => UInt<8>
      depth => 4
      read-latency => 1
      write-latency => 1
      reader => readValues_MPORT
      writer => MPORT
      read-under-write => undefined
    mem banks_1 : @[HeapMemory.scala 38:38]
      data-type => UInt<8>
      depth => 4
      read-latency => 1
      write-latency => 1
      reader => readValues_MPORT_1
      writer => MPORT_1
      read-under-write => undefined
    reg rootReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), rootReg) @[HeapMemory.scala 39:24]
    node _T = sub(io_read_index, UInt<1>("h1")) @[HeapMemory.scala 42:51]
    node _T_1 = tail(_T, 1) @[HeapMemory.scala 42:51]
    node readRow = bits(_T_1, 3, 1) @[HeapMemory.scala 23:55]
    node readColumn = bits(_T_1, 0, 0) @[HeapMemory.scala 23:88]
    node _GEN_0 = validif(UInt<1>("h1"), readRow) @[HeapMemory.scala 43:{44,44}]
    node _readValues_WIRE = _GEN_0 @[HeapMemory.scala 43:44]
    node _readValues_T = or(_readValues_WIRE, UInt<2>("h0")) @[HeapMemory.scala 43:44]
    node _readValues_T_1 = bits(_readValues_T, 1, 0) @[HeapMemory.scala 43:44]
    node _GEN_1 = mux(UInt<1>("h1"), UInt<1>("h1"), UInt<1>("h0")) @[HeapMemory.scala 38:38 43:{44,44}]
    node _GEN_2 = validif(UInt<1>("h1"), _readValues_T_1) @[HeapMemory.scala 43:{44,44}]
    node _GEN_3 = validif(UInt<1>("h1"), clock) @[HeapMemory.scala 43:{44,44}]
    node _readValues_WIRE_1 = _GEN_0 @[HeapMemory.scala 43:44]
    node _readValues_T_2 = or(_readValues_WIRE_1, UInt<2>("h0")) @[HeapMemory.scala 43:44]
    node _readValues_T_3 = bits(_readValues_T_2, 1, 0) @[HeapMemory.scala 43:44]
    node _GEN_4 = validif(UInt<1>("h1"), _readValues_T_3) @[HeapMemory.scala 43:{44,44}]
    node _T_2 = eq(io_read_withSiblings, UInt<1>("h0")) @[HeapMemory.scala 45:16]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[HeapMemory.scala 45:15]
    node _io_read_values_0_T = eq(io_read_index, UInt<1>("h0")) @[HeapMemory.scala 46:52]
    reg io_read_values_0_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_read_values_0_REG) @[HeapMemory.scala 46:37]
    reg io_read_values_0_REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_read_values_0_REG_1) @[HeapMemory.scala 46:89]
    node _io_read_values_0_T_1 = or(io_read_values_0_REG_1, UInt<1>("h0"))
    node _io_read_values_0_T_2 = bits(_io_read_values_0_T_1, 0, 0)
    node readValues_0 = banks_0.readValues_MPORT.data @[HeapMemory.scala 43:{27,27}]
    node _GEN_5 = validif(eq(UInt<1>("h0"), _io_read_values_0_T_2), readValues_0) @[HeapMemory.scala 46:{29,29}]
    node readValues_1 = banks_1.readValues_MPORT_1.data @[HeapMemory.scala 43:{27,27}]
    node _GEN_6 = mux(eq(UInt<1>("h1"), _io_read_values_0_T_2), readValues_1, _GEN_5) @[HeapMemory.scala 46:{29,29}]
    node _readValues_io_read_values_0_T_2 = _GEN_6 @[HeapMemory.scala 46:29]
    node _io_read_values_0_T_3 = mux(io_read_values_0_REG, rootReg, _readValues_io_read_values_0_T_2) @[HeapMemory.scala 46:29]
    node _GEN_7 = mux(REG, _io_read_values_0_T_3, readValues_0) @[HeapMemory.scala 44:18 45:40 46:23]
    node _T_3 = sub(io_write_index, UInt<1>("h1")) @[HeapMemory.scala 49:54]
    node _T_4 = tail(_T_3, 1) @[HeapMemory.scala 49:54]
    node writeRow = bits(_T_4, 3, 1) @[HeapMemory.scala 23:55]
    node writeColumn = bits(_T_4, 0, 0) @[HeapMemory.scala 23:88]
    node _writeBankMask_T = dshl(UInt<1>("h1"), writeColumn) @[OneHot.scala 57:35]
    node writeBankMask_0 = bits(_writeBankMask_T, 0, 0) @[HeapMemory.scala 50:45]
    node writeBankMask_1 = bits(_writeBankMask_T, 1, 1) @[HeapMemory.scala 50:45]
    node _T_5 = eq(io_write_index, UInt<1>("h0")) @[HeapMemory.scala 52:25]
    node _T_6 = bits(writeRow, 1, 0)
    node _GEN_8 = validif(writeBankMask_0, _T_6) @[HeapMemory.scala 56:17]
    node _GEN_9 = validif(writeBankMask_0, clock) @[HeapMemory.scala 56:17]
    node _GEN_10 = mux(writeBankMask_0, UInt<1>("h1"), UInt<1>("h0")) @[HeapMemory.scala 56:17 38:38]
    node _GEN_11 = validif(writeBankMask_0, UInt<1>("h1")) @[HeapMemory.scala 56:17]
    node _GEN_12 = validif(writeBankMask_0, io_write_value) @[HeapMemory.scala 56:17]
    node _T_7 = bits(writeRow, 1, 0)
    node _GEN_13 = validif(writeBankMask_1, _T_7) @[HeapMemory.scala 56:17]
    node _GEN_14 = validif(writeBankMask_1, clock) @[HeapMemory.scala 56:17]
    node _GEN_15 = mux(writeBankMask_1, UInt<1>("h1"), UInt<1>("h0")) @[HeapMemory.scala 56:17 38:38]
    node _GEN_16 = validif(writeBankMask_1, UInt<1>("h1")) @[HeapMemory.scala 56:17]
    node _GEN_17 = validif(writeBankMask_1, io_write_value) @[HeapMemory.scala 56:17]
    node _GEN_18 = mux(_T_5, io_write_value, rootReg) @[HeapMemory.scala 52:34 53:15 39:24]
    node _GEN_19 = validif(eq(_T_5, UInt<1>("h0")), _GEN_8) @[HeapMemory.scala 52:34]
    node _GEN_20 = validif(eq(_T_5, UInt<1>("h0")), _GEN_9) @[HeapMemory.scala 52:34]
    node _GEN_21 = mux(_T_5, UInt<1>("h0"), _GEN_10) @[HeapMemory.scala 52:34 38:38]
    node _GEN_22 = validif(eq(_T_5, UInt<1>("h0")), _GEN_11) @[HeapMemory.scala 52:34]
    node _GEN_23 = validif(eq(_T_5, UInt<1>("h0")), _GEN_12) @[HeapMemory.scala 52:34]
    node _GEN_24 = validif(eq(_T_5, UInt<1>("h0")), _GEN_13) @[HeapMemory.scala 52:34]
    node _GEN_25 = validif(eq(_T_5, UInt<1>("h0")), _GEN_14) @[HeapMemory.scala 52:34]
    node _GEN_26 = mux(_T_5, UInt<1>("h0"), _GEN_15) @[HeapMemory.scala 52:34 38:38]
    node _GEN_27 = validif(eq(_T_5, UInt<1>("h0")), _GEN_16) @[HeapMemory.scala 52:34]
    node _GEN_28 = validif(eq(_T_5, UInt<1>("h0")), _GEN_17) @[HeapMemory.scala 52:34]
    node _GEN_29 = mux(io_write_valid, _GEN_18, rootReg) @[HeapMemory.scala 39:24 51:24]
    node _GEN_30 = validif(io_write_valid, _GEN_19) @[HeapMemory.scala 51:24]
    node _GEN_31 = validif(io_write_valid, _GEN_20) @[HeapMemory.scala 51:24]
    node _GEN_32 = mux(io_write_valid, _GEN_21, UInt<1>("h0")) @[HeapMemory.scala 51:24 38:38]
    node _GEN_33 = validif(io_write_valid, _GEN_22) @[HeapMemory.scala 51:24]
    node _GEN_34 = validif(io_write_valid, _GEN_23) @[HeapMemory.scala 51:24]
    node _GEN_35 = validif(io_write_valid, _GEN_24) @[HeapMemory.scala 51:24]
    node _GEN_36 = validif(io_write_valid, _GEN_25) @[HeapMemory.scala 51:24]
    node _GEN_37 = mux(io_write_valid, _GEN_26, UInt<1>("h0")) @[HeapMemory.scala 51:24 38:38]
    node _GEN_38 = validif(io_write_valid, _GEN_27) @[HeapMemory.scala 51:24]
    node _GEN_39 = validif(io_write_valid, _GEN_28) @[HeapMemory.scala 51:24]
    io_read_values_0 <= _GEN_7
    io_read_values_1 <= readValues_1 @[HeapMemory.scala 44:18]
    io_root <= rootReg @[HeapMemory.scala 40:11]
    banks_0.readValues_MPORT.addr <= _GEN_2
    banks_0.readValues_MPORT.en <= _GEN_1
    banks_0.readValues_MPORT.clk <= _GEN_3
    banks_0.MPORT.addr <= _GEN_30
    banks_0.MPORT.en <= _GEN_32
    banks_0.MPORT.clk <= _GEN_31
    banks_0.MPORT.data <= _GEN_34
    banks_0.MPORT.mask <= _GEN_33
    banks_1.readValues_MPORT_1.addr <= _GEN_4
    banks_1.readValues_MPORT_1.en <= _GEN_1
    banks_1.readValues_MPORT_1.clk <= _GEN_3
    banks_1.MPORT_1.addr <= _GEN_35
    banks_1.MPORT_1.en <= _GEN_37
    banks_1.MPORT_1.clk <= _GEN_36
    banks_1.MPORT_1.data <= _GEN_39
    banks_1.MPORT_1.mask <= _GEN_38
    rootReg <= mux(reset, UInt<8>("h0"), _GEN_29) @[HeapMemory.scala 39:{24,24}]
    REG <= _T_2 @[HeapMemory.scala 45:15]
    io_read_values_0_REG <= _io_read_values_0_T @[HeapMemory.scala 46:37]
    io_read_values_0_REG_1 <= readColumn @[HeapMemory.scala 46:89]

  module HeapControl :
    input clock : Clock
    input reset : UInt<1>
    input io_req_op : UInt<1>
    input io_req_newValue : UInt<8>
    output io_req_empty : UInt<1>
    output io_req_full : UInt<1>
    input io_req_valid : UInt<1>
    output io_req_ready : UInt<1>
    output io_mem_read_index : UInt<4>
    output io_mem_read_withSiblings : UInt<1>
    input io_mem_read_values_0 : UInt<8>
    input io_mem_read_values_1 : UInt<8>
    output io_mem_write_index : UInt<4>
    output io_mem_write_value : UInt<8>
    output io_mem_write_valid : UInt<1>
    output io_mem_requestRead : UInt<1>
    output io_fetcher_index : UInt<4>
    output io_fetcher_size : UInt<4>
    output io_fetcher_valid : UInt<1>
    input io_heapifier_largest : UInt<4>
    input io_heapifier_swapped : UInt<1>
    input io_heapifier_valid : UInt<1>

    reg stateReg : UInt<3>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[HeapControl.scala 35:25]
    reg sizeReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sizeReg) @[HeapControl.scala 37:24]
    reg subtreeIndexReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), subtreeIndexReg) @[HeapControl.scala 38:32]
    reg newValueReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), newValueReg) @[HeapControl.scala 39:28]
    reg tailReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), tailReg) @[HeapControl.scala 40:24]
    node _tailIndex_T = sub(sizeReg, UInt<1>("h1")) @[HeapControl.scala 46:27]
    node tailIndex = tail(_tailIndex_T, 1) @[HeapControl.scala 46:27]
    node _full_T = eq(sizeReg, UInt<4>("h8")) @[HeapControl.scala 47:42]
    reg full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), full) @[Reg.scala 35:20]
    node _GEN_0 = mux(_full_T, UInt<1>("h1"), full) @[Reg.scala 36:18 35:20 36:22]
    node _io_req_empty_T = eq(sizeReg, UInt<1>("h0")) @[HeapControl.scala 49:27]
    node _T = asUInt(UInt<1>("h0")) @[HeapControl.scala 62:20]
    node _T_1 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_2 = eq(_T, _T_1) @[HeapControl.scala 62:20]
    node _T_3 = eq(io_req_op, UInt<1>("h0")) @[HeapControl.scala 71:24]
    node _stateReg_T = mux(full, UInt<1>("h0"), UInt<1>("h1")) @[HeapControl.scala 72:26]
    node _T_4 = lt(sizeReg, UInt<2>("h2")) @[HeapControl.scala 74:24]
    node _GEN_1 = mux(_T_4, UInt<1>("h0"), sizeReg) @[HeapControl.scala 74:31 75:21 37:24]
    node _GEN_2 = mux(_T_4, UInt<1>("h0"), UInt<3>("h4")) @[HeapControl.scala 74:31 76:22 78:22]
    node _GEN_3 = mux(_T_3, _stateReg_T, _GEN_2) @[HeapControl.scala 71:51 72:20]
    node _GEN_4 = mux(_T_3, sizeReg, _GEN_1) @[HeapControl.scala 37:24 71:51]
    node _GEN_5 = mux(io_req_valid, _GEN_3, UInt<1>("h0")) @[HeapControl.scala 70:26 82:18]
    node _GEN_6 = mux(io_req_valid, _GEN_4, sizeReg) @[HeapControl.scala 37:24 70:26]
    node _T_5 = asUInt(UInt<1>("h1")) @[HeapControl.scala 62:20]
    node _T_6 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_7 = eq(_T_5, _T_6) @[HeapControl.scala 62:20]
    node _sizeReg_T = add(sizeReg, UInt<1>("h1")) @[HeapControl.scala 90:26]
    node _sizeReg_T_1 = tail(_sizeReg_T, 1) @[HeapControl.scala 90:26]
    node _subtreeIndexReg_T = sub(sizeReg, UInt<1>("h1")) @[HeapControl.scala 42:43]
    node _subtreeIndexReg_T_1 = tail(_subtreeIndexReg_T, 1) @[HeapControl.scala 42:43]
    node _subtreeIndexReg_T_2 = shr(_subtreeIndexReg_T_1, 1) @[HeapControl.scala 42:50]
    node _stateReg_T_1 = eq(sizeReg, UInt<1>("h0")) @[HeapControl.scala 93:31]
    node _stateReg_T_2 = mux(_stateReg_T_1, UInt<1>("h0"), UInt<2>("h2")) @[HeapControl.scala 93:22]
    node _T_8 = asUInt(UInt<2>("h2")) @[HeapControl.scala 62:20]
    node _T_9 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_10 = eq(_T_8, _T_9) @[HeapControl.scala 62:20]
    node _T_11 = asUInt(UInt<2>("h3")) @[HeapControl.scala 62:20]
    node _T_12 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_13 = eq(_T_11, _T_12) @[HeapControl.scala 62:20]
    node _T_14 = neq(subtreeIndexReg, UInt<1>("h0")) @[HeapControl.scala 102:54]
    node _T_15 = and(io_heapifier_swapped, _T_14) @[HeapControl.scala 102:35]
    node _subtreeIndexReg_T_3 = sub(subtreeIndexReg, UInt<1>("h1")) @[HeapControl.scala 42:43]
    node _subtreeIndexReg_T_4 = tail(_subtreeIndexReg_T_3, 1) @[HeapControl.scala 42:43]
    node _subtreeIndexReg_T_5 = shr(_subtreeIndexReg_T_4, 1) @[HeapControl.scala 42:50]
    node _GEN_7 = mux(_T_15, _subtreeIndexReg_T_5, subtreeIndexReg) @[HeapControl.scala 102:63 103:27 38:32]
    node _GEN_8 = mux(_T_15, UInt<2>("h2"), UInt<1>("h0")) @[HeapControl.scala 102:63 104:20 106:20]
    node _GEN_9 = mux(io_heapifier_valid, _GEN_7, subtreeIndexReg) @[HeapControl.scala 101:32 38:32]
    node _GEN_10 = mux(io_heapifier_valid, _GEN_8, UInt<2>("h3")) @[HeapControl.scala 101:32 109:18]
    node _T_16 = asUInt(UInt<3>("h4")) @[HeapControl.scala 62:20]
    node _T_17 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_18 = eq(_T_16, _T_17) @[HeapControl.scala 62:20]
    node _T_19 = asUInt(UInt<3>("h5")) @[HeapControl.scala 62:20]
    node _T_20 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_21 = eq(_T_19, _T_20) @[HeapControl.scala 62:20]
    node _sizeReg_T_2 = sub(sizeReg, UInt<1>("h1")) @[HeapControl.scala 122:26]
    node _sizeReg_T_3 = tail(_sizeReg_T_2, 1) @[HeapControl.scala 122:26]
    node _stateReg_T_3 = eq(sizeReg, UInt<2>("h2")) @[HeapControl.scala 125:31]
    node _stateReg_T_4 = mux(_stateReg_T_3, UInt<1>("h0"), UInt<3>("h6")) @[HeapControl.scala 125:22]
    node _T_22 = asUInt(UInt<3>("h6")) @[HeapControl.scala 62:20]
    node _T_23 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_24 = eq(_T_22, _T_23) @[HeapControl.scala 62:20]
    node _T_25 = asUInt(UInt<3>("h7")) @[HeapControl.scala 62:20]
    node _T_26 = asUInt(stateReg) @[HeapControl.scala 62:20]
    node _T_27 = eq(_T_25, _T_26) @[HeapControl.scala 62:20]
    node _T_28 = shl(io_heapifier_largest, 1) @[HeapControl.scala 43:46]
    node _T_29 = add(_T_28, UInt<1>("h1")) @[HeapControl.scala 43:69]
    node _T_30 = tail(_T_29, 1) @[HeapControl.scala 43:69]
    node _T_31 = lt(_T_30, sizeReg) @[HeapControl.scala 134:71]
    node _T_32 = and(io_heapifier_swapped, _T_31) @[HeapControl.scala 134:35]
    node _GEN_11 = mux(_T_32, io_heapifier_largest, subtreeIndexReg) @[HeapControl.scala 134:82 135:27 38:32]
    node _GEN_12 = mux(_T_32, UInt<3>("h6"), UInt<1>("h0")) @[HeapControl.scala 134:82 136:20 139:20]
    node _GEN_13 = mux(io_heapifier_valid, _GEN_11, subtreeIndexReg) @[HeapControl.scala 133:32 38:32]
    node _GEN_14 = mux(io_heapifier_valid, _GEN_12, UInt<3>("h7")) @[HeapControl.scala 133:32 142:18]
    node _GEN_15 = mux(_T_27, _GEN_13, subtreeIndexReg) @[HeapControl.scala 62:20 38:32]
    node _GEN_16 = mux(_T_27, _GEN_14, stateReg) @[HeapControl.scala 62:20 35:25]
    node _GEN_17 = mux(_T_24, UInt<1>("h1"), UInt<1>("h0")) @[HeapControl.scala 62:20 128:24 55:20]
    node _GEN_18 = mux(_T_24, UInt<3>("h7"), _GEN_16) @[HeapControl.scala 130:16 62:20]
    node _GEN_19 = mux(_T_24, subtreeIndexReg, _GEN_15) @[HeapControl.scala 62:20 38:32]
    node _GEN_20 = validif(_T_21, tailReg) @[HeapControl.scala 62:20 118:26]
    node _GEN_21 = validif(_T_21, UInt<1>("h0")) @[HeapControl.scala 62:20 119:26]
    node _GEN_22 = mux(_T_21, UInt<1>("h1"), UInt<1>("h0")) @[HeapControl.scala 62:20 120:26 60:22]
    node _GEN_23 = mux(_T_21, _sizeReg_T_3, sizeReg) @[HeapControl.scala 122:15 62:20 37:24]
    node _GEN_24 = mux(_T_21, UInt<1>("h0"), _GEN_19) @[HeapControl.scala 62:20 123:23]
    node _GEN_25 = mux(_T_21, _stateReg_T_4, _GEN_18) @[HeapControl.scala 125:16 62:20]
    node _GEN_26 = mux(_T_21, UInt<1>("h0"), _GEN_17) @[HeapControl.scala 55:20 62:20]
    node _GEN_27 = mux(_T_18, io_mem_read_values_0, tailReg) @[HeapControl.scala 113:15 62:20 40:24]
    node _GEN_28 = mux(_T_18, UInt<3>("h5"), _GEN_25) @[HeapControl.scala 115:16 62:20]
    node _GEN_29 = validif(eq(_T_18, UInt<1>("h0")), _GEN_20) @[HeapControl.scala 62:20]
    node _GEN_30 = validif(eq(_T_18, UInt<1>("h0")), _GEN_21) @[HeapControl.scala 62:20]
    node _GEN_31 = mux(_T_18, UInt<1>("h0"), _GEN_22) @[HeapControl.scala 62:20 60:22]
    node _GEN_32 = mux(_T_18, sizeReg, _GEN_23) @[HeapControl.scala 62:20 37:24]
    node _GEN_33 = mux(_T_18, subtreeIndexReg, _GEN_24) @[HeapControl.scala 62:20 38:32]
    node _GEN_34 = mux(_T_18, UInt<1>("h0"), _GEN_26) @[HeapControl.scala 55:20 62:20]
    node _GEN_35 = mux(_T_13, _GEN_9, _GEN_33) @[HeapControl.scala 62:20]
    node _GEN_36 = mux(_T_13, _GEN_10, _GEN_28) @[HeapControl.scala 62:20]
    node _GEN_37 = mux(_T_13, tailReg, _GEN_27) @[HeapControl.scala 62:20 40:24]
    node _GEN_38 = validif(eq(_T_13, UInt<1>("h0")), _GEN_29) @[HeapControl.scala 62:20]
    node _GEN_39 = validif(eq(_T_13, UInt<1>("h0")), _GEN_30) @[HeapControl.scala 62:20]
    node _GEN_40 = mux(_T_13, UInt<1>("h0"), _GEN_31) @[HeapControl.scala 62:20 60:22]
    node _GEN_41 = mux(_T_13, sizeReg, _GEN_32) @[HeapControl.scala 62:20 37:24]
    node _GEN_42 = mux(_T_13, UInt<1>("h0"), _GEN_34) @[HeapControl.scala 55:20 62:20]
    node _GEN_43 = mux(_T_10, UInt<1>("h1"), _GEN_42) @[HeapControl.scala 62:20 96:24]
    node _GEN_44 = mux(_T_10, UInt<2>("h3"), _GEN_36) @[HeapControl.scala 62:20 98:16]
    node _GEN_45 = mux(_T_10, subtreeIndexReg, _GEN_35) @[HeapControl.scala 62:20 38:32]
    node _GEN_46 = mux(_T_10, tailReg, _GEN_37) @[HeapControl.scala 62:20 40:24]
    node _GEN_47 = validif(eq(_T_10, UInt<1>("h0")), _GEN_38) @[HeapControl.scala 62:20]
    node _GEN_48 = validif(eq(_T_10, UInt<1>("h0")), _GEN_39) @[HeapControl.scala 62:20]
    node _GEN_49 = mux(_T_10, UInt<1>("h0"), _GEN_40) @[HeapControl.scala 62:20 60:22]
    node _GEN_50 = mux(_T_10, sizeReg, _GEN_41) @[HeapControl.scala 62:20 37:24]
    node _GEN_51 = mux(_T_7, newValueReg, _GEN_47) @[HeapControl.scala 62:20 86:26]
    node _GEN_52 = mux(_T_7, sizeReg, _GEN_48) @[HeapControl.scala 62:20 87:26]
    node _GEN_53 = mux(_T_7, UInt<1>("h1"), _GEN_49) @[HeapControl.scala 62:20 88:26]
    node _GEN_54 = mux(_T_7, _sizeReg_T_1, _GEN_50) @[HeapControl.scala 62:20 90:15]
    node _GEN_55 = mux(_T_7, _subtreeIndexReg_T_2, _GEN_45) @[HeapControl.scala 62:20 91:23]
    node _GEN_56 = mux(_T_7, _stateReg_T_2, _GEN_44) @[HeapControl.scala 62:20 93:16]
    node _GEN_57 = mux(_T_7, UInt<1>("h0"), _GEN_43) @[HeapControl.scala 55:20 62:20]
    node _GEN_58 = mux(_T_7, tailReg, _GEN_46) @[HeapControl.scala 62:20 40:24]
    node _GEN_59 = mux(_T_2, io_req_newValue, newValueReg) @[HeapControl.scala 62:20 64:19 39:28]
    node _GEN_60 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[HeapControl.scala 51:16 62:20 65:20]
    node _GEN_61 = validif(_T_2, tailIndex) @[HeapControl.scala 62:20 67:25]
    node _GEN_62 = mux(_T_2, _GEN_5, _GEN_56) @[HeapControl.scala 62:20]
    node _GEN_63 = mux(_T_2, _GEN_6, _GEN_54) @[HeapControl.scala 62:20]
    node _GEN_64 = validif(eq(_T_2, UInt<1>("h0")), _GEN_51) @[HeapControl.scala 62:20]
    node _GEN_65 = validif(eq(_T_2, UInt<1>("h0")), _GEN_52) @[HeapControl.scala 62:20]
    node _GEN_66 = mux(_T_2, UInt<1>("h0"), _GEN_53) @[HeapControl.scala 62:20 60:22]
    node _GEN_67 = mux(_T_2, subtreeIndexReg, _GEN_55) @[HeapControl.scala 62:20 38:32]
    node _GEN_68 = mux(_T_2, UInt<1>("h0"), _GEN_57) @[HeapControl.scala 55:20 62:20]
    node _GEN_69 = mux(_T_2, tailReg, _GEN_58) @[HeapControl.scala 62:20 40:24]
    io_req_empty <= _io_req_empty_T @[HeapControl.scala 49:16]
    io_req_full <= full @[HeapControl.scala 50:15]
    io_req_ready <= _GEN_60
    io_mem_read_index <= _GEN_61
    io_mem_read_withSiblings is invalid
    io_mem_write_index <= _GEN_65
    io_mem_write_value <= _GEN_64
    io_mem_write_valid <= _GEN_66
    io_mem_requestRead <= _GEN_60
    io_fetcher_index <= subtreeIndexReg @[HeapControl.scala 53:20]
    io_fetcher_size <= sizeReg @[HeapControl.scala 54:19]
    io_fetcher_valid <= _GEN_68
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_62) @[HeapControl.scala 35:{25,25}]
    sizeReg <= mux(reset, UInt<4>("h0"), _GEN_63) @[HeapControl.scala 37:{24,24}]
    subtreeIndexReg <= mux(reset, UInt<4>("h0"), _GEN_67) @[HeapControl.scala 38:{32,32}]
    newValueReg <= mux(reset, UInt<8>("h0"), _GEN_59) @[HeapControl.scala 39:{28,28}]
    tailReg <= mux(reset, UInt<8>("h0"), _GEN_69) @[HeapControl.scala 40:{24,24}]
    full <= mux(reset, UInt<1>("h0"), _GEN_0) @[Reg.scala 35:{20,20}]

  module Heapifier :
    input clock : Clock
    input reset : UInt<1>
    output io_res_largest : UInt<4>
    output io_res_swapped : UInt<1>
    output io_res_valid : UInt<1>
    input io_maxFinder_largest_item : UInt<8>
    input io_maxFinder_largest_index : UInt<4>
    input io_maxFinder_parent_item : UInt<8>
    input io_maxFinder_parent_index : UInt<4>
    input io_maxFinder_isParent : UInt<1>
    input io_maxFinder_valid : UInt<1>
    output io_swapper_values_0_item : UInt<8>
    output io_swapper_values_0_index : UInt<4>
    output io_swapper_values_1_item : UInt<8>
    output io_swapper_values_1_index : UInt<4>
    output io_swapper_valid : UInt<1>
    input io_swapper_ready : UInt<1>

    reg stateReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), stateReg) @[Heapifier.scala 29:25]
    node swapRequired = eq(io_maxFinder_isParent, UInt<1>("h0")) @[Heapifier.scala 30:22]
    reg swapRequiredReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), swapRequiredReg) @[Heapifier.scala 31:32]
    node _T = asUInt(UInt<1>("h0")) @[Heapifier.scala 41:20]
    node _T_1 = asUInt(stateReg) @[Heapifier.scala 41:20]
    node _T_2 = eq(_T, _T_1) @[Heapifier.scala 41:20]
    node _stateReg_T = eq(io_maxFinder_valid, UInt<1>("h0")) @[Heapifier.scala 43:31]
    reg stateReg_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stateReg_REG) @[Heapifier.scala 43:30]
    node _stateReg_T_1 = and(stateReg_REG, io_maxFinder_valid) @[Heapifier.scala 43:52]
    node _stateReg_T_2 = mux(_stateReg_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Heapifier.scala 43:22]
    node _T_3 = asUInt(UInt<1>("h1")) @[Heapifier.scala 41:20]
    node _T_4 = asUInt(stateReg) @[Heapifier.scala 41:20]
    node _T_5 = eq(_T_3, _T_4) @[Heapifier.scala 41:20]
    node _GEN_0 = mux(swapRequired, UInt<1>("h1"), UInt<1>("h0")) @[Heapifier.scala 39:20 47:26 48:26]
    node _GEN_1 = mux(swapRequired, UInt<2>("h2"), UInt<1>("h0")) @[Heapifier.scala 47:26 49:18 51:18]
    node _GEN_2 = mux(swapRequired, UInt<1>("h0"), UInt<1>("h1")) @[Heapifier.scala 35:16 47:26 52:22]
    node _GEN_3 = mux(swapRequired, swapRequiredReg, UInt<1>("h0")) @[Heapifier.scala 34:18 47:26 53:24]
    node _T_6 = asUInt(UInt<2>("h2")) @[Heapifier.scala 41:20]
    node _T_7 = asUInt(stateReg) @[Heapifier.scala 41:20]
    node _T_8 = eq(_T_6, _T_7) @[Heapifier.scala 41:20]
    node _stateReg_T_3 = mux(io_swapper_ready, UInt<1>("h0"), UInt<2>("h2")) @[Heapifier.scala 57:22]
    node _GEN_4 = mux(io_swapper_ready, UInt<1>("h1"), UInt<1>("h0")) @[Heapifier.scala 35:16 58:30 59:22]
    node _GEN_5 = mux(_T_8, _stateReg_T_3, stateReg) @[Heapifier.scala 41:20 57:16 29:25]
    node _GEN_6 = mux(_T_8, _GEN_4, UInt<1>("h0")) @[Heapifier.scala 35:16 41:20]
    node _GEN_7 = mux(_T_5, swapRequired, swapRequiredReg) @[Heapifier.scala 41:20 46:23 31:32]
    node _GEN_8 = mux(_T_5, _GEN_0, UInt<1>("h0")) @[Heapifier.scala 39:20 41:20]
    node _GEN_9 = mux(_T_5, _GEN_1, _GEN_5) @[Heapifier.scala 41:20]
    node _GEN_10 = mux(_T_5, _GEN_2, _GEN_6) @[Heapifier.scala 41:20]
    node _GEN_11 = mux(_T_5, _GEN_3, swapRequiredReg) @[Heapifier.scala 34:18 41:20]
    node _GEN_12 = mux(_T_2, _stateReg_T_2, _GEN_9) @[Heapifier.scala 41:20 43:16]
    node _GEN_13 = mux(_T_2, swapRequiredReg, _GEN_7) @[Heapifier.scala 41:20 31:32]
    node _GEN_14 = mux(_T_2, UInt<1>("h0"), _GEN_8) @[Heapifier.scala 39:20 41:20]
    node _GEN_15 = mux(_T_2, UInt<1>("h0"), _GEN_10) @[Heapifier.scala 35:16 41:20]
    node _GEN_16 = mux(_T_2, swapRequiredReg, _GEN_11) @[Heapifier.scala 34:18 41:20]
    io_res_largest <= io_maxFinder_largest_index @[Heapifier.scala 33:18]
    io_res_swapped <= _GEN_16
    io_res_valid <= _GEN_15
    io_swapper_values_0_item <= io_maxFinder_parent_item @[Heapifier.scala 37:24]
    io_swapper_values_0_index <= io_maxFinder_parent_index @[Heapifier.scala 37:24]
    io_swapper_values_1_item <= io_maxFinder_largest_item @[Heapifier.scala 38:24]
    io_swapper_values_1_index <= io_maxFinder_largest_index @[Heapifier.scala 38:24]
    io_swapper_valid <= _GEN_14
    stateReg <= mux(reset, UInt<1>("h0"), _GEN_12) @[Heapifier.scala 29:{25,25}]
    swapRequiredReg <= mux(reset, UInt<1>("h0"), _GEN_13) @[Heapifier.scala 31:{32,32}]
    stateReg_REG <= _stateReg_T @[Heapifier.scala 43:30]

  module MaxFinder :
    input clock : Clock
    input reset : UInt<1>
    input io_fetcher_parent_item : UInt<8>
    input io_fetcher_parent_index : UInt<4>
    input io_fetcher_children_0_valid : UInt<1>
    input io_fetcher_children_0_data_item : UInt<8>
    input io_fetcher_children_0_data_index : UInt<4>
    input io_fetcher_children_1_valid : UInt<1>
    input io_fetcher_children_1_data_item : UInt<8>
    input io_fetcher_children_1_data_index : UInt<4>
    input io_fetcher_valid : UInt<1>
    output io_res_largest_item : UInt<8>
    output io_res_largest_index : UInt<4>
    output io_res_parent_item : UInt<8>
    output io_res_parent_index : UInt<4>
    output io_res_isParent : UInt<1>
    output io_res_valid : UInt<1>

    node _maxChild_T = gt(io_fetcher_children_1_data_item, io_fetcher_children_0_data_item) @[MaxFinder.scala 40:40]
    node _maxChild_T_1 = and(io_fetcher_children_1_valid, _maxChild_T) @[MaxFinder.scala 40:25]
    node _maxChild_T_2_valid = mux(_maxChild_T_1, io_fetcher_children_1_valid, io_fetcher_children_0_valid) @[MaxFinder.scala 40:16]
    node _maxChild_T_2_data_item = mux(_maxChild_T_1, io_fetcher_children_1_data_item, io_fetcher_children_0_data_item) @[MaxFinder.scala 40:16]
    node _maxChild_T_2_data_index = mux(_maxChild_T_1, io_fetcher_children_1_data_index, io_fetcher_children_0_data_index) @[MaxFinder.scala 40:16]
    reg maxChild_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maxChild_valid) @[MaxFinder.scala 40:12]
    reg maxChild_data_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), maxChild_data_item) @[MaxFinder.scala 40:12]
    reg maxChild_data_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), maxChild_data_index) @[MaxFinder.scala 40:12]
    node _maxItem_T = gt(maxChild_data_item, io_fetcher_parent_item) @[MaxFinder.scala 42:66]
    node _maxItem_T_1 = and(maxChild_valid, _maxItem_T) @[MaxFinder.scala 42:44]
    node maxItem_w_item_item = maxChild_data_item @[MaxFinder.scala 17:19 18:14]
    node maxItem_w_1_item_item = io_fetcher_parent_item @[MaxFinder.scala 17:19 18:14]
    node _maxItem_T_2_item_item = mux(_maxItem_T_1, maxItem_w_item_item, maxItem_w_1_item_item) @[MaxFinder.scala 42:28]
    node maxItem_w_item_index = maxChild_data_index @[MaxFinder.scala 17:19 18:14]
    node maxItem_w_1_item_index = io_fetcher_parent_index @[MaxFinder.scala 17:19 18:14]
    node _maxItem_T_2_item_index = mux(_maxItem_T_1, maxItem_w_item_index, maxItem_w_1_item_index) @[MaxFinder.scala 42:28]
    node maxItem_w_isParent = UInt<1>("h0") @[MaxFinder.scala 17:19 19:18]
    node maxItem_w_1_isParent = UInt<1>("h1") @[MaxFinder.scala 17:19 19:18]
    node _maxItem_T_2_isParent = mux(_maxItem_T_1, maxItem_w_isParent, maxItem_w_1_isParent) @[MaxFinder.scala 42:28]
    reg maxItem_item_item : UInt<8>, clock with :
      reset => (UInt<1>("h0"), maxItem_item_item) @[MaxFinder.scala 42:24]
    reg maxItem_item_index : UInt<4>, clock with :
      reset => (UInt<1>("h0"), maxItem_item_index) @[MaxFinder.scala 42:24]
    reg maxItem_isParent : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maxItem_isParent) @[MaxFinder.scala 42:24]
    reg io_res_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_res_valid_REG) @[package.scala 13:85]
    reg io_res_valid_REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_res_valid_REG_1) @[package.scala 13:85]
    node _io_res_valid_WIRE = UInt<1>("h0") @[package.scala 13:{127,127}]
    node _io_res_valid_WIRE_1 = UInt<1>("h0") @[package.scala 13:{127,127}]
    io_res_largest_item <= maxItem_item_item @[MaxFinder.scala 43:18]
    io_res_largest_index <= maxItem_item_index @[MaxFinder.scala 43:18]
    io_res_parent_item <= io_fetcher_parent_item @[MaxFinder.scala 44:17]
    io_res_parent_index <= io_fetcher_parent_index @[MaxFinder.scala 44:17]
    io_res_isParent <= maxItem_isParent @[MaxFinder.scala 45:19]
    io_res_valid <= io_res_valid_REG_1 @[MaxFinder.scala 46:16]
    maxChild_valid <= _maxChild_T_2_valid @[MaxFinder.scala 40:12]
    maxChild_data_item <= _maxChild_T_2_data_item @[MaxFinder.scala 40:12]
    maxChild_data_index <= _maxChild_T_2_data_index @[MaxFinder.scala 40:12]
    maxItem_item_item <= _maxItem_T_2_item_item @[MaxFinder.scala 42:24]
    maxItem_item_index <= _maxItem_T_2_item_index @[MaxFinder.scala 42:24]
    maxItem_isParent <= _maxItem_T_2_isParent @[MaxFinder.scala 42:24]
    io_res_valid_REG <= mux(reset, _io_res_valid_WIRE, io_fetcher_valid) @[package.scala 13:{85,85,85}]
    io_res_valid_REG_1 <= mux(reset, _io_res_valid_WIRE_1, io_res_valid_REG) @[package.scala 13:{85,85,85}]

  module TestHeap :
    input clock : Clock
    input reset : UInt<1>
    input io_op : UInt<1>
    input io_newValue : UInt<8>
    output io_root : UInt<8>
    output io_empty : UInt<1>
    output io_full : UInt<1>
    input io_valid : UInt<1>
    output io_ready : UInt<1>

    inst fetcher of Fetcher @[Heap.scala 34:25]
    inst swapper of Swapper @[Heap.scala 35:25]
    inst memory of HeapMemory @[Heap.scala 36:24]
    inst control of HeapControl @[Heap.scala 37:25]
    inst heapifier of Heapifier @[Heap.scala 38:27]
    inst maxFinder of MaxFinder @[Heap.scala 39:27]
    node _GEN_0 = mux(control.io_mem_requestRead, control.io_mem_read_index, fetcher.io_mem_index) @[Heap.scala 42:47 43:37 46:31]
    node _GEN_1 = mux(control.io_mem_requestRead, UInt<1>("h0"), fetcher.io_mem_withSiblings) @[Heap.scala 42:47 44:44 46:31]
    node _GEN_2 = mux(control.io_mem_write_valid, control.io_mem_write_index, swapper.io_mem_index) @[Heap.scala 52:47 53:32 55:32]
    node _GEN_3 = mux(control.io_mem_write_valid, control.io_mem_write_value, swapper.io_mem_value) @[Heap.scala 52:47 53:32 55:32]
    node _GEN_4 = mux(control.io_mem_write_valid, control.io_mem_write_valid, swapper.io_mem_valid) @[Heap.scala 52:47 53:32 55:32]
    io_root <= memory.io_root @[Heap.scala 71:11]
    io_empty <= control.io_req_empty @[Heap.scala 69:12]
    io_full <= control.io_req_full @[Heap.scala 70:11]
    io_ready <= control.io_req_ready @[Heap.scala 68:12]
    fetcher.clock <= clock
    fetcher.reset <= reset
    fetcher.io_req_index <= control.io_fetcher_index @[Heap.scala 58:29]
    fetcher.io_req_size <= control.io_fetcher_size @[Heap.scala 58:29]
    fetcher.io_req_valid <= control.io_fetcher_valid @[Heap.scala 58:29]
    fetcher.io_mem_values_0 <= memory.io_read_values_0 @[Heap.scala 50:36]
    fetcher.io_mem_values_1 <= memory.io_read_values_1 @[Heap.scala 50:36]
    swapper.clock <= clock
    swapper.reset <= reset
    swapper.io_req_values_0_item <= heapifier.io_swapper_values_0_item @[Heap.scala 62:35]
    swapper.io_req_values_0_index <= heapifier.io_swapper_values_0_index @[Heap.scala 62:35]
    swapper.io_req_values_1_item <= heapifier.io_swapper_values_1_item @[Heap.scala 62:35]
    swapper.io_req_values_1_index <= heapifier.io_swapper_values_1_index @[Heap.scala 62:35]
    swapper.io_req_valid <= heapifier.io_swapper_valid @[Heap.scala 62:35]
    memory.clock <= clock
    memory.reset <= reset
    memory.io_read_index <= _GEN_0
    memory.io_read_withSiblings <= _GEN_1
    memory.io_write_index <= _GEN_2
    memory.io_write_value <= _GEN_3
    memory.io_write_valid <= _GEN_4
    control.clock <= clock
    control.reset <= reset
    control.io_req_op <= io_op @[Heap.scala 65:32]
    control.io_req_newValue <= io_newValue @[Heap.scala 66:38]
    control.io_req_valid <= io_valid @[Heap.scala 64:35]
    control.io_mem_read_values_0 <= memory.io_read_values_0 @[Heap.scala 49:41]
    control.io_mem_read_values_1 <= memory.io_read_values_1 @[Heap.scala 49:41]
    control.io_heapifier_largest <= heapifier.io_res_largest @[Heap.scala 61:31]
    control.io_heapifier_swapped <= heapifier.io_res_swapped @[Heap.scala 61:31]
    control.io_heapifier_valid <= heapifier.io_res_valid @[Heap.scala 61:31]
    heapifier.clock <= clock
    heapifier.reset <= reset
    heapifier.io_maxFinder_largest_item <= maxFinder.io_res_largest_item @[Heap.scala 60:37]
    heapifier.io_maxFinder_largest_index <= maxFinder.io_res_largest_index @[Heap.scala 60:37]
    heapifier.io_maxFinder_parent_item <= maxFinder.io_res_parent_item @[Heap.scala 60:37]
    heapifier.io_maxFinder_parent_index <= maxFinder.io_res_parent_index @[Heap.scala 60:37]
    heapifier.io_maxFinder_isParent <= maxFinder.io_res_isParent @[Heap.scala 60:37]
    heapifier.io_maxFinder_valid <= maxFinder.io_res_valid @[Heap.scala 60:37]
    heapifier.io_swapper_ready <= swapper.io_req_ready @[Heap.scala 62:35]
    maxFinder.clock <= clock
    maxFinder.reset <= reset
    maxFinder.io_fetcher_parent_item <= fetcher.io_res_parent_item @[Heap.scala 59:29]
    maxFinder.io_fetcher_parent_index <= fetcher.io_res_parent_index @[Heap.scala 59:29]
    maxFinder.io_fetcher_children_0_valid <= fetcher.io_res_children_0_valid @[Heap.scala 59:29]
    maxFinder.io_fetcher_children_0_data_item <= fetcher.io_res_children_0_data_item @[Heap.scala 59:29]
    maxFinder.io_fetcher_children_0_data_index <= fetcher.io_res_children_0_data_index @[Heap.scala 59:29]
    maxFinder.io_fetcher_children_1_valid <= fetcher.io_res_children_1_valid @[Heap.scala 59:29]
    maxFinder.io_fetcher_children_1_data_item <= fetcher.io_res_children_1_data_item @[Heap.scala 59:29]
    maxFinder.io_fetcher_children_1_data_index <= fetcher.io_res_children_1_data_index @[Heap.scala 59:29]
    maxFinder.io_fetcher_valid <= fetcher.io_res_valid @[Heap.scala 59:29]
