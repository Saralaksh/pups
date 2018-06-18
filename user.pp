group { 'new group' :
  name => nokia-dev,
  ensure => present
}
user { 'new user' :
  name => build,
  ensure => present
}
host {'puppet-training.com':
  ip => '172.31.23.94'
}
