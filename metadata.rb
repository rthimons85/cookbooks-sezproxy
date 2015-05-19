name             'ezproxy'
maintainer       'Bob Thimons'
maintainer_email 'robert.thimons@asburyseminary.edu'
license          'Apache 2.0'
description      'Installs/Configures ezproxy'
long_description 'Installs/Configures ezproxy'
version          '0.1.0'
%w{apt}.each do |cb| 
  depends cb
end
