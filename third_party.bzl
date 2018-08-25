load("//:third_party/com_google_jimfs.bzl", com_google_jimfs_deps = "dependencies")

load("//:third_party/com_google_guava.bzl", com_google_guava_deps = "dependencies")

load("//:third_party/com_google_code_findbugs.bzl", com_google_code_findbugs_deps = "dependencies")


load("@core_server_build_tools//:macros.bzl", "maven_archive", "maven_proto")

def third_party_dependencies():
      

  com_google_code_findbugs_deps()


  com_google_guava_deps()


  com_google_jimfs_deps()
