load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "org_codehaus_plexus_plexus_classworlds",
      artifact = "org.codehaus.plexus:plexus-classworlds:2.5.2",
      jar_sha256 = "b2931d41740490a8d931cbe0cfe9ac20deb66cca606e679f52522f7f534c9fd7",
  )


  import_external(
      name = "org_codehaus_plexus_plexus_interpolation",
      artifact = "org.codehaus.plexus:plexus-interpolation:1.24",
      jar_sha256 = "8fe2be04b067a75d02fb8a1a9caf6c1c8615f0d5577cced02e90b520763d2f77",
  )


  import_external(
      name = "org_codehaus_plexus_plexus_utils",
      artifact = "org.codehaus.plexus:plexus-utils:3.1.0",
      jar_sha256 = "0ffa0ad084ebff5712540a7b7ea0abda487c53d3a18f78c98d1a3675dab9bf61",
  )
