package test
import chisel3.stage.{ChiselStage, ChiselGeneratorAnnotation}

object testFlowLights extends App {
  (new chisel3.stage.ChiselStage).execute(args, Seq(ChiselGeneratorAnnotation(() => new FlowLightsWrapper(
    delay=2, ledWidth=16, useSwitch=true
  ))))
}