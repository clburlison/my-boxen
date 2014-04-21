class projects::meraki-systems-manager-config (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'meraki-systems-manager-config':
		dir		=>	"${my_sourcedir}/others/meraki-systems-manager-config",
		source	=>	'superann/meraki-systems-manager-config',
	}
}