%w[unzip].each do |p|
 package p
end

gem_package "ruby-shadow" do
    action :install
end

user "jipuser" do
  comment "Jip User"
  shell "/bin/bash"
  password "CzKB.xmVoWqlI"
  home "/home/jipuser"
  supports :manage_home => true
end

user "jipserver" do
  comment "Jip Server user"
  shell "/bin/bash"
  password "CzKB.xmVoWqlI"
  home "/home/jipserver"
  supports :manage_home => true
end
