# Class: graphite::carbon::service makes sure the carbon-cache service is
# running. Also creates and configures init script as not one supplied
# in the package.
class graphite::carbon::service {

  File {
    require => Class['graphite::carbon::config'],
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
  }

  file {
    '/etc/init.d/carbon-cache':
      source => 'puppet:///graphite/carbon-cache.init',
  }

  service {
    'carbon-cache':
      require   => File['/etc/init.d/carbon-cache'],
      enable    => true,
      ensure    => 'running',
  }

}
