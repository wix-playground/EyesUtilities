load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "io_opencensus_opencensus_api",
      artifact = "io.opencensus:opencensus-api:0.12.3",
      jar_sha256 = "8c1de62cbdaf74b01b969d1ed46c110bca1a5dd147c50a8ab8c5112f42ced802",
    # EXCLUDES com.google.code.findbugs:jsr305
    # EXCLUDES com.google.guava:guava
    # EXCLUDES com.google.errorprone:error_prone_annotations
    # EXCLUDES io.grpc:grpc-context
  )


  import_external(
      name = "io_opencensus_opencensus_contrib_grpc_metrics",
      artifact = "io.opencensus:opencensus-contrib-grpc-metrics:0.12.3",
      jar_sha256 = "632c1e1463db471b580d35bc4be868facbfbf0a19aa6db4057215d4a68471746",
      deps = [
          "@io_opencensus_opencensus_api//jar"
      ],
    # EXCLUDES com.google.code.findbugs:jsr305
    # EXCLUDES com.google.guava:guava
    # EXCLUDES com.google.errorprone:error_prone_annotations
    # EXCLUDES io.grpc:grpc-context
  )
