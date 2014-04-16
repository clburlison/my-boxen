class projects::mathiasbynens_dotfiles (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'mathiasbynens_dotfiles':
		dir		=>	"${my_sourcedir}/others/mathiasbynens_dotfiles",
		source	=>	'mathiasbynens/dotfiles',
	}
}