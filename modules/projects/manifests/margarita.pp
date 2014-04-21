class projects::margarita (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'margarita':
		dir		=>	"${my_sourcedir}/others/margarita",
		source	=>	'jessepeterson/margarita',
	}
}