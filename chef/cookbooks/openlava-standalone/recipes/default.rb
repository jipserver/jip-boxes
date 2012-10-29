["/tmp/openlava-2.0-206.1.x86_64.rpm"].each do |f| 
    cookbook_file f
end


## install the openlava package
package "openlava" do
    source "/tmp/openlava-2.0-206.1.x86_64.rpm"
    action :install
end

## copy config
cookbook_file "/opt/openlava-2.0/etc/lsf.cluster.openlava"

##  enable the service
# we start using executen because we have to load environment for the start
# script. The start script needs LSF_ENVDIR set 
service "openlava" do
    supports :status => true, :restart => true
    action [ :enable ]
end

execute "Start openlava sercice" do
    command ". /etc/profile.d/openlava.sh; service openlava start"
end

