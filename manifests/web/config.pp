# Class: graphite::web::config configures the web package
class graphite::web::config(
  $smtp_server    = 'localhost',
  $memcache_hosts = [],
  $db_type        = 'mysql',
  $db_name        = 'graphite',
  $db_user        = 'graphite',
  $db_pass        = '',
  $db_host        = 'localhost',
  $db_port        = '3306'
){

  File {
    require => Class['graphite::web::install'],
    owner   => 'root',
    group   => 'www-data',
    mode    => '0640',
  }

  file {
    '/opt/graphite/conf/dashboard.conf':
      content => template('graphite/dashboard.conf.erb')
  }

  file {
    '/opt/graphite/conf/graphite.wsgi':
      mode    => '0750',
      content => template('graphite/graphite.wsgi.erb')
  }

  file {
    '/opt/graphite/webapp/graphite/local_settings.py':
      mode    => '0640',
      content => template('graphite/local_settings.py.erb')
  }
}
