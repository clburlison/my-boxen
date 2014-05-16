class projects::munkidev (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'munkidev':
		dir		=>	"${my_sourcedir}/mine/munki.dev",
		source	=>	'clburlison/munki.dev',
	}

}