FIRRTL version 1.1.0
circuit AddSub :
  module AddSub :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<4>
    input io_b : UInt<4>
    input io_selAdd : UInt<1>
    output io_y : UInt<4>

    node _res_T = add(io_a, io_b) @[AddSub.scala 19:13]
    node _res_T_1 = tail(_res_T, 1) @[AddSub.scala 19:13]
    node _res_T_2 = sub(io_a, io_b) @[AddSub.scala 21:13]
    node _res_T_3 = tail(_res_T_2, 1) @[AddSub.scala 21:13]
    node _GEN_0 = mux(io_selAdd, _res_T_1, _res_T_3) @[AddSub.scala 18:15 19:9 21:9]
    node res = _GEN_0 @[AddSub.scala 14:21]
    io_y <= res @[AddSub.scala 26:8]
