class ssl::cert{
	define files( $ensure = present ){
		file { "${title}-key" :
			path    => "/etc/ssl/${title}.key",
			ensure  => $ensure,
			owner   => 'root',
			group   => 'root',
			mode    => 0644,
			source => "puppet:///files/ssl/${title}.key",
		}		
		file { "${title}-crt" :
			path    => "/etc/ssl/${title}.crt",
			ensure  => $ensure,
			owner   => 'root',
			group   => 'root',
			mode    => 0644,
			source => "puppet:///files/ssl/${title}.crt",
		}
	}
}