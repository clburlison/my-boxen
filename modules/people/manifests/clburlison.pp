class people::clburlison (
  $my_username  = $people::clburlison::params::my_username,
  $my_homedir   = $people::clburlison::params::my_homedir,
  $my_sourcedir = $people::clburlison::params::my_sourcedir,
) inherits people::glarizza::params {
  ## Declare all subclasses
  include people::clburlison::applications
}