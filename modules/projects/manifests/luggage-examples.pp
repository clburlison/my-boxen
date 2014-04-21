class projects::luggage-examples (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'luggage-examples':
		dir		=>	"${my_sourcedir}/others/luggage-examples",
		source	=>	'unixorn/luggage-examples',
	}
}