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

  ###############
  # User Config #
  ###############
  # Shows ext hd, hd, mounted servers, & removal media on desktop
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::universal_access::ctrl_mod_zoom # enables zoom by scrolling while holding Control
  include osx::no_network_dsstores # disable creation of .DS_Store files on network shares

  # Stop Preview re-opening documents
  boxen::osx_defaults { 'Stop Preview re-opening documents':
	  ensure => present,
	  domain => 'com.apple.Preview',
	  key    => 'NSQuitAlwaysKeepsWindows',
	  value  => 'NO',
  }

  ###################
  # Config Settings #
  ###################
  include osx::global::expand_save_dialog
  
  if ($::hostname == "011-adm-maccb") or ($::hostname == "boxen"){
	  $recovery_message = "Property of Birdville ISD, please contact Clayton Burlison if found. clayton.burlison@birdvilleschools.net or 817-547-3819."
	  osx::recovery_message { $recovery_message: }
  }
  
  
  ###########################
  # License VMWare Fusion 6 #
  ###########################
  
  # file { "/Library/VMWare Fusion/license-fusion-60-e3-201303":
  #  	ensure  => present,
  #  	source	=> "/Users/${::luser}/Dropbox/Config/Preferences/System/Library/VMWare Fusion/license-fusion-60-e3-201303",
  #  	owner   => root,
  #  	group   => wheel,
  #    mode    => 0644,
  #  } 

}
