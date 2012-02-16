= puppet-graphite

This currently provides basic configuration of a graphite node.

Packages are built using this Rakefile: https://gist.github.com/1820876

Tested on Debian Squeeze only.

== Basic Usage
  include graphite::whisper
  include graphite::carbon
  include graphite::carbon::amqp # if you want amqp support
  include graphite::web

== Classes

graphite::carbon::config:

Gives the ability to specify amqp connection details:

  class {
    'graphite::carbon::config':
      amqp      => 'True',
      amqp_pass => 'password',
  }


graphite::web::config:

Allows you to specify mcache_hosts if required. Assumes you are using
something other than sqlite.

  class {
    'graphite::web::config':
      smtp_server    => 'localhost',
      memcache_hosts => ['127.0.0.1:11211'],
      db_type        => 'mysql',
      db_user        => 'graphite',
      db_pass        => 'password',
  }

