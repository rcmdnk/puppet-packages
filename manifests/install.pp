class install_packages::install(
  $packages = []){
  package {$packages:
    ensure => installed,
  }
}
