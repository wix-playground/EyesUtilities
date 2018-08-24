load("@core_server_build_tools//:import_external.bzl", import_external = "safe_wix_scala_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_maven_maven_artifact",
      artifact = "org.apache.maven:maven-artifact:3.5.4",
      jar_sha256 = "6fbf25de86cce3afbaf5c502dff57df6d7c90cf9bec0ae0ffe5ab2467243c35b",
      deps = [
          "@org_apache_commons_commons_lang3//jar",
          "@org_codehaus_plexus_plexus_utils//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_core",
      artifact = "org.apache.maven:maven-core:3.5.4",
      jar_sha256 = "58c248d75cf32d7de10c897e0f96693cb51832f6bad7a413ae149ca499056f72",
      deps = [
          "@com_google_guava_guava//jar",
          "@com_google_inject_guice_no_aop//jar",
          "@javax_inject_javax_inject//jar",
          "@org_apache_commons_commons_lang3//jar",
          "@org_apache_maven_maven_artifact//jar",
          "@org_apache_maven_maven_builder_support//jar",
          "@org_apache_maven_maven_model//jar",
          "@org_apache_maven_maven_model_builder//jar",
          "@org_apache_maven_maven_plugin_api//jar",
          "@org_apache_maven_maven_repository_metadata//jar",
          "@org_apache_maven_maven_resolver_provider//jar",
          "@org_apache_maven_maven_settings//jar",
          "@org_apache_maven_maven_settings_builder//jar",
          "@org_apache_maven_resolver_maven_resolver_api//jar",
          "@org_apache_maven_resolver_maven_resolver_impl//jar",
          "@org_apache_maven_resolver_maven_resolver_spi//jar",
          "@org_apache_maven_resolver_maven_resolver_util//jar",
          "@org_apache_maven_shared_maven_shared_utils//jar",
          "@org_codehaus_plexus_plexus_classworlds//jar",
          "@org_codehaus_plexus_plexus_component_annotations//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_eclipse_sisu_org_eclipse_sisu_inject//jar",
          "@org_eclipse_sisu_org_eclipse_sisu_plexus//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_model",
      artifact = "org.apache.maven:maven-model:3.5.4",
      jar_sha256 = "5ec1b94e9254c25480548633a48b7ae8a9ada7527e28f5c575943fe0c2ab7350",
      deps = [
          "@org_apache_commons_commons_lang3//jar",
          "@org_codehaus_plexus_plexus_utils//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_model_builder",
      artifact = "org.apache.maven:maven-model-builder:3.5.4",
      jar_sha256 = "5dc10d69fd0a6e38f3ac3788bf1e63efd668af1fc23a08a2fdcffd85921d6f56",
      deps = [
          "@com_google_guava_guava//jar",
          "@org_apache_commons_commons_lang3//jar",
          "@org_apache_maven_maven_artifact//jar",
          "@org_apache_maven_maven_builder_support//jar",
          "@org_apache_maven_maven_model//jar",
          "@org_codehaus_plexus_plexus_component_annotations//jar",
          "@org_codehaus_plexus_plexus_interpolation//jar",
          "@org_codehaus_plexus_plexus_utils//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_plugin_api",
      artifact = "org.apache.maven:maven-plugin-api:3.5.4",
      jar_sha256 = "6ef2f5977d400f636f86dafd2321bad6e230787321238e0bd206d553eb4d2406",
      deps = [
          "@org_apache_maven_maven_artifact//jar",
          "@org_apache_maven_maven_model//jar",
          "@org_codehaus_plexus_plexus_classworlds//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_eclipse_sisu_org_eclipse_sisu_plexus//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_repository_metadata",
      artifact = "org.apache.maven:maven-repository-metadata:3.5.4",
      jar_sha256 = "159d4f7ebe63c0bbc81144c865ea4bf1bd0add710b5725964ac22bea3c53b803",
      deps = [
          "@org_codehaus_plexus_plexus_utils//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_resolver_provider",
      artifact = "org.apache.maven:maven-resolver-provider:3.5.4",
      jar_sha256 = "3a5d15bf994da32621a3beabe76f8a611bf92b6a1e42a43d827ff5a3d94851c4",
      deps = [
          "@javax_inject_javax_inject//jar",
          "@org_apache_commons_commons_lang3//jar",
          "@org_apache_maven_maven_model//jar",
          "@org_apache_maven_maven_model_builder//jar",
          "@org_apache_maven_maven_repository_metadata//jar",
          "@org_apache_maven_resolver_maven_resolver_api//jar",
          "@org_apache_maven_resolver_maven_resolver_impl//jar",
          "@org_apache_maven_resolver_maven_resolver_spi//jar",
          "@org_apache_maven_resolver_maven_resolver_util//jar",
          "@org_codehaus_plexus_plexus_utils//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_settings",
      artifact = "org.apache.maven:maven-settings:3.5.4",
      jar_sha256 = "3b36d4653060d28574623c41634867597a303cb84288e441be2ec00935fe360e",
      deps = [
          "@org_codehaus_plexus_plexus_utils//jar"
      ],
  )


  import_external(
      name = "org_apache_maven_maven_settings_builder",
      artifact = "org.apache.maven:maven-settings-builder:3.5.4",
      jar_sha256 = "3e67c52b4e2b47057147612be693b878e1a7255dd18db5203509e32e6cc66f69",
      deps = [
          "@org_apache_commons_commons_lang3//jar",
          "@org_apache_maven_maven_builder_support//jar",
          "@org_apache_maven_maven_settings//jar",
          "@org_codehaus_plexus_plexus_component_annotations//jar",
          "@org_codehaus_plexus_plexus_interpolation//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_sonatype_plexus_plexus_sec_dispatcher//jar"
      ],
  )
