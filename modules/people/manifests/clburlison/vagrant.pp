class people::clburlison::vagrant (
	$my_homedir   = $::people::clburlison::params::my_homedir,
  	$my_sourcedir = $::people::clburlison::params::my_sourcedir,
  	$my_username  = $::people::clburlison::params::my_username
) {
  File {
    owner => $my_username,
    group => 'staff',
    mode  => '0644',
  }

  #################################
  # Vagrant VMWare Fusion License #
  #################################
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => "/Users/${::luser}/Dropbox/Config/User/vagrant.d/license-vagrant-vmware-fusion.lic",
  }
