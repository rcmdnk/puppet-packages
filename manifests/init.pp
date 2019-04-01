class packages(
  $repos = {},
  $rpms = {},
  $packages = [],
  $packages_add = [],
  $packages_uninstall = [],
  $packages_uninstall_add = []
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
  $packages_uninstall_list = $packages_uninstall + $packages_uninstall_add
  class { 'packages::uninstall':
    packages => $packages_uninstall_list,
  }
}
