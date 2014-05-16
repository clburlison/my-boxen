class projects::luggage (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'luggage':
		dir		=>	"${my_sourcedir}/others/luggage",
		source	=>	'unixorn/luggage',
		require =>  Package['PackageMaker'],
	}
	
	# this is handled manually with a my luggage-20140516.dmg (package) and the PackMaker stuff inside of applications.pp
	# exec { 'setup the Luggage':
	#     	command => "cd $HOME/src/others/luggage; sudo make bootstrap_files",
	#     	require => Boxen::Project['luggage']
	# }
}