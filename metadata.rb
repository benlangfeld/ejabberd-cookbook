name             'ejabberd'
maintainer       'Mojo Lingo'
maintainer_email 'ops@mojolingo.com'
license          'Apache 2.0'
description      'Installs/Configures ejabberd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe 'ejabberd', 'Install ejabberd and configure'

depends 'apt', '~> 2.2'
depends 'yum-epel'

supports 'debian', '>= 7.1'
supports 'ubuntu', '>= 10.04'
%w{ redhat centos scientific amazon }.each do |os|
  supports os, '>= 6.4'
end
