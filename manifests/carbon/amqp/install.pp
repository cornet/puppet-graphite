# Class: graphite::carbon::amqp::install just installes the pacakge with no
# managed configuration. Ensure installed only to prevent surprise upgrades.
class graphite::carbon::amqp::install {

  package{
    'python-txamqp': ensure => present;
  }

}
