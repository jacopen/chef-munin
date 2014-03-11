name             'munin'
maintainer       'Kazuto Kusama'
maintainer_email 'jacopen@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures munin'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe "munin", "setup master and node"
recipe "munin::master", "setup master"
recipe "munin::node", "setup node"
