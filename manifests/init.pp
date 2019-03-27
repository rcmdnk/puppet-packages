class packages(
  $repos = {},
  $rpms = {},
  $packages = [],
  $packages_add = []
){
  Class['packages::repo'] -> Class['packages::rpm'] -> Class['packages::install']
  class { 'packages::repo':
    repos => $repos,
  }
  class { 'packages::rpm':
    rpms => $rpms,
  }
  $packages_list = $packages + $packages_add
  class { 'packages::install':
    packages => $packages_list,
  }
}
