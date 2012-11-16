class collectdweb::package {
  if $collectdweb::ensure == 'present' {
    $package_ensure = $collectdweb::auto_upgrade ? {
      true  => 'latest',
      false => 'installed',
    }
  } else {
    $package_ensure = 'purged'
  }

  package {$collectdweb::package:
    ensure          => $package_ensure,
  }
}
