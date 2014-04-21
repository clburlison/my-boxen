class projects::iLife-repackaging (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'iLife-repackaging':
		dir		=>	"${my_sourcedir}/others/iLife-repackaging",
		source	=>	'MagerValp/iLife-repackaging',
	}
}