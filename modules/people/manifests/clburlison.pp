class people::clburlison (
  $my_username  = $people::clburlison::params::my_username,
  $my_homedir   = $people::clburlison::params::my_homedir,
  $my_sourcedir = $people::clburlison::params::my_sourcedir,
) inherits people::clburlison::params {
    include people::clburlison::applications
    include people::clburlison::config
	include people::clburlison::dock
	include people::clburlison::gems
	include people::clburlison::git
    include people::clburlison::loginitems
    include people::clburlison::params	
	include people::clburlison::ssh_keys
    include projects::all
	
  
    if !defined(File["/Users/${::luser}/src/mine"]){
        file {"/Users/${::luser}/src/mine":
            ensure => directory,
        }
    }
	
    file { "/Users/${::luser}/mine":
  		ensure  => link,
  		target  => "/Users/${::luser}/src/mine/",
  		require => File["/Users/${::luser}/src/mine"]
    }
    
    if !defined(File["/Users/${::luser}/src/others"]){
        file {"/Users/${::luser}/src/others":
            ensure => directory,
        }
    }
    
    file { "/Users/${::luser}/others":
  		ensure  => link,
  		target  => "/Users/${::luser}/src/others/",
  		require => File["/Users/${::luser}/src/others"]
    }
	
    if !defined(File["/Users/${::luser}/src/work"]){
        file {"/Users/${::luser}/src/work":
            ensure => directory,
        }
    }
	
    file { "/Users/${::luser}/work":
  		ensure  => link,
  		target  => "/Users/${::luser}/src/work/",
  		require => File["/Users/${::luser}/src/work"]
    }
	
    file { "/Users/${::luser}/my-repo":
  		ensure  => link,
  		target  => "/opt/boxen/repo",
    }

}