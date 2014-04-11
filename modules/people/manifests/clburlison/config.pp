class people::clburlison::config {

  File {
    owner => $my_username,
    group => 'staff',
    mode  => '0644',
  }

  ###############
  # User Config #
  ###############


  ###################
  # Config Settings #
  ###################

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
