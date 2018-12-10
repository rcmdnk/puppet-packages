# puppet-packages
Simple yum puppet module to install packages

## Example:

```yaml
packages::repos:
  wlcg-centos7:
    yumrepo:
      ensure: 'present'
      enabled: true
      descr: 'WLCG Repository'
      baseurl: 'http://linuxsoft.cern.ch/wlcg/centos7/$basearch'
      gpgcheck: true
      gpgkey: 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-wlcg'
      target: '/etc/yum.repos.d/wlcg-centos7.repo'
    gpgkey:
      path: /etc/pki/rpm-gpg/RPM-GPG-KEY-wlcg
      attributes:
        source: 'puppet:///files/worker/RPM-GPG-KEY-wlcg'

packages::packages:
  - HEP_OSlibs

```

GPGkey can be written directly:


```yaml
packages::repos:
    gpgkey:
      path: /etc/pki/rpm-gpg/RPM-GPG-KEY-wlcg
      attributes:
        content: |
          -----BEGIN PGP PUBLIC KEY BLOCK-----
          Version: GnuPG v1.4.5 (GNU/Linux)


          mQGiBFRCwXcRBACrjsIhhdpS7Nzjq0kG1puGxzjt/09nYAtJlcU6TGWoON0pYt5Q
          ...
          -----END PGP PUBLIC KEY BLOCK-----
```
