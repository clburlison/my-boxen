class projects::recipeoverrides (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){

	boxen::project { 'RecipeOverrides':
		dir		=>	"/Users/${::luser}/Library/AutoPkg/RecipeOverrides",
		source	=>	'BirdvilleISD/RecipeOverrides',
		require => File["/Users/${::luser}/Library/AutoPkg/"],
	}

	if !defined(File["/Users/${::luser}/Library/AutoPkg/"]){
	    file {"/Users/${::luser}/Library/AutoPkg/":
	        ensure => directory,
	    }
	}
	
	file { "/Users/${::luser}/work/RecipeOverrides":
		ensure  => link,
		target  => "/Users/${::luser}/Library/AutoPkg/RecipeOverrides",
		require => File["/Users/${::luser}/Library/AutoPkg/"],
	}

}