FIRRTL version 1.1.0
circuit Count6 :
  module Count6 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg ctr : UInt<3>, clock with :
      reset => (UInt<1>("h0"), ctr) @[Count6.scala 12:20]
    node _ctr_T = eq(ctr, UInt<3>("h6")) @[Count6.scala 14:18]
    node _ctr_T_1 = add(ctr, UInt<1>("h1")) @[Count6.scala 14:36]
    node _ctr_T_2 = tail(_ctr_T_1, 1) @[Count6.scala 14:36]
    node _ctr_T_3 = mux(_ctr_T, UInt<1>("h0"), _ctr_T_2) @[Count6.scala 14:13]
    node res = ctr @[Count6.scala 8:17 16:7]
    io_dout <= pad(res, 8) @[Count6.scala 20:11]
    ctr <= mux(reset, UInt<3>("h0"), _ctr_T_3) @[Count6.scala 12:{20,20} 14:7]
