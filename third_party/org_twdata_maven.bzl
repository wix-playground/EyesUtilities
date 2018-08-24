load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "org_twdata_maven_mojo_executor",
      artifact = "org.twdata.maven:mojo-executor:2.3.0",
      jar_sha256 = "470b5e9e505f99f81ff3a75593bfe03f6d32ea52a167df1ba66cee833c8c08ce",
      deps = [
          "@org_apache_maven_maven_core//jar",
          "@org_apache_maven_maven_model//jar",
          "@org_apache_maven_maven_plugin_api//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_slf4j_slf4j_api//jar",
          "@org_slf4j_slf4j_simple//jar"
      ],
  )
