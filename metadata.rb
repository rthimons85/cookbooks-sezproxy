name             'ezproxy'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures ezproxy'
long_description 'Installs/Configures ezproxy'
version          '0.1.0'
%w{apt}.each do |cb| 
  depends cb
end
