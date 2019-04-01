class packages::uninstall(
  $packages = []){
  package {$packages:
    ensure => absent,
  }
}
