function bundle-ag
  bundle show --paths | grep '/gems/' | xargs ag $argv
end
