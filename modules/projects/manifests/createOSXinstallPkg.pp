class projects::createosxinstallpkg (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
		
	boxen::project { 'createosxinstallpkg':
		dir		=>	"${my_sourcedir}/others/createOSXinstallPkg",
		source	=>	'https://code.google.com/p/munki.installlionpkg/',
	}
}