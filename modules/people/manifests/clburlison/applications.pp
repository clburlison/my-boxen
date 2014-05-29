class people::clburlison::applications {
  include autodmg
  include caffeine
  include calibre
  include chrome
  include colloquy
  include crashplan
  # include dropbox
  include evernote
  include firefox
  include flux
  include handbrake
  # include istatmenus4
  include onepassword
  include sequel_pro
  include skype
  include sourcetree
  include spotify
  include steam
  include teamviewer
  include textmate::textmate2::release
  include textwrangler
  include tunnelblick
  # include utorrent
  include vagrant
  include virtualbox
  include vlc
  include vmware_fusion
  
  $homebrew_packages = [
    's3cmd',
    'curl',
    'zsh',
	'wget',
  ]

  ## Declare all Homebrew packages at once
  package { $homebrew_packages: }

  package {'2Do':
	source   => "/Users/${::luser}/Dropbox/Config/Software/2Do/2Do-1.5.2.dmg",
	provider => 'appdmg',
  }  
  
  package {'7zX':
	source   => "/Users/${::luser}/Dropbox/Config/Software/7xX/7zX_1.7.1.dmg",
	provider => 'appdmg',
  }
  
  package {'Adobe Flash':
	source   => 'http://fpdownload.macromedia.com/get/flashplayer/pdc/13.0.0.206/install_flash_player_osx.dmg',
	provider => 'pkgdmg',
  }
  
  /*package {'Android File Transfer':
	provider => 'appdmg',
	source   => 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg',
  }*/
  
  package { 'Angry IP Scanner':
    source   => "http://github.com/angryziber/ipscan/releases/download/3.2.3/ipscan-mac-3.2.3.zip",
    provider => 'compressed_app',
  }
  
  package { 'atMonitor':
    source   => "http://download.atpurpose.com/atMonitor/atMonitor.zip",
    provider => 'compressed_app',
  }
  
  package { 'batchmod':
    source   => "http://www.lagentesoft.com/resources/batchmod_163.zip",
    provider => 'compressed_app',
  }
  
  /* package {'Carbon Copy Cloner':
	source   => "/Users/${::luser}/Dropbox/Config/Software/CarbonCopyCloner/ccc-3.5.4.zip",
	provider => 'compressed_app',
  } */
  
  package { 'disk inventory x':
 	 source   => "/Users/${::luser}/Dropbox/Config/Software/DiskInventoryX/DIX1.0Universal.dmg",
 	 provider => 'appdmg',
  }
  
  package { 'Geektool':
    source   => "http://download.tynsoe.org/GeekTool-3.1.1-311.zip",
    provider => 'compressed_app',
  }
 
  package { 'lingonx':
    source   => "http://www.peterborgapps.com/downloads/LingonX.zip",
    provider => 'compressed_app',
  }
  
  package { 'Luggage':
    source   => "/Users/${::luser}/Dropbox/Config/Software/Luggage/luggage-20140516.dmg",
    provider => 'pkgdmg',
  }
  
  package { 'heroku-toolbelt':
    source   => "https://s3.amazonaws.com/assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg",
    provider => 'pkgdmg',
  }  
  
  file { "/usr/local/bin/packagemaker":
    ensure  => link,
    target  => "/Applications/PackageMaker.app/Contents/MacOS/PackageMaker",
	owner	=> 'root',
	group   => 'wheel',
	mode    => '0755',
    require => Package['Luggage', 'PackageMaker'],
  }
  
  package { 'MunkiAdmin':
    source   => 'https://github.com/hjuutilainen/munkiadmin/releases/download/v0.3.0/MunkiAdmin-0.3.0.dmg',
	provider => 'appdmg',
  }
  
  file { "/Applications/munki_repo.command":
   	ensure  => link,
   	source	=> "/Users/${::luser}/Dropbox/Config/User/Applications/munki_repo.command",
   	owner   => "${::luser}",
   	group   => admin,
    mode    => 0744,
   } 
  
  package { 'PackageMaker':
  source   => "/Users/${::luser}/Dropbox/Config/Software/PackageMaker/PackageMaker-3.0.6.dmg",
  provider => 'appdmg',
  }
  
  package {'Packages by Whitebox':
	source   => "/Users/${::luser}/Dropbox/Config/Software/Packages/Packages-1.1.1.dmg",
	provider => 'pkgdmg',
  }
  
  /*package { 'platypus':
    source   => "/Users/${::luser}/Dropbox/Config/Software/Platypus/platypus.zip",
    provider => 'compressed_app',
  }*/

  package { 'Remote Desktop':
  	source	 => "/Users/${::luser}/Dropbox/Config/Software/RemoteDesktop/RemoteDesktop.dmg",
  	provider => 'appdmg',
  }
  
  package { 'Remote Desktop Serial':
  	source	 => "/Users/${::luser}/Dropbox/Config/Software/RemoteDesktop/ARD_serial.dmg",
  	provider => 'pkgdmg',
  }
  
  package { 'Transmit':
	source      => 'http://www.panic.com/transmit/d/Transmit%204.3.2.zip',
	provider    => 'compressed_app',
  }

  package {'Quicktime 7':
	provider => 'pkgdmg',
	source   => 'http://support.apple.com/downloads/DL923/en_US/QuickTimePlayer7.6.6_SnowLeopard.dmg',
  }    
}