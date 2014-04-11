class people::clburlison::ssh_keys (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
	
	file { "/Users/${::luser}/.ssh/amazon_ac2.pem":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/amazon_ac2.pem",
        owner => "${::luser}",
        mode => '0600',
	}
    
	file { "/Users/${::luser}/.ssh/amazon_ac2.pem":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/amazon_ac2.pem",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/birdville_rsa":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/birdville_rsa",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/birdville_rsa.pub":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/birdville_rsa.pub",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/drobo_rsa":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/drobo_rsa",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/drobo_rsa.pub":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/drobo_rsa.pub",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/github_rsa":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/github_rsa",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/github_rsa.pub":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/amazon_ac2.pem",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh/config":
		source => "/Users/${::luser}/Dropbox/Config/User/ssh keys/config",
        owner => "${::luser}",
        mode => '0600',
	}
	
	file { "/Users/${::luser}/.ssh":
		ensure => directory,
	}
	
}