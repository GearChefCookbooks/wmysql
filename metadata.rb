name             'wmysql'
maintainer       'Gary Leong'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures wmysql'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends "apt", "2.3.8"
depends "mysql"
provides "service[mysql_service]"




depends 'iptables', '= 1.1.0'
