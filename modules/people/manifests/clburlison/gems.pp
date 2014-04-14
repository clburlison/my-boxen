class people::clburlison::gems (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
	
	ruby::gem { 'bundler for 1.9.3':
		gem  => 'bundler',
		ruby => '1.9.3',
	}
	
}