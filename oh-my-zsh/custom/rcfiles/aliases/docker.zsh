drma () {
  docker rm $(docker ps -aq)
}
alias dlsa="docker ps -a"
alias dps="docker ps"
alias dpsa="docker ps -a"
function dc() {
  docker compose $*
}
alias dcps="docker-compose ps"
