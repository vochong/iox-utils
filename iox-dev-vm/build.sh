rm -rf *.box ~/.vagrant.d/boxes/opendaylight/ .vagrant; \
packer build -force -var-file=packer_vars.json centos.json;\
vagrant box add --force --name "opendaylight" opendaylight-3.0.0-centos-1503.box;\
vagrant destroy --force; vagrant up --provider=virtualbox
