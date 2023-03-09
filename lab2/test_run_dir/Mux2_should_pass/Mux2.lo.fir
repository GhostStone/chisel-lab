FIRRTL version 1.1.0
circuit Mux2 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_sel : UInt<1>
    output io_y : UInt<1>

    node _res_T = eq(io_sel, UInt<1>("h0")) @[Mux2.scala 18:11]
    node _res_T_1 = and(_res_T, io_a) @[Mux2.scala 18:16]
    node _res_T_2 = and(io_sel, io_b) @[Mux2.scala 18:28]
    node _res_T_3 = or(_res_T_1, _res_T_2) @[Mux2.scala 18:21]
    node res = _res_T_3 @[Mux2.scala 14:17 18:7]
    io_y <= res @[Mux2.scala 22:8]
