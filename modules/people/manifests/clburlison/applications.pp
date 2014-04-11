class people::clburlison::applications {
  include autodmg
  include caffeine
  include chrome
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
  
  package {'Adobe Flash':
	provider => 'pkgdmg',
	source   => 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_12_osx_pkg.dmg',
  }
  
  package { 'lingonx':
    source   => "http://www.peterborgapps.com/downloads/LingonX.zip",
    provider => compressed_app,
  }
  
  package { 'MunkiAdmin':
      provider => 'appdmg',
      source   => 'https://github.com/hjuutilainen/munkiadmin/releases/download/v0.3.0/MunkiAdmin-0.3.0.dmg',
  }

  package {'Textwrangler':
	provider => 'appdmg',
	source   => 'http://pine.barebones.com/files/TextWrangler_4.5.8.dmg',
  }
  
  package { 'Transmit':
	source      => 'http://www.panic.com/transmit/d/Transmit%204.3.2.zip',
	provider    => compressed_app,
  }
    
}