class collectdweb::params {
  $ensure = 'present'
  $auto_upgrade = false
  case $::operatingsystem {
    'Debian': {
      $package = [ 'libjson-any-perl', 'libjson-perl', 'rrdtool',
        'perl-modules', 'librrds-perl', 'libhtml-parser-perl',
        'libregexp-common-perl', 'libconfig-general-perl' ]
      $collectdweb_dir = '/etc/collectd/collectdweb'
    }
    default: {
      fail("\"${module_name}\" is not supported on \"${::operatingsystem}\"")
    }
  }

}
