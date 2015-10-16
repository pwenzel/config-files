# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Composer Global Binaries
set -g PATH $HOME/.composer/vendor/bin $PATH

# Make Homebrew and RBENV play nice in Fish Shell
# https://coderwall.com/p/jfj4rg/getting-fish-rbenv-homebrew-playing-nice-together
# https://github.com/oh-my-fish/plugin-rbenv
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin
set brew_rbenv "/usr/local/var/rbenv/shims"
set -gx PATH $homebrew $brew_rbenv $default_path
set -gx RBENV_ROOT /usr/local/var/rbenv

# Homebrew Github API Tokens (Avoids rate limiting)
# http://stackoverflow.com/questions/20130681/setting-github-api-token-for-homebrew
# https://github.com/settings/tokens
set -gx HOMEBREW_GITHUB_API_TOKEN changeme

# RBENV
# https://github.com/sstephenson/rbenv/issues/195
# Use `rbenv rehash` if new gems are installed
# http://stackoverflow.com/questions/20985512/bundler-not-found-using-fish-shell-w-rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# Pushover.net CLI Environment Variables
# https://www.npmjs.com/package/pushover-cli 
# @example `pushover "hello world"`
set -x PUSHOVER_TOKEN changeme
set -x PUSHOVER_USER changeme

# Streaming Audio Stations
# @example `news`, `classical`, `current`, `wefunk` 
source $HOME/.config/fish/streaming-audio.fish

# Akamai Debugger
# @example`akacurl http://www.any-akamai-hosted-domain.com
source $HOME/.config/fish/akamai-debugger.fish