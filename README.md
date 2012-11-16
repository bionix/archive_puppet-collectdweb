Puppet module for collectd-web
==============================

Collectd-web is a web-based front-end for RRD data collected 
by collectd and this puppet module helps you to install it.

!!! But the module don't install collectd or http-server 
packages for you !!!

For more information read the README file under files/README.rst
or look at the websites.

Thanks to Kenneth Belitzky and the commiter.

http://collectdweb.appspot.com/
https://github.com/httpdss/collectd-web

Basic usage
-----------

To install and configure rrdcached:

<pre>
	class {'collectdweb':}
</pre>

or using the parameterized class with more options:

<pre>
	class {'collectdweb':
		collectdweb_dir  => '/var/www/'
	}
</pre>

For all options see manifests/init.pp

