class people::clburlison{
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
    
    if !defined(File["/Users/${::luser}/src/others"]){
        file {"/Users/${::luser}/src/others":
            ensure => directory,
        }
    }
    
    if !defined(File["/Users/${::luser}/src/work"]){
        file {"/Users/${::luser}/src/work":
            ensure => directory,
        }
    }

}