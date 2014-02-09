execute "add fish-shell/release-2 PPA" do
  command "add-apt-repository ppa:fish-shell/release-2"
end

execute "update apt" do
  command "apt-get update"
end

execute "install emacs" do
  command "apt-get -y install fish"
end

execute "set fish as default" do
  command "chsh -s /usr/bin/fish #{node[:fish][:user]}"
end
