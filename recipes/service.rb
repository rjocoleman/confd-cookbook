# create upstart script
template '/etc/init/confd.conf' do
  mode 0644
  variables('config' => node['confd']['args'])
end

# enable+start upstart script
service 'confd' do
  provider Chef::Provider::Service::Upstart
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end
