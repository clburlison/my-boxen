class projects::blog (
	$my_homedir   = $people::clburlison::params::my_homedir,
  	$my_sourcedir = $people::clburlison::params::my_sourcedir,
  	$my_username  = $people::clburlison::params::my_username
	){
	boxen::project { 'blog':
		dir		=>	"${my_sourcedir}/mine/blog",
		source	=>	'clburlison/blog',
	}
	
	
    file { "/Users/${::luser}/blog":
  		ensure  => link,
  		target  => "/Users/${::luser}/src/mine/blog",
    }
	
    file { "/Users/${::luser}/src/mine/blog/_posts":
  		ensure  => link,
  		target  => "/Users/${::luser}/src/mine/blog/source/_posts",
		require => Boxen::Project['blog']
    }
	
    file { "/Users/${::luser}/src/mine/blog/_images":
  		ensure  => link,
  		target  => "/Users/${::luser}/src/mine/blog/source/images/posts",
		require => Boxen::Project['blog']
    }
}