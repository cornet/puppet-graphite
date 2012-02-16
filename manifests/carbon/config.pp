# Class: graphite::carbon::config configures the carbon package
class graphite::carbon::config(
  $amqp          = 'False',
  $amqp_host     = 'localhost',
  $amqp_port     = '5672',
  $amqp_vhost    = '/',
  $amqp_user     = 'graphite',
  $amqp_pass     = '',
  $amqp_exchange = 'graphite'
) {

  File {
    require => Class['graphite::carbon::install'],
    owner   => 'root',
    group   => 'www-data',
    mode    => '0640',
  }

  file {
    '/opt/graphite/conf/carbon.conf':
      content => template('graphite/carbon.conf.erb')
  }

  file {
    '/opt/graphite/conf/storage-schemas.conf':
      content => template('graphite/storage-schemas.conf.erb')
  }
}
