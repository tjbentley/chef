name             "newrelic"
maintainer       "Escape Studios"
maintainer_email "dev@escapestudios.com"
license          "MIT"
description      "Installs/Configures New Relic"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.5.3"

%w{ debian ubuntu redhat centos fedora scientific amazon windows smartos }.each do |os|
supports os
end

#depends "php"
#depends "python"
#depends "ms_dotnet4"

recipe "newrelic", "Adds the New Relic repository, installs & configures the New Relic server monitor package."
recipe "newrelic::repository", "Adds the New Relic repository."
recipe "newrelic::server-monitor", "Installs & configures the New Relic server monitor package."
#recipe "newrelic::php-agent", "Installs the New Relic PHP agent."
#recipe "newrelic::python-agent", "Installs the New Relic Python agent."
#recipe "newrelic::dotnet", "Installs New Relic .NET Agent"
