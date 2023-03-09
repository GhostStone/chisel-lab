FIRRTL version 1.1.0
circuit Count15 :
  module Count15 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg ctr : UInt<4>, clock with :
      reset => (UInt<1>("h0"), ctr) @[Count15.scala 13:20]
    node _ctr_T = add(ctr, UInt<1>("h1")) @[Count15.scala 15:14]
    node _ctr_T_1 = tail(_ctr_T, 1) @[Count15.scala 15:14]
    node res = ctr @[Count15.scala 8:17 17:7]
    io_dout <= pad(res, 8) @[Count15.scala 21:11]
    ctr <= mux(reset, UInt<4>("h0"), _ctr_T_1) @[Count15.scala 13:{20,20} 15:7]
