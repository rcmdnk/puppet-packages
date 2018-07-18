class install_packages(
  $packages = []){
  class { 'install_packages::install':
    packages => $packages,
  }
}
