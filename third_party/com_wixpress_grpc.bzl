load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "com_wixpress_grpc_extensions",
      artifact = "com.wixpress.grpc:extensions:1.0.0-SNAPSHOT",
      deps = [
          "@com_thesamet_scalapb_scalapb_runtime_2_12//jar",
          "@org_scala_lang_scala_library//jar"
      ],
  )


  import_external(
      name = "com_wixpress_grpc_generator",
      artifact = "com.wixpress.grpc:generator:1.0.0-SNAPSHOT",
      deps = [
          "@com_github_pathikrit_better_files_2_12//jar",
          "@com_thesamet_scalapb_scalapbc_2_12//jar",
          "@com_wixpress_grpc_extensions//jar",
          "@org_apache_maven_maven_artifact//jar",
          "@org_apache_maven_maven_core//jar",
          "@org_apache_maven_maven_plugin_api//jar",
          "@org_scala_lang_scala_library//jar",
          "@org_twdata_maven_mojo_executor//jar"
      ],
  )


  import_external(
      name = "com_wixpress_grpc_infra",
      artifact = "com.wixpress.grpc:infra:1.0.0-SNAPSHOT",
      deps = [
          "@com_newrelic_agent_java_newrelic_api//jar",
          "@com_thesamet_scalapb_scalapb_runtime_grpc_2_12//jar",
          "@com_wixpress_framework_wix_framework_aspects_api//jar",
          "@com_wixpress_grpc_extensions//jar",
          "@org_scala_lang_scala_library//jar",
          "@org_scala_lang_scala_reflect//jar"
      ],
  )
