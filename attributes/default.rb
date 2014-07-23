default['ejabberd']['jabber_domain'] = node['fqdn']
default['ejabberd']['auth_method'] = 'internal'

default['ejabberd']['ldap']['ldap_servers'] = node['fqdn']
default['ejabberd']['ldap']['ldap_encrypt'] = 'none'
default['ejabberd']['ldap']['ldap_port'] = '389'
default['ejabberd']['ldap']['ldap_rootdn'] = 'cn=admin,dc=example,dc=com'
default['ejabberd']['ldap']['ldap_password'] = 'password'
default['ejabberd']['ldap']['ldap_base'] = 'ou=people,dc=example,dc=com'
default['ejabberd']['ldap']['ldap_uids'] = '"uid", "%u"'