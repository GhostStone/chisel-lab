import chisel3._
import chisel3.util._

class CountSevenSeg extends Module {
  val io = IO(new Bundle {
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
    
  })

  val sevSeg = WireDefault("b1111111".U(7.W))

  // *** your code starts here
  val cntReg = RegInit ("h0".U(4.W))

  cntReg := cntReg + "h1".U

  when(cntReg === "hf".U) {
    cntReg := "h0".U
  }

  switch(cntReg){

    is("h0".U){
      sevSeg := ("h3f".U)
    }
    is("h1".U){
      sevSeg := ("h06".U)
    }
    is("h2".U){
      sevSeg := ("h5b".U)
    }
    is("h3".U){
      sevSeg := ("h4f".U)
    }
    is("h4".U){
      sevSeg := ("h66".U)
    }
    is("h5".U){
      sevSeg := ("h6d".U)
    }
    is("h6".U){
      sevSeg := ("h7d".U)
    }
    is("h7".U){
      sevSeg := ("h07".U)
    }
    is("h8".U){
      sevSeg := ("h7f".U)
    }
    is("h9".U){
      sevSeg := ("h6f".U)
    }
    is("ha".U){
      sevSeg := ("h77".U)
    }
    is("hb".U){
      sevSeg := ("h7c".U)
    }
    is("hc".U){
      sevSeg := ("h39".U)
    }
    is("hd".U){
      sevSeg := ("h5e".U)
    }
    is("he".U){
      sevSeg := ("h79".U)
    }
    is("hf".U){
      sevSeg := ("h71".U)
    }
  }

  // *** your code ends here

  io.seg := ~sevSeg
  io.an := "b1110".U
}

// generate Verilog
object CountSevenSeg extends App {
  emitVerilog(new CountSevenSeg())
}