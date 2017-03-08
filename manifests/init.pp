class sudo {

  $users  = hiera_array('users')
  $users.each |$u| {
  if file("sudo/${u}_sudo", '/dev/null') != '' {
    file { $u:
      ensure  => file,
      content => file("sudo/${u}_sudo", ),
      path    => "/etc/sudoers.d/${u}_sudo",
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      }
    }
  }
}
