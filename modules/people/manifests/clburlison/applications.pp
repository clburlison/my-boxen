class people::clburlison::applications {
  include autodmg
  include caffeine
  include chrome
  include colloquy
  include crashplan
  include dropbox
  include firefox
  include handbrake
  include sequel_pro
  include sourcetree
  include steam
  include teamviewer
  include textmate::textmate2::release
  #include textwrangler
  include vagrant
  include vlc
  include vmware_fusion
  
  package {'7zX':
	source   => '/Users/${::luser}/Dropbox/Config/Software/7xX/7zX_1.7.1.dmg',
	provider => 'appdmg',
  }
  
  package {'Adobe Flash':
	source   => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_12_osx_pkg.dmg',
	provider => 'pkgdmg',
  }
  
	#   package {'Android File Transfer':
	# provider => 'appdmg',
	# source   => 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg',
	#   }
  
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
  
  package {'Carbon Copy Cloner':
	source   => '/Users/${::luser}/Dropbox/Config/Software/CarbonCopyCloner/ccc-3.5.4.zip',
	provider => 'compressed_app',
  }
  
  package { 'lingonx':
    source   => "http://www.peterborgapps.com/downloads/LingonX.zip",
    provider => 'compressed_app',
  }
  
  package { 'MunkiAdmin':
    source   => 'https://github.com/hjuutilainen/munkiadmin/releases/download/v0.3.0/MunkiAdmin-0.3.0.dmg',
	provider => 'appdmg',
  }
  
  package { 'platypus':
    source   => "http://sveinbjorn.org/files/software/platypus.zip",
    provider => 'compressed_app',
  }

  package { 'Remote Desktop':
  	source	 => "/Users/${::luser}/Dropbox/Config/Software/RemoteDesktop/RemoteDesktop.dmg",
  	provider => 'appdmg',
  }
  
  package {'Textwrangler':
	source   => 'http://pine.barebones.com/files/TextWrangler_4.5.8.dmg',
	provider => 'appdmg',
  }
  
  package { 'Transmit':
	source      => 'http://www.panic.com/transmit/d/Transmit%204.3.2.zip',
	provider    => 'compressed_app',
  }
    
}