class projects::munki-in-a-box (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'munki-in-a-box':
		dir		=>	"${my_sourcedir}/others/munki-in-a-box",
		source	=>	'tbridge/munki-in-a-box',
	}
}