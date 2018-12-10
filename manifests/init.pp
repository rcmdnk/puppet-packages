class packages(
  $repos = {},
  $packages = []){
  Class['packages::repo'] -> Class['packages::install']
  class { 'packages::repo':
    repos => $repos,
  }
  class { 'packages::install':
    packages => $packages,
  }
}
