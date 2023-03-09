import chisel3._

class Count15 extends Module {
  val io = IO(new Bundle {
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  //val delay = Module(new Delay)
  val ctr = RegInit(0.U(4.W))

  ctr := ctr + 1.U

  res := ctr

  // ***** your code ends here *****

  io.dout := res
}