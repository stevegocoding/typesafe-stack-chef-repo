execute "Update apt" do
  command "apt-get update"
end

# OS Dendencies
%w(git build-essential libssl-dev).each do |pkg|
  package pkg
end

# include_recipe 'java'
