class projects::make_profile_pkg (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
        boxen::project { 'make_profile_pkg':
		dir		=>	"${my_sourcedir}/others/make-profile-pkg",
		source	=>	'timsutton/make-profile-pkg',
	}
    
}