class { 'redis':
  bind => '0.0.0.0';
}->

service { 'redis':
   enable => true,
}

# Demo purposes
class { 'postgresql::server':
  listen_addresses        => '*',
  ip_mask_allow_all_users => '0.0.0.0/0',
}

postgresql::server::db { 'guestbook':
  user     => 'guestbook',
  password => postgresql_password('guestbook', 'superpass'),
} ->

docker::run { 'guestbook':
  image => 'hub.askcharlie.de/guestbook',
  ports => ['80:80'],
  env   => [
    'REDIS_HOST="192.168.30.30"',
    'DATABASE_URL="postgres://guestbook:superpass@192.168.30.30/guestbook"'
  ],
  require => [Class['redis'], Class['postgresql::server']]
}

