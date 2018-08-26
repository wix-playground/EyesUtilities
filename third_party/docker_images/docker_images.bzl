load(
  "@io_bazel_rules_docker//container:container.bzl",
  "container_pull",
  container_repositories = "repositories"
)

def docker_images():
  container_repositories()
