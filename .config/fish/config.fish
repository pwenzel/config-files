# omf default theme options
set -g theme_short_path yes

# Composer Global Binaries
set -g PATH $HOME/.composer/vendor/bin $PATH

# Streaming Audio Stations
# @example `news`, `classical`, `current`, `wefunk` 
source $HOME/.config/fish/streaming-audio.fish

# Akamai Debugger
# @example`akacurl http://www.any-akamai-hosted-domain.com
source $HOME/.config/fish/akamai-debugger.fish
