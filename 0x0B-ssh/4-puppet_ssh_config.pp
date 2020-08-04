exec { 'cm':
  command  => 'echo "\tPasswordAuthentication no\n\tIdentityFile ~/.ssh/holberton" >> /etc/ssh/ssh_config',
  provider => 'shell',
}
