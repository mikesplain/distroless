load(":dpkg.bzl", "dpkg_list", "dpkg_src")
load("@subpar//:subpar.bzl", "par_binary")


def package_manager_repositories():
  par_binary(
      name = "dpkg_parser",
      srcs = glob(["**/*.py"]),
      main = "dpkg_parser.py",
      visibility = ["//visibility:public"],
      deps = [
          ":parse_metadata",
          ":util",
      ],
  )

  py_library(
      name = "parse_metadata",
      srcs = ["parse_metadata.py"],
  )

  py_library(
      name = "util",
      srcs = ["util.py"],
  )

  py_test(
      name = "parse_metadata_test",
      size = "small",
      srcs = ["parse_metadata_test.py"],
      data = ["testdata/Packages.txt"],
      deps = [":parse_metadata"],
  )

  py_test(
      name = "util_test",
      size = "small",
      srcs = ["util_test.py"],
      data = ["testdata/checksum.txt"],
      deps = [":util"],
  )
