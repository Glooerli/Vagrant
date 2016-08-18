# -*- mode: ruby -*-
# vi: set ft=ruby :

provisioned = File.exists?(File.join(__dir__, 'provisioned'))

Vagrant.configure(2) do |config|

  config.vm.box = 'bento/centos-7.1'
  config.vm.box_check_update = false
  config.vm.hostname = 'roobique'


  if provisioned
    config.vm.synced_folder '../', '/var/www', create: true, owner: 'nginx',  group: 'nginx', mount_options: ['dmode=775', 'fmode=775']
  else
    config.vm.synced_folder '../', '/var/www', create: true
  end

  config.vm.network :private_network, ip: '192.168.33.11'


  config.vm.provision :shell, path: 'bin/provision.sh', privileged: true
  config.vm.provision :shell, path: 'bin/boot.sh', privileged: true, run: :always

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end

end
