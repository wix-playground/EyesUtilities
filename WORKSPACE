
workspace(name = "wix_playground_EyesUtilities")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
rules_scala_version="74a91254f7e2335496813407e210ac00542cd44e" # update this as needed
rules_scala_version_sha256="ed022fbee43ab9bcafab76b4054bcc92267519f78d7d9e0521be95761e279aaa"
http_archive(
             name = "io_bazel_rules_scala",
             url = "https://github.com/wix/rules_scala/archive/%s.zip"%rules_scala_version,
             type = "zip",
             strip_prefix= "rules_scala-%s" % rules_scala_version,
             sha256 = rules_scala_version_sha256,
)

# Required configuration for remote build execution
bazel_toolchains_version="2cec6c9f6d12224e93d9b3f337b24e41602de3ba"
bazel_toolchains_sha256="9b8d85b61d8945422e86ac31e4d4d2d967542c080d1da1b45364da7fd6bdd638"
http_archive(
             name = "bazel_toolchains",
             urls = [
               "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/%s.tar.gz"%bazel_toolchains_version,
               "https://github.com/bazelbuild/bazel-toolchains/archive/%s.tar.gz"%bazel_toolchains_version
             ],
             strip_prefix = "bazel-toolchains-%s"%bazel_toolchains_version,
             sha256 = bazel_toolchains_sha256,
)

maven_server(
    name = "default",
    url = "http://repo.dev.wixpress.com/artifactory/libs-snapshots",
)


load("@bazel_tools//tools/build_defs/repo:git.bzl","git_repository")

load("//:tools/external_wix_repositories.bzl", "external_wix_repositories")

external_wix_repositories()

load("@core_server_build_tools//:repositories.bzl", "scala_repositories")
scala_repositories()
load("@wix_platform_wix_framework//test-infrastructures-modules/mysql-testkit/downloader:mysql_installer.bzl", "mysql_default_version", "mysql")
mysql_default_version()
mysql("5.6", "latest")
maven_jar(
    name = "com_wix_wix_embedded_mysql_download_and_extract_jar_with_dependencies",
    artifact = "com.wix:wix-embedded-mysql-download-and-extract:jar:jar-with-dependencies:4.1.2",
)
load("@wix_platform_wix_framework//test-infrastructures-modules/mongo-test-kit/downloader:mongo_installer.bzl", "mongo_default_version", "mongo")
mongo_default_version()
mongo("3.3.1")
maven_jar(
    name = "de_flapdoodle_embed_mongo_download_and_extract_jar_with_dependencies",
    artifact = "de.flapdoodle.embed:de.flapdoodle.embed.mongo.download-and-extract:jar:jar-with-dependencies:2.0.0",
)


register_toolchains("@core_server_build_tools//toolchains:wix_defaults_global_toolchain")

wix_grpc_version="fc4f6f2fea986f2d2983ed2c5ebb2d62291adae1" # update this as needed

git_repository(
             #name is server_infra to align with server-infra repo, see https://github.com/wix-platform/bazel_proto_poc/pull/16 for more details
             name = "server_infra",
             remote = "git@github.com:wix-platform/bazel_proto_poc.git",
             commit = wix_grpc_version
)

load("@server_infra//framework/grpc/generator-bazel/src/main/rules:wix_scala_proto_repositories.bzl","grpc_repositories")

grpc_repositories()

load("@server_infra//:proto_repos.bzl", "scala_proto_repositories")
scala_proto_repositories()

http_archive(
    name = "com_google_protobuf",
    urls = ["https://github.com/google/protobuf/archive/74bf45f379b35e1d103940f35d7a04545b0235d4.zip"],
    strip_prefix = "protobuf-74bf45f379b35e1d103940f35d7a04545b0235d4",
)

load("//:third_party.bzl", "third_party_dependencies")

third_party_dependencies()

load("@core_server_build_tools//:third_party.bzl", "managed_third_party_dependencies")

managed_third_party_dependencies()

rules_docker_version = "4d49182a85c745065e621c145238c5e9420ed91b"
rules_docker_version_sha256 = "34c67584a6dedb18c232ceccab822c1ee358b10c04f35588cd2c108c4b3af007"
http_archive(
    name = "io_bazel_rules_docker",
    sha256 = rules_docker_version_sha256,
    strip_prefix= "rules_docker-%s" % rules_docker_version,
    urls = ["https://github.com/bazelbuild/rules_docker/archive/%s.zip"%rules_docker_version],
)

load("//third_party/docker_images:docker_images.bzl", "docker_images")

docker_images()

git_repository(
    name="com_github_johnynek_bazel_jar_jar",
    remote = "git@github.com:johnynek/bazel_jar_jar.git",
    commit = "4005d99473e86120c55c878309456c644202ebec"
)

load("@com_github_johnynek_bazel_jar_jar//:jar_jar.bzl", "jar_jar_repositories")

jar_jar_repositories()



