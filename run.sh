#!/bin/bash


# Create tons of functions and run tons of stuff
# to make sure user has the required dependencies
install_brew() {
  case $(uname) in

    "Darwin")
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    ;;

    "Linux")
    ruby -e "$(wget -O- https://raw.github.com/Homebrew/linuxbrew/go/install)"
    ;;

    *) echo "Your OS is unrecognized"
    ;;

  esac
}

install_bundler() {
  if hash rvm 2>/dev/null; then
    sudo gem install bundler
  else
    gem install bundler
  fi
}

install_ngrok() {
  hash ngrok 2>/dev/null || { brew install ngrok; exit 1; }
}

hash brew 2>/dev/null || { install_brew; exit 1; }
hash rails 2>/dev/null || { install_bundler; exit 1; }
hash ngrok 2>/dev/null || { install_ngrok; exit 1; }

# Finally run
bundle install
rails s
osascript -e 'tell app "Terminal"
    do script "ngrok 3000"
end tell'
