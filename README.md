# confd-cookbook cookbook

Installs and configures [confd](https://github.com/kelseyhightower/confd)

# Requirements

* [etcd](https://github.com/coreos/etcd)
* `confd::service` currently depends on upstart.

# Usage

`confd::default` installs confd, an upstart script and enables this.
Default configuration values are set in `/etc/confd/confd.toml`

# Attributes

`node['confd']['version']` - the version of confd to download
`node['confd']['sha256']`- checksum of the above
`node['confd']['confdir']` - confd directory (default `/etc/confd`)
`node['confd']['interval']` - Polling inveral (default "600")
`node['confd']['prefix']` - prefix to poll (default "/")
`node['confd']['etcd_nodes']` - etcd nodes to watch (default 127.0.0.1:4001)
`node['confd']['client_cert']` - etcd client certificate (default nil)
`node['confd']['client_key']` - etcd client key (default nil)

`node['confd']['extra']` - arbitrary config (default nil)

# Recipes

`confd::default` - Meta for the `install` and `service` recipes.
`confd::install` - Installs confd and configures release, downloads from GitHub. Only Linux is supported currently.
`confd::service` - Created, enables and starts an upstart script.

# Author

Author:: Robert Coleman (<github@robert.net.nz>)
