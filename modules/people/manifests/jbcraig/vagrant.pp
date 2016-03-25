class people::jbcraig::vagrant {
  require ::vagrant
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => 'puppet:///modules/people/vagrant-vmware-plugin-license.lic',
  }
  vagrant::plugin { 'vagrant-auto_network': }
  vagrant::plugin { 'vagrant-pe_build': }
  #vagrant::plugin { 'vagrant-oscar': }
  #vagrant::plugin { 'vagrant-login': }
  vagrant::plugin { 'vagrant-multiprovider-snap': }
  vagrant::plugin { 'vagrant-share': }

}
