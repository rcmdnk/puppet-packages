class packages::install(
  $packages = []){
  $packages.each |String $p| {
    if ! defined(Package[$p]) {
      package{$p:
        ensure => installed,
      }                                                                                                                                    }                                                                                                                                    }
}
