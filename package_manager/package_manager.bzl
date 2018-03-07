load(":dpkg.bzl", "dpkg_list", "dpkg_src")

def package_manager_repositories():
  native.http_file(
      name = "dpkg_parser",
      url = ('https://s3.amazonaws.com/splain-public/dpkg_parser.par'),
      executable = True,
      sha256 = "76f646257c78440e5464cebb8348b077810435303d8e6e6d7638d4e16c4b40a3",
  )
