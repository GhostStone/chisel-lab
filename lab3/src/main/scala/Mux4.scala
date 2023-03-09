
import chisel3._

/**
  * Use Mux2 components to build a 4:1 multiplexer
  */

class Mux4 extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val c = Input(UInt(1.W))
    val d = Input(UInt(1.W))
    val sel = Input(UInt(2.W))
    val y = Output(UInt(1.W))
  })

  // ***** your code starts here *****

  // create a Mux4 component out of Mux2 components
  // and connect the input and output ports.

  // below is dummy code to make this example compile
  val mux2 = Module(new Mux2)
  val mux3 = Module(new Mux2)
  val mux4 = Module(new Mux2)
  mux2.io.a := io.a
  mux2.io.b := io.b
  mux2.io.sel := io.sel(0)
  mux3.io.a := io.c
  mux3.io.b := io.d
  mux3.io.sel := io.sel(0)
  mux4.io.a := mux2.io.y
  mux4.io.b := mux3.io.y
  mux4.io.sel := io.sel(1)
  io.y := mux4.io.y

  // ***** your code ends here *****
}