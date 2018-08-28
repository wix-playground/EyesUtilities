load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "io_grpc_grpc_core",
      artifact = "io.grpc:grpc-core:1.14.0",
      jar_sha256 = "3b44ca22df91034dc8d2e3fc404a623e6cc662287b82d5f32d4e1cae1f30cefb",
      deps = [
          "@com_google_code_findbugs_jsr305//jar",
          "@com_google_code_gson_gson//jar",
          "@com_google_errorprone_error_prone_annotations//jar",
          "@com_google_guava_guava//jar",
          "@io_grpc_grpc_context//jar",
          "@io_opencensus_opencensus_api//jar",
          "@io_opencensus_opencensus_contrib_grpc_metrics//jar"
      ],
  )


  import_external(
      name = "io_grpc_grpc_protobuf",
      artifact = "io.grpc:grpc-protobuf:1.14.0",
      jar_sha256 = "58cfe955238e854caeba371093f70252eaf151a7c82c2849970f682b3e460f4f",
      deps = [
          "@com_google_guava_guava//jar",
          "@com_google_protobuf_protobuf_java//jar",
          "@io_grpc_grpc_core//jar",
          "@io_grpc_grpc_protobuf_lite//jar"
      ],
  )


  import_external(
      name = "io_grpc_grpc_protobuf_lite",
      artifact = "io.grpc:grpc-protobuf-lite:1.14.0",
      jar_sha256 = "083b4c678192461cdb1f46199de2ee5a6dd6c691fd8b1ae28c263de8aa219dd4",
      deps = [
          "@com_google_guava_guava//jar",
          "@io_grpc_grpc_core//jar"
      ],
    # EXCLUDES com.google.protobuf:protobuf-lite
  )
