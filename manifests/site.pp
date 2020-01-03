node default{
file {'/root/README':
 ensure => file,
 content => "Hello Word!\n",
 owner => 'root',
 }
}

node 'master.puppet.vm' 
{
include role::master_server
}
