Vagrant.configure('2') do |config|
  config.vm.box = 'spond1'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box'
  config.vm.provision :shell, :path => "setup.sh"
  config.vm.provider :virtualbox do |vb|
    vb.name = "spond1"
  end
end
