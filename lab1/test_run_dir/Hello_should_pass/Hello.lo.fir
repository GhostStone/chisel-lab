FIRRTL version 1.1.0
circuit Hello :
  module Hello :
    input clock : Clock
    input reset : UInt<1>
    output io_led : UInt<1>

    reg cntReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), cntReg) @[Hello.scala 17:23]
    reg blkReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), blkReg) @[Hello.scala 18:23]
    node _cntReg_T = add(cntReg, UInt<1>("h1")) @[Hello.scala 20:20]
    node _cntReg_T_1 = tail(_cntReg_T, 1) @[Hello.scala 20:20]
    node _T = eq(cntReg, UInt<15>("h61a7")) @[Hello.scala 21:15]
    node _blkReg_T = not(blkReg) @[Hello.scala 23:15]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _cntReg_T_1) @[Hello.scala 20:10 21:28 22:12]
    node _GEN_1 = mux(_T, _blkReg_T, blkReg) @[Hello.scala 21:28 23:12 18:23]
    io_led <= blkReg @[Hello.scala 25:10]
    cntReg <= mux(reset, UInt<32>("h0"), _GEN_0) @[Hello.scala 17:{23,23}]
    blkReg <= mux(reset, UInt<1>("h0"), _GEN_1) @[Hello.scala 18:{23,23}]
