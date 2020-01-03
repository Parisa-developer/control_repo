node default{
file {'/root/README':
 ensure => file,
 content => "Hello Word!\n",
 owner => 'root',
 }
}
