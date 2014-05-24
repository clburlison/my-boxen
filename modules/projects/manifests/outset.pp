class projects::outset (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'outset':
		dir		=>	"${my_sourcedir}/others/outset",
		source	=>	'chilcote/outset',
	}
}