class projects::luggage_local (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'luggage':
		dir		=>	"${my_sourcedir}/others/luggage",
		source	=>	'unixorn/luggage',
		exec    =>  'cd ${my_sourcedir}/others/luggage; make bootstrap_files'
		require =>  Package['PackageMaker']
	}
	
}