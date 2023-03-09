FIRRTL version 1.1.0
circuit Accu :
  module Accu :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    input io_setZero : UInt<1>
    output io_dout : UInt<8>

    reg reg1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg1) @[Accu.scala 14:21]
    node _reg1_T = add(reg1, io_din) @[Accu.scala 16:37]
    node _reg1_T_1 = tail(_reg1_T, 1) @[Accu.scala 16:37]
    node _reg1_T_2 = mux(io_setZero, UInt<1>("h0"), _reg1_T_1) @[Accu.scala 16:14]
    node res = reg1 @[Accu.scala 10:17 18:7]
    io_dout <= res @[Accu.scala 22:11]
    reg1 <= mux(reset, UInt<8>("h0"), _reg1_T_2) @[Accu.scala 14:{21,21} 16:8]
