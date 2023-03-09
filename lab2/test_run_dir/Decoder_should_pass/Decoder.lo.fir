FIRRTL version 1.1.0
circuit Decoder :
  module Decoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<2>
    output io_out : UInt<4>

    node _T = eq(UInt<1>("h0"), io_sel) @[Decoder.scala 15:14]
    node _T_1 = eq(UInt<1>("h1"), io_sel) @[Decoder.scala 15:14]
    node _T_2 = eq(UInt<2>("h2"), io_sel) @[Decoder.scala 15:14]
    node _T_3 = eq(UInt<2>("h3"), io_sel) @[Decoder.scala 15:14]
    node _GEN_0 = mux(_T_3, UInt<4>("h8"), UInt<1>("h0")) @[Decoder.scala 15:14 26:11 11:24]
    node _GEN_1 = mux(_T_2, UInt<3>("h4"), _GEN_0) @[Decoder.scala 15:14 23:11]
    node _GEN_2 = mux(_T_1, UInt<2>("h2"), _GEN_1) @[Decoder.scala 15:14 20:11]
    node _GEN_3 = mux(_T, UInt<1>("h1"), _GEN_2) @[Decoder.scala 15:14 17:11]
    node dec = _GEN_3 @[Decoder.scala 11:24]
    io_out <= dec @[Decoder.scala 32:10]
