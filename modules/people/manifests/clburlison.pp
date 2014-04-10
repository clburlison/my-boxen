class people::clburlison (
  $my_username  = $people::glarizza::params::my_username,
  $my_homedir   = $people::glarizza::params::my_homedir,
  $my_sourcedir = $people::glarizza::params::my_sourcedir,
) inherits people::glarizza::params {
  ## Declare all subclasses
  include people::clburlison::applications
}