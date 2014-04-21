class projects::backuprestore (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'backuprestore':
		dir		=>	"${my_sourcedir}/others/BackupRestore",
		source	=>	'rustymyers/BackupRestore',
	}
}