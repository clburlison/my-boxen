class projects::scripts (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
	
	if !defined(File["/Users/${::luser}/src/others/scripts"]){
		file {"/Users/${::luser}/src/others/scripts":
		ensure => directory,
	    }
	}
	
	boxen::project { 'Ginja':
		dir		=> "${my_sourcedir}/others/scripts/ginja",
		source	=> 'Ginja/Admin_Scripts',
		require => File["/Users/${::luser}/src/others/scripts"],
	}
	
	boxen::project { 'grahamgilbert':
		dir		=> "${my_sourcedir}/others/scripts/grahamgilbert",
		source	=> 'grahamgilbert/macscripts',
		require => File["/Users/${::luser}/src/others/scripts"],
	}
	
	boxen::project { 'hjuutilainen':
		dir		=> "${my_sourcedir}/others/scripts/hjuutilainen",
		source	=> 'hjuutilainen/adminscripts',
		require => File["/Users/${::luser}/src/others/scripts"],
	}
		
	boxen::project { 'natewalck':
		dir		=> "${my_sourcedir}/others/scripts/natewalck",
		source	=> 'natewalck/Scripts',
		require => File["/Users/${::luser}/src/others/scripts"],
	}
	
	boxen::project { 'rtrouton':
		dir		=> "${my_sourcedir}/others/scripts/rtrouton",
		source	=> 'rtrouton/rtrouton_scripts',
		require => File["/Users/${::luser}/src/others/scripts"],
	}
}