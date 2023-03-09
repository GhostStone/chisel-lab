import chisel3._

class Accu extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val setZero = Input(Bool())
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())

  // ***** your code starts here *****

  val reg1 = RegInit(0.U(8.W))

  reg1 := Mux(io.setZero, 0.U, reg1 + io.din)

  res := reg1

  // ***** your code ends here *****

  io.dout := res
}