#Sky is the limit, let's bring that limit higher

exec { 'change':
  command => 'sed -i \'s/^ULIMIT=.*/ULIMIT="-n 4096"/g\' /etc/default/nginx',
  path    => '/bin/',
}

exec { 'restart nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}