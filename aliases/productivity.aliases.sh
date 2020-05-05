# Create file by path i.e. it will create intermediate non-existing folders
function mktouch() {
  mkdir -p "$(dirname "$1")" && touch "$1"
}

# xdg-open
alias open="xdg-open"

# Yarn
alias y="yarn"

# Common scripts run with Yarn
alias yb="yarn build"
alias yc="yarn commit"
alias yl="yarn lint"
alias ys="yarn start"
alias yt="yarn test"

# Visual Studio Code
alias c="code"

# Gogh
alias gogh='echo "Visit the gallery : http://mayccoll.github.io/Gogh/." && bash -c "$(wget -qO- https://git.io/vQgMr)"'

# List all wifi networks
alias wifils='nmcli -f in-use,ssid,bssid,signal,bars dev wifi'

# Node
alias node=nodejs
