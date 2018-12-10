class packages::repo(
  $repos = {},
){
  $repos.each |$repo, $attrs| {
    if has_key($attrs, "yumrepo") {
      yumrepo {$repo:
        * => $attrs["yumrepo"],
      }
    }

    if has_key($attrs, "gpgkey") {
      file {$attrs["gpgkey"]["path"]:
        * => $attrs["gpgkey"]["attrs"],
      }
    }
  }
}
