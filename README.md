# ejabberd cookbook

This Chef cookbook installs ejabberd from operating system packages and configures its basic settings. It is intended that this cookbook remain small and perform only installation tasks, with downstream cookbooks swapping out the config template to configure more specifically.

# Requirements

Tested on Ubuntu 10.04 / 12.04, Debian 7.1 and CentOS 6.4 / 6.5.

# Usage

Add `recipe[ejabberd]` to your node's run list

# Attributes

* `node['ejabberd']['jabber_domain']` - the domain on which to serve XMPP connections (default `node['fqdn']`)
* `node['ejabberd']['auth_method']` - authentication method `ldap` or `internal` (default `internal`)

* `node['ejabberd']['ldap']['ldap_servers']` - (default `node['fqdn']`)
* `node['ejabberd']['ldap']['ldap_encrypt']` - (default `'none'`)
* `node['ejabberd']['ldap']['ldap_port']` - (default `'389'`)
* `node['ejabberd']['ldap']['ldap_rootdn']` - (default `'cn=admin,dc=example,dc=com'`)
* `node['ejabberd']['ldap']['ldap_password']` - (default `'password'`)
* `node['ejabberd']['ldap']['ldap_base']` - (default `'ou=people,dc=example,dc=com'`)
* `node['ejabberd']['ldap']['ldap_uids']` - (default `'"uid", "%u"'`)

# Recipes

* `ejabberd` - Fetches and installs ejabberd

# Author

[Ben Langfeld](@benlangfeld)
