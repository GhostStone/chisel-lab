FIRRTL version 1.1.0
circuit Mux4 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_sel : UInt<1>
    output io_y : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[Mux2.scala 18:16]
    node _GEN_0 = mux(_T, io_b, io_a) @[Mux2.scala 18:25 19:10 17:8]
    io_y <= _GEN_0

  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    inst mux2 of Mux2 @[Mux4.scala 24:20]
    inst mux3 of Mux2 @[Mux4.scala 25:20]
    inst mux4 of Mux2 @[Mux4.scala 26:20]
    node _mux2_io_sel_T = bits(io_sel, 0, 0) @[Mux4.scala 29:24]
    node _mux3_io_sel_T = bits(io_sel, 0, 0) @[Mux4.scala 32:24]
    node _mux4_io_sel_T = bits(io_sel, 1, 1) @[Mux4.scala 35:24]
    io_y <= mux4.io_y @[Mux4.scala 36:8]
    mux2.clock <= clock
    mux2.reset <= reset
    mux2.io_a <= io_a @[Mux4.scala 27:13]
    mux2.io_b <= io_b @[Mux4.scala 28:13]
    mux2.io_sel <= _mux2_io_sel_T @[Mux4.scala 29:15]
    mux3.clock <= clock
    mux3.reset <= reset
    mux3.io_a <= io_c @[Mux4.scala 30:13]
    mux3.io_b <= io_d @[Mux4.scala 31:13]
    mux3.io_sel <= _mux3_io_sel_T @[Mux4.scala 32:15]
    mux4.clock <= clock
    mux4.reset <= reset
    mux4.io_a <= mux2.io_y @[Mux4.scala 33:13]
    mux4.io_b <= mux3.io_y @[Mux4.scala 34:13]
    mux4.io_sel <= _mux4_io_sel_T @[Mux4.scala 35:15]
