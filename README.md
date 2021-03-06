# CentOS 7 Minimal Packer Build Vagrant/VirtualBox
### Description
Use this template to create a minimal CentOS 7 Vagrant box for use with the VirtualBox provider.

Set user variables in `variables.json`.  Pass these variables to the build via the "-var-file=" flag. For example:
```command
$ packer build -var-file=variables.json template.json
```
See the packer documentation for more information.

### Download a version of this box using `vagrant`
```command
$ vagrant init mjp182/CentOS_7
```

#### Resources Used:
- [CentOS 7 Minimal ISO](http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1708.iso)
- [Red Hat Docs](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7-Beta/html/Installation_Guide/sect-kickstart-howto.html)
- [Used as a reference: Okumura Takahiro, packer-centos-7](https://github.com/tacahilo/packer-centos-7)
- [Packer User Variables](https://packer.io/docs/templates/user-variables.html)
- [Bento Packer Project](https://github.com/opscode/bento)
