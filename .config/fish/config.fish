set fish_greeting ""

# Include binaries from MAMP, local Ruby, and local Composer
# set PATH $PATH /Applications/MAMP/Library/bin/ /Applications/MAMP/bin/php/php5.2.17/bin /Applications/MAMP/bin/php/php5.3.6/bin /Applications/MAMP/bin/php/php5.4.4/bin
set PATH ~/.gem/ruby/2.0.0/bin ~/.composer/vendor/bin /Applications/MAMP/Library/bin $PATH

# http://mesmor.com/2012/03/18/akamai-pragma-debug-headers/
# https://gist.github.com/2710596
alias akacurl='curl -v -s -o /dev/null -H "accept-encoding: gzip" -H "Pragma: akamai-x-get-cache-key" -H "Pragma: akamai-x-cache-on" -H "Pragma: akamai-x-cache-remote-on" -H "Pragma: akamai-x-get-true-cache-key" ';

# Audio Streams
alias news="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/news.pls" # MPR News
alias current="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/the_current.pls" # The Current
alias classical="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/classical.pls" # Classical MPR
alias localcurrent="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/local.pls" # Local Current
alias heartland="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/radio_heartland.pls" # MPR Radio Heartland
alias wonderground="mplayer http://wondergroundstream2.publicradio.org/wonderground" # MPR Wonderground Windows Media
alias choral="mplayer -playlist http://choralstream1.publicradio.org/choral.m3u" # Clasical MPR Choral
alias wefunk="mplayer -playlist http://www.wefunkradio.com/play/shoutcast.pls" # WEFUNK Radio MP3 64K
alias sleepbot="mplayer -playlist http://sleepbot.com/ambience/cgi/listen.cgi/listen.pls" # Sleepbot Environmental Broadcast 56K MP3
alias groovesalad="mplayer -playlist http://somafm.com/groovesalad130.pls" # SomaFM Groove Salad iTunes AAC 128K
alias dronezone="mplayer -playlist http://somafm.com/dronezone130.pls" # SomaFM Drone Zone iTunes AAC 128K
alias lush="mplayer -playlist http://somafm.com/lush130.pls" # SomaFM Lush iTunes AAC 128K
alias sonicuniverse="mplayer -playlist http://somafm.com/sonicuniverse.pls" # SomaFM Sonic Universe iTunes AAC 128K
alias 480min="mplayer -playlist http://somafm.com/480min64.pls" # SomaFM 480 Minutes iTunes AAC Plus 64K
alias digitalis="mplayer -playlist http://somafm.com/digitalis.pls" # SomaFM Digitalis iTunes 128K
alias indiepop="mplayer -playlist http://somafm.com/indiepop130.pls" # SomaFM Indie Pop Rocks 128K AAC
alias poptron="mplayer -playlist http://somafm.com/poptron.pls" # SomaFM PopTron iTunes 128K
alias covers="mplayer -playlist http://somafm.com/covers.pls" # SomaFM Covers iTunes 128K
alias underground80s="mplayer -playlist http://somafm.com/u80s130.pls" # SomaFM Underground 80s iTunes 128K AAC
alias secretagent="mplayer -playlist http://somafm.com/secretagent130.pls" # SomaFM Secret Agent iTunes 128K AAC
alias wmcn="mplayer -playlist http://216.250.175.13:8000/listen.pls" # WMCN 91.7 - http://wmcn.tumblr.com/


# http://zogovic.com/post/37906589287/showing-git-branch-in-fish-shell-prompt
set fish_git_dirty_color red
set fish_git_not_dirty_color green

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $fish_git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $fish_git_not_dirty_color)$branch(set_color normal)
  end
end

function fish_prompt
  if test -d .git
    printf '%s@%s %s%s%s:%s> ' (whoami) (scutil --get ComputerName|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_branch)
  else
    printf '%s@%s %s%s%s> ' (whoami) (scutil --get ComputerName|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
  end
end
