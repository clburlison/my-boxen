class people::clburlison (
  $my_username  = $people::clburlison::params::my_username,
  $my_homedir   = $people::clburlison::params::my_homedir,
  $my_sourcedir = $people::clburlison::params::my_sourcedir,
) inherits people::clburlison::params {
	include people::clburlison::applications
	include people::clburlison::config
	include people::clburlison::dock
	include people::clburlison::gems
	include people::clburlison::git
	include people::clburlison::files
	include people::clburlison::loginitems
	include people::clburlison::params	
	include people::clburlison::ssh_keys
	include people::clburlison::vagrant
    include projects::all
}