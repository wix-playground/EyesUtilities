load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "com_wixpress_framework_wix_framework_aspects_api",
      artifact = "com.wixpress.framework:wix-framework-aspects-api:2.1201.0-SNAPSHOT",
      deps = [
          "@com_google_code_findbugs_jsr305//jar",
          "@com_google_guava_guava//jar",
          "@joda_time_joda_time//jar",
          "@org_joda_joda_convert//jar",
          "@org_scala_lang_scala_library//jar"
      ],
  )
