load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "com_thesamet_scalapb_scalapb_runtime_grpc_2_12",
      artifact = "com.thesamet.scalapb:scalapb-runtime-grpc_2.12:0.7.4",
      jar_sha256 = "5daf3f2485fe13621efe4dbdc6c9aef61765b223fac7b8e44501299ed930388e",
      deps = [
          "@com_thesamet_scalapb_scalapb_runtime_2_12//jar",
          "@io_grpc_grpc_protobuf//jar",
          "@io_grpc_grpc_stub//jar",
          "@org_scala_lang_scala_library//jar"
      ],
    # EXCLUDES com.google.api.grpc:proto-google-common-protos
  )
