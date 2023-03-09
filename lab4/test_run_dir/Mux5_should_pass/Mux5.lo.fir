FIRRTL version 1.1.0
circuit Mux5 :
  module Mux5 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<8>
    input io_b : UInt<8>
    input io_c : UInt<8>
    input io_d : UInt<8>
    input io_e : UInt<8>
    input io_sel : UInt<3>
    output io_y : UInt<8>

    node _T = eq(UInt<1>("h0"), io_sel) @[Mux5.scala 20:18]
    node _T_1 = eq(UInt<1>("h1"), io_sel) @[Mux5.scala 20:18]
    node _T_2 = eq(UInt<2>("h2"), io_sel) @[Mux5.scala 20:18]
    node _T_3 = eq(UInt<2>("h3"), io_sel) @[Mux5.scala 20:18]
    node _T_4 = eq(UInt<3>("h5"), io_sel) @[Mux5.scala 20:18]
    node _GEN_0 = mux(_T_4, io_e, UInt<1>("h1")) @[Mux5.scala 20:18 25:25 19:8]
    node _GEN_1 = mux(_T_3, io_d, _GEN_0) @[Mux5.scala 20:18 24:25]
    node _GEN_2 = mux(_T_2, io_c, _GEN_1) @[Mux5.scala 20:18 23:25]
    node _GEN_3 = mux(_T_1, UInt<1>("h1"), _GEN_2) @[Mux5.scala 20:18 22:25]
    node _GEN_4 = mux(_T, io_a, _GEN_3) @[Mux5.scala 20:18 21:25]
    io_y <= _GEN_4
