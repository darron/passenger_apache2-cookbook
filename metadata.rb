# encoding: utf-8
name             'passenger_apache2'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures Passenger for Apache2'
version          '0.2.0'
recipe           'passenger_apache2::default', 'Installs/configures Passenger for Apache2'

depends 'build-essential'
depends 'apt'
depends 'apache2'
