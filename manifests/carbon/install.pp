# Class: graphite::carbon::install just installes the pacakge with no
# managed configuration. Ensure installed only to prevent surprise upgrades.
class graphite::carbon::install {

  package{
    'python-carbon': ensure => present;
  }

  File {
    require => Package['python-carbon'],
  }

  file {
    '/opt/graphite/storage/whisper':
      owner   => 'www-data',
      group   => 'www-data',
  }

  file {
    '/opt/graphite/storage/log':
      owner   => 'www-data',
      group   => 'www-data',
  }

  # Some plugin caching thing
  file {
    '/opt/graphite/lib/twisted/plugins':
      group => 'www-data',
      mode  => 0775
  }

}
