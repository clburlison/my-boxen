class projects::munkirepodev (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'munkirepodev':
		dir		=>	"${my_sourcedir}/mine/munki_repo.dev",
		source	=>	'clburlison/munki_repo.dev',
	}
}