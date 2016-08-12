function angular.run() {
  make run CMD=$(cat <<EOT
$@
EOT
)
}

function ng(){
  angular.run ng $@
}

function node(){
  angular.run node $@
}

function npm(){
  angular.run npm $@
}
