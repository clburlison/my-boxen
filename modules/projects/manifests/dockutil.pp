class projects::dockutil (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'dockutil':
		dir		=>	"${my_sourcedir}/others/dockutil",
		source	=>	'kcrawford/dockutil',
	}
}