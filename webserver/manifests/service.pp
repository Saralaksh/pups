class webserver::service {
service {'httpd':
ensure => running
}
}
