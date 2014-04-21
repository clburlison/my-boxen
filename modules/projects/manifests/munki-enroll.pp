class projects::munki-enroll (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'munki-enroll':
		dir		=>	"${my_sourcedir}/others/munki-enroll",
		source	=>	'edingc/munki-enroll',
	}
}