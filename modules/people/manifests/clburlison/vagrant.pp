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
   if !defined(File["/Users/${::luser}/.vagrant.d/"]){
       file {"/Users/${::luser}/.vagrant.d/":
         ensure => directory,
        }
   } 
   
   file { "/Users/${::luser}/.vagrant.d/license-vagrant-vmware-fusion.lic":
    	ensure	=> present,
    	source	=> "/Users/${::luser}/Dropbox/Config/User/vagrant.d/license-vagrant-vmware-fusion.lic",
 		require	=> File["/Users/${::luser}/.vagrant.d/"],
		notify 	=> Exec['plugin-install'],
    }
	
  ########################################
  # Install Vagrant VMWare Fusion Plugin #
  ########################################
	exec { 'plugin-install':
		command => "vagrant plugin install vagrant-vmware-fusion",
		require	=> File["/Users/${::luser}/.vagrant.d/"],
		refreshonly => true,
	}

}
