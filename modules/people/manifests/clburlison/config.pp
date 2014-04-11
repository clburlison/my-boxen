class people::clburlison::config (
  $my_homedir   = $people::clburlison::params::my_homedir,
  $my_sourcedir = $people::clburlison::params::my_sourcedir,
  $my_username  = $people::clburlison::params::my_username
) {

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

  property_list_key { 'Disable "Are you sure you want to open this?" Messages':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/com.apple.LaunchServices.plist",
    key        => 'LSQuarantine',
    value      => false,
    value_type => 'boolean',
  }

  file { 'LaunchServices Plist':
    ensure  => file,
    require => Property_list_key['Disable "Are you sure you want to open this?" Messages'],
    path    => "${my_homedir}/Library/Preferences/com.apple.LaunchServices.plist",
    mode    => '0600',
  }

  property_list_key { 'Disable Gatekeeper':
    ensure => present,
    path   => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
  }

  if ($::hostname == "011-adm-maccb") or ($::hostname == "boxen"){
	  $recovery_message = "Property of Birdville ISD, please contact Clayton Burlison if found. clayton.burlison@birdvilleschools.net or 817-547-3819."
	  osx::recovery_message { $recovery_message: }
          }
      }
  
}
