load("//:third_party/org_twdata_maven.bzl", org_twdata_maven_deps = "dependencies")

load("//:third_party/org_sonatype_plexus.bzl", org_sonatype_plexus_deps = "dependencies")

load("//:third_party/org_eclipse_sisu.bzl", org_eclipse_sisu_deps = "dependencies")

load("//:third_party/org_codehaus_plexus.bzl", org_codehaus_plexus_deps = "dependencies")

load("//:third_party/org_apache_maven.bzl", org_apache_maven_deps = "dependencies")

load("//:third_party/io_opencensus.bzl", io_opencensus_deps = "dependencies")

load("//:third_party/io_grpc.bzl", io_grpc_deps = "dependencies")

load("//:third_party/com_wixpress_grpc.bzl", com_wixpress_grpc_deps = "dependencies")

load("//:third_party/com_wixpress_framework.bzl", com_wixpress_framework_deps = "dependencies")

load("//:third_party/com_thesamet_scalapb.bzl", com_thesamet_scalapb_deps = "dependencies")

load("//:third_party/com_google_jimfs.bzl", com_google_jimfs_deps = "dependencies")

load("//:third_party/com_google_guava.bzl", com_google_guava_deps = "dependencies")

load("//:third_party/com_google_code_findbugs.bzl", com_google_code_findbugs_deps = "dependencies")


load("@core_server_build_tools//:macros.bzl", "maven_archive", "maven_proto")

def third_party_dependencies():
      

  com_google_code_findbugs_deps()


  com_google_guava_deps()


  com_google_jimfs_deps()


  com_thesamet_scalapb_deps()


  com_wixpress_framework_deps()


  if native.existing_rule("com_wixpress_grpc_dependencies") == None:
    native.maven_jar(
        name = "com_wixpress_grpc_dependencies",
        artifact = "com.wixpress.grpc:dependencies:pom:1.0.0-SNAPSHOT"
    )


  com_wixpress_grpc_deps()


  io_grpc_deps()


  io_opencensus_deps()


  org_apache_maven_deps()


  org_codehaus_plexus_deps()


  org_eclipse_sisu_deps()


  org_sonatype_plexus_deps()


  org_twdata_maven_deps()
