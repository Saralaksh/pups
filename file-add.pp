
file { '/opt/file1.txt':
  ensure => present
}

file { '/opt/file2.txt':
  ensure => present,
  owner => ec2-user
}

file { '/opt/file3.txt':
  ensure => present,
  owner => ec2-user,
  mode => '755'
}

file { '/opt/file4.txt':
  content => "Yes this is my first program and no it is not",
  ensure => present,
  owner => ec2-user,
  mode => '755'
}

file { '/home/ec2-user/sara':
  ensure => directory
}

file { '//home/ec2-user/sara/sara-link.txt':
  ensure => link,
  target => '/opt/file4.txt'
}
exec {'/bin/cat':
  logoutput => 'true',
  command => '/bin/cat /home/ec2-user/sara/sara-link.txt'
}
