class projects::profiles (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
	
	if !defined(File["/Users/${::luser}/src/others/profiles"]){
		file {"/Users/${::luser}/src/others/profiles":
		ensure => directory,
	    }
	}
		
	boxen::project { 'gregneagle':
		dir		=> "${my_sourcedir}/others/profiles/gregneagle",
		source	=> 'gregneagle/profiles',
		require => File["/Users/${::luser}/src/others/profiles"],
	}
	
	boxen::project { 'nmcspadden':
		dir		=> "${my_sourcedir}/others/profiles/nmcspadden",
		source	=> 'nmcspadden/Profiles',
		require => File["/Users/${::luser}/src/others/profiles"],
	}
}