name             'confd'
maintainer       'Robert Coleman'
maintainer_email 'github@robert.net.nz'
license          'MIT'
description      'Installs/Configures confd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{debian ubuntu}.each do |os|
  supports os
end

%w{ark}.each do |cookbook|
  depends cookbook
end
