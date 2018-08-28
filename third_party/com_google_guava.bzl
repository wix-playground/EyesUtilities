load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "com_google_guava_guava",
      artifact = "com.google.guava:guava:25.1-jre",
      jar_sha256 = "6db0c3a244c397429c2e362ea2837c3622d5b68bb95105d37c21c36e5bc70abf",
      deps = [
          "@com_google_code_findbugs_jsr305//jar",
          "@com_google_errorprone_error_prone_annotations//jar",
          "@com_google_j2objc_j2objc_annotations//jar",
          "@org_checkerframework_checker_qual//jar",
          "@org_codehaus_mojo_animal_sniffer_annotations//jar"
      ],
  )
