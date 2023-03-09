import chisel3._

class Count6 extends Module {
  val io = IO(new Bundle {
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  val ctr = RegInit(0.U(3.W))

  ctr := Mux(ctr === 6.U, 0.U, ctr + 1.U)

  res := ctr

  // ***** your code ends here *****

  io.dout := res
}