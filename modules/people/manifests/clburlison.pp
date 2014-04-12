class people::clburlison{
    include people::clburlison::applications
    include people::clburlison::config
    include people::clburlison::loginitems
    include people::clburlison::params
	include people::clburlison::ssh_keys

	if !defined(File["/Users/${::luser}/git"]){
    	file {"/Users/${::luser}/git":
        	ensure => directory,
    }
}

