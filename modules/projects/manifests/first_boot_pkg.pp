class projects::first_boot_pkg (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'first-boot-pkg':
		dir		=>	"${my_sourcedir}/others/first-boot-pkg",
		source	=>	'grahamgilbert/first-boot-pkg',
	}
}