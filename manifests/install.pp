class packages::install(
  $packages = [],){
  package {$packages:
    ensure => installed,
  }
}
