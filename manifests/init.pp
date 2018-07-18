class packages(
  $packages = []){
  class { 'packages::install':
    packages => $packages,
  }
}
