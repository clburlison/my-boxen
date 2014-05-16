class projects::luggage_local (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'luggage_local':
		dir		=>	"${my_sourcedir}/mine/luggage_local",
		source	=>	'clburlison/luggage_local',
		require => Boxen::Project['luggage']
	}
    
	file { "/usr/local/share/luggage/luggage.local":
        ensure  => link,
        target  => "${my_sourcedir}/mine/luggage_local/luggage.local",
		require => Boxen::Project['luggage_local'],
	}
	
}