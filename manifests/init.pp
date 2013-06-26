# Class: java
#
# This module manages java
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class java {
	$package = $osfamily ? {
		'Debian' => 'default-jdk',
		default  => 'java-1.6.0-openjdk',
	}
	package { "$package":
		ensure => installed
	}
}
