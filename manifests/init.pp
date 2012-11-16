class collectdweb (
  $ensure           = $collectdweb::params::ensure,
  $package          = $collectdweb::params::package,
  $auto_upgrade     = $collectdweb::params::auto_upgrade,
  $collectdweb_dir  = $collectdweb::params::collectdweb_dir,
) inherits collectdweb::params {
  class { 'collectdweb::package': }
  class { 'collectdweb::install': }
}