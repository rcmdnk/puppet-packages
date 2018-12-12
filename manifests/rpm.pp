class packages::rpm(
  $rpms = {},
){
  $rpms.each |$rpm, $attrs| {
    if has_key($attrs, "ensure") {
      $ensure =  $attrs["ensure"]
    } else {
      $ensure =  "installed"
    }
    if has_key($attrs, "provider") {
      $provider =  $attrs["provider"]
    } else {
      $provider =  "rpm"
    }
    package {$rpm:
      ensure => $ensure,
      source => $attrs["source"],
      provider => $provider
    }
  }
}
