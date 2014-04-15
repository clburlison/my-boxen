class projects::aamporter (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
	boxen::project { 'aamporter':
		dir		=>	"${my_sourcedir}/work/aamporter",
		source	=>	'clburlison/aamporter',
	}
}