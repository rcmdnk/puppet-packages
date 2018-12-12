class packages(
  $repos = {},
  $rpms = {},
  $packages = []
){
  Class['packages::repo'] -> Class['packages::rpm'] -> Class['packages::install']
  class { 'packages::repo':
    repos => $repos,
  }
  class { 'packages::rpm':
    rpms => $rpms,
  }
  class { 'packages::install':
    packages => $packages,
  }
}
