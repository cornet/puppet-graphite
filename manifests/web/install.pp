# Class: graphite::web::install just installes the pacakge with no
# managed configuration. Ensure installed only to prevent surprise upgrades.
class graphite::web::install {

  package{
    'python-graphite-web': ensure => present;
    'python-memcache':     ensure => present;
    'python-simplejson':   ensure => present;
    'python-mysqldb':      ensure => present;
  }

  File {
    require => Package['python-graphite-web'],
  }

  file {
    '/opt/graphite/storage':
      owner   => 'www-data',
      group   => 'www-data',
  }

  file {
    '/opt/graphite/storage/log/webapp':
      owner   => 'www-data',
      group   => 'www-data',
  }


}
