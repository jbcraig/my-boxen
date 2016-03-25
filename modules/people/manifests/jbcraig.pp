class people::jbcraig (
  $my_username  = $people::jbcraig::params::my_username,
  $my_homedir   = $people::jbcraig::params::my_homedir,
  $my_sourcedir = $people::jbcraig::params::my_sourcedir,
) inherits people::jbcraig::params {
  ## Declare all subclasses
  include people::jbcraig::applications
  include people::jbcraig::repositories
  include people::jbcraig::config
  include people::jbcraig::vagrant
}
