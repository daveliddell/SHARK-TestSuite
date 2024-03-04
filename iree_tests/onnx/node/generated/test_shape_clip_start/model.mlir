module {
  func.func @test_shape_clip_start(%arg0: !torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3],si64> attributes {torch.onnx_meta.ir_version = 10 : si64, torch.onnx_meta.opset_version = 21 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
    %none = torch.constant.none
    %0 = torch.operator "onnx.Shape"(%arg0) {torch.onnx.start = -10 : si64} : (!torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3],si64> 
    return %0 : !torch.vtensor<[3],si64>
  }
}

