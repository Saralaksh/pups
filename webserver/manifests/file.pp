class webserver::file {
file { "/var/www/html/index.html":
ensure => present,
content => "<h1> Welcome to Puppet class </h1>"
}
}
