class collectdweb::install{
  file { "$collectdweb_dir":
    ensure  => directory,
    source  => "puppet:///modules/collectdweb",
    owner   => root,
    group   => root,
    mode    => 0555,
    purge   => true,
    recurse => true,
    force   => true,
  }
}