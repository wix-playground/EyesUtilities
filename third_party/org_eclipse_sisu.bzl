load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "org_eclipse_sisu_org_eclipse_sisu_plexus",
      artifact = "org.eclipse.sisu:org.eclipse.sisu.plexus:0.3.3",
      jar_sha256 = "98045f5ecd802d6a96ba00394f8cb61259f9ac781ec2cb51ca0cb7b2c94ac720",
      deps = [
          "@javax_enterprise_cdi_api//jar",
          "@org_codehaus_plexus_plexus_classworlds//jar",
          "@org_codehaus_plexus_plexus_component_annotations//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_eclipse_sisu_org_eclipse_sisu_inject//jar"
      ],
  )
