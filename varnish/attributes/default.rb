case platform
when "debian","ubuntu"
  set['varnish']['dir']     = "/etc/varnish"
  set['varnish']['default'] = "/etc/default/varnish"
end

default['varnish']['version'] = "2.1"

default['varnish']['start'] = 'yes'
default['varnish']['nfiles'] = 131072
default['varnish']['memlock'] = 82000
default['varnish']['instance'] = node['hostname']
default['varnish']['listen_address'] = ''
default['varnish']['listen_port'] = 6081
default['varnish']['vcl_conf'] = 'default.vcl'
default['varnish']['vcl_source'] = 'default.vcl.erb'
default['varnish']['vcl_cookbook'] = nil
default['varnish']['secret_file'] = '/etc/varnish/secret'
default['varnish']['admin_listen_address'] = '127.0.0.1'
default['varnish']['admin_listen_port'] = '6082'
default['varnish']['user'] = 'varnish'
default['varnish']['group'] = 'varnish'
default['varnish']['ttl'] = '120'
default['varnish']['min_threads'] ='5'
default['varnish']['max_threads'] = '500'
default['varnish']['thread_timeout'] = '300'
default['varnish']['storage'] = 'file'
default['varnish']['storage_file'] = '/var/lib/varnish/$INSTANCE/varnish_storage.bin'
default['varnish']['storage_size'] = '3G'

default['varnish']['backend_host'] = 'localhost'
default['varnish']['backend_port'] = '8080'


default['varnish']['backend_host1'] = '54.217.240.29'
default['varnish']['backend_host1_port']=80
default['varnish']['backend_host2'] = '54.217.216.23'
default['varnish']['backend_host2_port'] = 80
default['varnish']['backend_stale_grace_period'] = '6h'
default['varnish']['probe_timeout'] = '60ms'
default['varnish']['probe_url'] ='/'
default['varnish']['thread_pools'] ='2'