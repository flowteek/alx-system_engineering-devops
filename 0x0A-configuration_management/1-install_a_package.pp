#!/usr/bin/pup
# Install a specific version of flask (2.1.0)
# # Ensure Python 3 and pip3 are installed
package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure => installed,
}

# Define a package resource for Flask with version 2.1.0
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
