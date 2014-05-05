class projects::munkiadmin (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'munkiadmin':
		dir		=>	"${my_sourcedir}/others/munkiadmin",
		source	=>	'hjuutilainen/munkiadmin',
	}
}