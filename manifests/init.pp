class packages(
  $repos = {},
  $repos_add = {},
  $rpms = {},
  $rpms_add = {},
  $packages = [],
  $packages_add = [],
  $packages_uninstall = [],
  $packages_uninstall_add = []
){
  Class['packages::repo'] -> Class['packages::rpm'] -> Class['packages::install']
  $repos_all = deep_merge($repos, $repos_add)
  class { 'packages::repo':
    repos => $repos_all,
  }
  $rpms_all = deep_merge($rpms, $rpms_add)
  class { 'packages::rpm':
    rpms => $rpms_all,
  }
  $packages_all = $packages + $packages_add
  class { 'packages::install':
    packages => $packages_all,
  }
  $packages_uninstall_all = $packages_uninstall + $packages_uninstall_add
  class { 'packages::uninstall':
    packages => $packages_uninstall_all,
  }
}
