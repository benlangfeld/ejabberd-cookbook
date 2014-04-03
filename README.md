# ejabberd cookbook

This Chef cookbook installs ejabberd from operating system packages and configures its basic settings. It is intended that this cookbook remain small and perform only installation tasks, with downstream cookbooks swapping out the config template to configure more specifically.

# Requirements

Tested on Ubuntu 10.04 / 12.04, Debian 7.1 and CentOS 6.4.

# Usage

Add `recipe[ejabberd]` to your node's run list

# Attributes

* `node['ejabberd']['jabber_domain']` - the domain on which to serve XMPP connections (default `node['fqdn']`)

# Recipes

* `ejabberd` - Fetches and installs ejabberd

# Author

[Ben Langfeld](@benlangfeld)
