class people::clburlison::dock {

    include dockutil

    dockutil::item { 'Chrome':
        item     => "/Applications/Google Chrome.app",
        label    => "Google Chrome",
        position => 1,
        action   => "add",
        require  => Class['chrome'],
    }
    
    dockutil::item { '2Do':
        item     => "/Applications/2Do.app",
        label    => "2Do",
        position => 2,
        action   => "add",
    }
	
    dockutil::item { 'Mail':
        item     => "/Applications/Mail.app",
        label    => "Mail",
        position => 3,
        action   => "add",
    }
	
    dockutil::item { 'Calendar':
        item     => "/Applications/Calendar.app",
        label    => "Calendar",
        position => 4,
        action   => "add",
    }
	
    dockutil::item { 'Contacts':
        item     => "/Applications/Contacts.app",
        label    => "Contacts",
        position => 5,
        action   => "add",
    }
	
    dockutil::item { 'Steam':
        item     => "/Applications/Steam.app",
        label    => "Steam",
        position => 6,
        action   => "add",
        require  => Class['steam'],
    }
	
    dockutil::item { 'Adobe Photoshop CS6':
        item     => "/Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app",
        label    => "Adobe Photoshop CS6",
        position => 7,
        action   => "add",
    }
	
    dockutil::item { 'Adobe Premiere Pro CS6':
        item     => "/Applications/Adobe Premeire Pro CS6/Adobe Premeire Pro CS6.app",
        label    => "Adobe Premeire Pro CS6",
        position => 8,
        action   => "add",
    }
	
    dockutil::item { 'Adobe Media Encoder CS6':
        item     => "/Applications/Adobe Media Encoder CS6/Adobe Media Encoder CS6.app",
        label    => "Adobe Media Encoder CS6",
        position => 9,
        action   => "add",
    }
	
    dockutil::item { 'Pages':
        item     => "/Applications/Pages.app",
        label    => "Pages",
        position => 10,
        action   => "add",
    }
	
    dockutil::item { 'Preview':
        item     => "/Applications/Preview.app",
        label    => "Preview",
        position => 11,
        action   => "add",
    }
	
    dockutil::item { 'iTunes':
        item     => "/Applications/iTunes.app",
        label    => "iTunes",
        position => 12,
        action   => "add",
    }
	
    dockutil::item { 'Spotify':
        item     => "/Applications/Spotify.app",
        label    => "Spotify",
        position => 13,
        action   => "add",
    }
	
    dockutil::item { 'VLC':
        item     => "/Applications/VLC.app",
        label    => "VLC",
        position => 14,
        action   => "add",
        require  => Class['vlc'],
    }
	
    dockutil::item { 'QuickTime Player 7':
        item     => "/Applications/Utilities/QuickTime Player 7.app",
        label    => "QuickTime Player 7",
        position => 15,
        action   => "add",
        require  => Class['textmate::textmate2::release'],
    }
	
    dockutil::item { 'TextWrangler':
        item     => "/Applications/TextWrangler.app",
        label    => "TextWrangler",
        position => 16,
        action   => "add",
    }
	
    dockutil::item { 'Textmate2':
        item     => "/Applications/Textmate.app",
        label    => "TextMate",
        position => 17,
        action   => "add",
        require  => Class['textmate::textmate2::release'],
    }
	
    dockutil::item { 'Microsoft Remote Desktop':
        item     => "/Applications/Microsoft Remote Desktop.app",
        label    => "Microsoft Remote Desktop",
        position => 18,
        action   => "add",
    }
	
    dockutil::item { 'Remote Desktop':
        item     => "/Applications/Remote Desktop.app",
        label    => "Remote Desktop",
        position => 19,
        action   => "add",
		require  => package['Remote Desktop']
    }
	
    dockutil::item { 'VMWare':
        item     => "/Applications/VMware Fusion.app",
        label    => "VMware Fusion",
        position => 20,
        action   => "add",
        require  => Class['vmware_fusion'],
    }
	
    dockutil::item { 'SourceTree':
        item     => "/Applications/SourceTree.app",
        label    => "SourceTree",
        position => 21,
        action   => "add",
    }
	
    dockutil::item { 'Sequel Pro':
        item     => "/Applications/Sequel Pro.app",
        label    => "Sequel Pro",
        position => 22,
        action   => "add",
    }
	
    dockutil::item { 'Transmit':
        item     => "/Applications/Transmit.app",
        label    => "Transmit",
        position => 23,
        action   => "add",
    }
	
    dockutil::item { 'Terminal':
        item     => "/Applications/Utilities/Terminal.app",
        label    => "Terminal",
        position => 24,
        action   => "add",
    }
    
	dockutil::item { 'Disk Utility':
        item     => "/Applications/Utilities/Disk Utility.app",
        label    => "Disk Utility",
        position => 25,
        action   => "add",
    }
   
    dockutil::item { 'Server':
        item     => "/Applications/Server.app",
        label    => "Server",
        position => 26,
        action   => "add",
    }

    dockutil::item { 'MunkiAdmin':
        item     => "/Applications/MunkiAdmin.app",
        label    => "MunkiAdmin",
        position => 27,
        action   => "add",
    }
    
    dockutil::item { 'Managed Software Center':
        item     => "/Applications/Managed Software Center.app",
        label    => "Managed Software Center",
        position => 28,
        action   => "add",
    }
    
    dockutil::item { '1Password 4':
        item     => "/Applications/1Password 4.app",
        label    => "1Password 4",
        position => 29,
        action   => "add",
    }
	
    dockutil::item { 'System Preferences':
        item     => "/Applications/Utilities/System Preferences.app",
        label    => "System Preferences",
        position => 30,
        action   => "add",
    }
        

    
    ## Remove the default crap    
    dockutil::item { 'Remove Launchpad':
        item   => "/Applications/Launchpad.app",
        label  => "Launchpad",
        action => "remove",
    }
	
    dockutil::item { 'Remove App Store':
        item   => "/Applications/App Store.app",
        label  => "App Store",
        action => "remove",
    }  
	 
    dockutil::item { 'Remove Mission Control':
        item   => "/Applications/Mission Control.app",
        label  => "Mission Control",
        action => "remove",
    }
    
    dockutil::item { 'Remove Safari':
        item   => "/Applications/Safari.app",
        label  => "Safari",
        action => "remove",
    }
    
    dockutil::item { 'Remove Reminders':
        item   => "/Applications/Reminders.app",
        label  => "Reminders",
        action => "remove",
    }
    
    dockutil::item { 'Remove Notes':
        item   => "/Applications/Notes.app",
        label  => "Notes",
        action => "remove",
    }
    
    dockutil::item { 'Remove Messages':
        item   => "/Applications/Messages.app",
        label  => "Messages",
        action => "remove",
    }
    
    dockutil::item { 'Remove FaceTime':
        item   => "/Applications/FaceTime.app",
        label  => "FaceTime",
        action => "remove",
    }
    
    dockutil::item { 'Remove Photo Booth':
        item   => "/Applications/Photo Booth.app",
        label  => "Photo Booth",
        action => "remove",
    }
        
    dockutil::item { 'Remove iPhoto':
        item   => "/Applications/iPhoto.app",
        label  => "iPhoto",
        action => "remove",
    }
    
    dockutil::item { 'Remove Maps':
        item   => "/Applications/Maps.app",
        label  => "Maps",
        action => "remove",
    }
    
    dockutil::item { 'Remove iBooks':
        item   => "/Applications/iBooks.app",
        label  => "iBooks",
        action => "remove",
    }
}