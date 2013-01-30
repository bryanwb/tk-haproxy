name "tk-haproxy"
maintainer        "bryan w. berry"
maintainer_email  "bryan.berry@gmail.com"
license           "Apache 2.0"
description       "Installs and configures demo haproxy"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.1"

%w{ ark build-essential logrotate }.each {|ckbk| depends ckbk }

%w{ debian ubuntu redhat centos fedora}.each do |os|
  supports os
end
