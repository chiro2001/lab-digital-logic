package test 
import chisel3._
import chisel3.util._
import chisel3.experimental._
 
@chiselName
class FlowLights(ledWidth: Int = 8, delay: Int = 100000000, useSwitch: Boolean = false) extends Module {
  val io = IO(new Bundle {
    val button = Input(UInt(1.W))
    val ledCount = if (useSwitch) Some(Input(UInt(3.W))) else None
    val led = Output(UInt(ledWidth.W))
  })

  val ledReg = RegInit(1.U(ledWidth.W))
  val clkReg = RegInit(1.U(32.W))

  def flow(old: UInt) = {
    val bools = old.asBools
    val newUInt = Cat((bools(ledWidth - 1) +: bools.slice(0, ledWidth - 1)).reverse).asUInt
    newUInt
  }

  def generate(count: UInt) = {
    val res = (for { a <- 0 until ledWidth } yield Mux(a.U < count, 1.U, 0.U) << a).reduce(_ | _)
    // printf(p"res = ${Binary(res)}\n")
    res
  }

  when(io.button === 1.U) {
    ledReg := generate(if (useSwitch) (io.ledCount.get + 1.U) else 1.U)
    // printf(p"generated: ${Binary(ledReg)}\n")
    clkReg := delay.U(32.W)
  } .otherwise {
    ledReg := Mux(clkReg === 0.U, flow(ledReg), ledReg)
    clkReg := Mux(clkReg === delay.U, 0.U, clkReg + 1.U)
  }
  io.led := ledReg
}

@chiselName
class FlowLightsWrapper(ledWidth: Int = 16, delay: Int = 2, useSwitch: Boolean = true) extends Module {
  val io = IO(new Bundle {
    val button = Input(UInt(1.W))
    val ledCount = if (useSwitch) Some(Input(UInt(3.W))) else None
    val led = Output(UInt(ledWidth.W))
  })

  val flowLights = Module(new FlowLights(delay=delay, ledWidth=ledWidth, useSwitch=useSwitch))

  flowLights.io.button := io.button
  io.led := flowLights.io.led
  if (useSwitch)
    flowLights.io.ledCount.get := io.ledCount.get
}