class people::clburlison::config (
	$my_homedir   = $::people::clburlison::params::my_homedir,
  	$my_sourcedir = $::people::clburlison::params::my_sourcedir,
  	$my_username  = $::people::clburlison::params::my_username
) {
  File {
    owner => $my_username,
    group => 'staff',
    mode  => '0644',
  }

  ##########################
  # Defaults Configuration #
  ##########################
  # Shows ext hd, hd, mounted servers, & removal media on desktop
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::global::expand_save_dialog
  include osx::universal_access::ctrl_mod_zoom # enables zoom by scrolling while holding Control
  include osx::no_network_dsstores # disable creation of .DS_Store files on network shares

  # Stop Preview re-opening documents
  boxen::osx_defaults { 'Stop Preview re-opening documents':
	ensure => present,
	domain => 'com.apple.Preview',
	key    => 'NSQuitAlwaysKeepsWindows',
	value  => 'NO',
  }
  
  boxen::osx_defaults { 'Disk util debug menu':
	user    => $::boxen_user,
	domain	=> 'com.apple.DiskUtility',
	key		=> 'DUDebugMenuEnabled',
	value	=> 1,
  }
  
  boxen::osx_defaults { 'Use AirDrop over every interface':
    user   => $::boxen_user,
    key    => 'BrowseAllInterfaces',
    domain => 'com.apple.NetworkBrowser',
    value  => 1,
    notify => Exec['killall Finder'];
  }
  
  boxen::osx_defaults { 'Show full date in menu bar':
    user   => $::boxen_user,
    key    => 'DateFormat',
    domain => 'com.apple.menuextra.clock.plist',
    value  => 'EEE MMM d  h:mm a',
    notify => Exec['killall SystemUIServer'];
  }
  
  exec { 'killall SystemUIServer':
  	command => "/usr/bin/killall SystemUIServer; /usr/bin/killall -u $my_username cfprefsd",
  	
  }
  
  boxen::osx_defaults { 'Disable Gatekeeper':
    domain   => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
  }
  
  boxen::osx_defaults { 'Disable the "Are you sure you want to open this application?" dialog':
	key    => 'LSQuarantine',
  	domain => 'com.apple.LaunchServices',
  	value  => 'true',
  }
  
  boxen::osx_defaults { 'Copy text from QuickLook':
      ensure => present,
      domain => 'com.apple.finder',
      key    => 'QLEnableTextSelection',
      value  => 'YES',
  }
  
  boxen::osx_defaults { 'Finder Status Bar':
	 ensure	=> 	present,
	 domain	=>	'com.apple.finder',
	 key	=>	'ShowStatusBar',
	 value	=>	'YES',
  }
  
  boxen::osx_defaults {
      'Prevent Time Machine from prompting to use new hard drives as backup volume':
        ensure => present,
        key    => 'DoNotOfferNewDisksForBackup',
        domain => 'com.apple.TimeMachine',
        value  => 'true',
        type   => 'bool',
        user   => $::boxen_user;
  }
  
  boxen::osx_defaults { 'Show time connected in the VPN menubar item':
      domain => 'com.apple.networkConnect',
      key    => 'VPNShowTime',
      type   => 'bool',
      value  => 'true',
  }
  
  ##############
  # zsh config #
  ##############
  # download oh-my-zsh repo
  repository { 'oh-my-zsh':
	source => 'robbyrussell/oh-my-zsh',
	path   => "/Users/${::luser}/.oh-my-zsh",
    # ensure => latest,
   }
  
  file { "/Users/${::luser}/src/mine/oh-my-zsh":
	ensure  => link,
	target  => "/Users/${::luser}/.oh-my-zsh/",
	require => Repository['oh-my-zsh']
  }
  
  # Changes the default shell to the zsh from Homebrew. Uses osx_chsh from boxen/puppet-osx
  osx_chsh { $::luser:
	shell   => '/opt/boxen/homebrew/bin/zsh',
	require => Package['zsh'],
  }

  file_line { 'add zsh to /etc/shells':
	path    => '/etc/shells',
	line    => "${boxen::config::homebrewdir}/bin/zsh",
	require => Package['zsh'],
  }

  #####################
  # Setup my dotfiles #
  #####################
  # bootstrap.sh will need to be run manually. this is to make sure you don't accidentally overwrite files.
  repository { 'dotfiles':
	source => 'clburlison/dotfiles',
	path   => "/Users/${::luser}/src/mine/dotfiles",
  }
  
  # Can't have this file in the public.
  file { "/Users/${::luser}/.s3cfg":
     ensure  => present,
     source	=> "/Users/${::luser}/Dropbox/Config/User/.s3cfg",
   } 
 
  ################
  # Recovery MSG #
  ################
  include osx::global::expand_save_dialog
  
  if ($::hostname == "011-adm-maccb") or ($::hostname == "boxen"){
	  $recovery_message = "Property of Birdville ISD, please contact Clayton Burlison if found. clayton.burlison@birdvilleschools.net or 817-547-3819."
	  osx::recovery_message { $recovery_message: }
  }
  
  
  ###########################
  # License VMWare Fusion 6 #
  ###########################
  if !defined(File["/Library/Preferences/VMWare Fusion/"]){
      file {"/Library/Preferences/VMWare Fusion/":
          ensure => directory,
		  owner  => root,
		  group  => wheel,
      }
  }
  
  file { "/Library/Preferences/VMWare Fusion/license-fusion-60-e3-201303":
   	ensure  => present,
   	source	=> "/Users/${::luser}/Dropbox/Config/System/Library/Preferences/VMWare Fusion/license-fusion-60-e3-201303",
   	owner   => root,
   	group   => wheel,
    mode    => 0644,
	require => File["/Library/Preferences/VMWare Fusion/"]
   } 
   
  #################################
  # Add Tunnelblick Configuration #
  #################################
   if !defined(File["/Users/${::luser}/Library/Application Support/Tunnelblick/"]){
       file {"/Users/${::luser}/Library/Application Support/Tunnelblick/":
         ensure => directory,
	     owner   => $my_username,
	     group   => staff,
	     mode    => 0755,
        }
   } 
   
   file { "/Users/${::luser}/Library/Application Support/Tunnelblick/Configurations/":
    	ensure  => present,
    	source	=> "/Users/${::luser}/Dropbox/Config/User/Library/Application Support/Tunnelblick/Configurations/",
   	  	owner   => $my_username,
  	   	group   => staff,
  	   	mode    => 0755,
		recurse => true,
 		require => File["/Users/${::luser}/Library/Application Support/Tunnelblick/"]
    }

  ####################################
  # Suspicious Package for Quicklook #
  ####################################
		if !defined(File['/Library/QuickLook']){
			file { '/Library/QuickLook':
				ensure	=>	directory,
			}
		}
		
		file {'/Library/QuickLook/Suspicious Package.qlgenerator':
			ensure	=> present,
			source	=> 'puppet:///modules/people/clburlison/QuickLook/Suspicious Package.qlgenerator',
            owner   => root,
            group   => wheel,
            mode    => '0644',
			recurse => true,
		}
		
  ##################################
  # Color Scheme for TextWrangler #
  ##################################	
		if !defined(File["$my_homedir/Library/Application Support/TextWrangler/"]){
			file { "$my_homedir/Library/Application Support/TextWrangler/":
				ensure	=>	directory,
			}
		}
		
		file { "$my_homedir/Library/Application Support/TextWrangler/Color Schemes/":
			ensure	=> present,
			source	=> 'puppet:///modules/people/clburlison/TextWrangler/Color Schemes/',
			recurse => true,
		}
}
