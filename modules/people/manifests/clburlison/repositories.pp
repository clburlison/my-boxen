class people::clburlison::repositories (
  $my_sourcedir = $people::clburlison::params::my_sourcedir,
  $my_homedir   = $people::clburlison::params::my_homedir,
  $my_username  = $people::clburlison::params::my_username
) {

  ##############
  # Git config #
  ##############

  git::config::global{ 'user.name':
    value => 'Clayton Burlison',
  }

  git::config::global{ 'user.email':
    value => 'clburlison@gmail.com',
  }

  ################
  # Repositories #
  ################

  repository { "${my_sourcedir}/mine/blog":
    source => 'clburlison/blog',
  }
}
