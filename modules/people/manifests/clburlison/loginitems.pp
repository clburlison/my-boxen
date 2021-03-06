class people::clburlison::loginitems {

	osx_login_item { 'Caffeine':
	   name => 'Caffeine',
	   path => '/Applications/Caffeine.app',
	   hidden => true,
	   require => Class['caffeine'],
	}

	# osx_login_item { 'CrashPlan Menu Bar':
	#    name => 'CrashPlan Menu Bar',
	#    path => "/Applications/CrashPlan.app/Contents/Resources/CrashPlan menu bar.app",
	#    hidden => false,
	#    require => Class['crashplan'],
	# }
		
	osx_login_item { 'Dropbox':
	   name => 'Dropbox',
	   path => '/Applications/Dropbox.app',
	   hidden => true,
	   # require => Class['dropbox'],
	}

	osx_login_item { 'Flux':
	   name => 'flux',
	   path => '/Applications/Flux.app',
	   hidden => false,
	   require => Class['flux'],
	}
	
	osx_login_item { 'GeekTool':
	   name => 'GeekTool',
	   path => "/Applications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app",
	   hidden => false,
	   require => Package['Geektool'],
	}
	
	osx_login_item { 'Tunnelblick':
	   name => 'Tunnelblick',
	   path => '/Applications/Tunnelblick.app',
	   hidden => true,
	   require => Class['tunnelblick'],
	}
			
}