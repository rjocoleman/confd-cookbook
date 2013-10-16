# download and 'install' confd
ark 'confd' do
  has_binaries ['confd']
  version node['confd']['version']
  url "https://github.com/kelseyhightower/confd/releases/download/v#{node['confd']['version']}/confd_#{node['confd']['version']}_linux_amd64.tar.gz"
  checksum node['confd']['sha256']
  strip_leading_dir false
  action :install
end

# directory for confd configs
directory "#{node['confd']['confdir']}/conf.d/" do
  recursive true
end

# directory for confd templates
directory "#{node['confd']['confdir']}/templates/" do
  recursive true
end

# config
template "#{node['confd']['confdir']}/confd.toml" do
  mode 0644
  variables('extra' => node['confd']['extra'])
end
