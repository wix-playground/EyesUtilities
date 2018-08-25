load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "org_sonatype_plexus_plexus_sec_dispatcher",
      artifact = "org.sonatype.plexus:plexus-sec-dispatcher:1.4",
      jar_sha256 = "da73e32b58132e64daf12269fd9d011c0b303f234840f179908725a632b6b57c",
      deps = [
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_sonatype_plexus_plexus_cipher//jar"
      ],
  )
