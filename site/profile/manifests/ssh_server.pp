class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDWS4XU37AA+kLjdn6hEpGI7MWQFJzttv822Q8v/efa3+2/ouXv57Mn+EpKXUOE0UGz8YNULSr6zylyWF1DyZmE8v1rUOpgdeNhgPI3eVvK2xn7B888Fqo4GBMOH7epFaYOTmX+xQdqw2NnYm68iQdLtrc1tgPoszKgLbAxNaW65T/uKZR44KhCPMglR9Q1hUdeINp3ao8VZMmVfoTZBU8S0dX3miMD3gRbrRfkuwBa2a7uY12IoHgSyKlRh8TAUUNzfHMiAF3hF5UAh/ms24nm9QT9OasbeuDnfDpFDNiMCdvb/V6hsqR4Ayp1ZM5jR9BkHHo+3xkbk/Q/ErRXEBt',
  }  
}
