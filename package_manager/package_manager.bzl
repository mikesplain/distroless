load(":dpkg.bzl", "dpkg_list", "dpkg_src")

def package_manager_repositories():
  native.http_file(
      name = "dpkg_parser",
      url = ('https://s3.amazonaws.com/splain-public/dpkg_parser.par'),
      executable = True,
      sha256 = "f9deb838db71fac20b7579fdd611405f96eff8d73d10e733f5a6e05a495c537d",
  )
