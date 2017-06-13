# Audio Streams
alias news="mpv https://common.publicradio.org/streams/nis.aac.m3u" # MPR News
alias current="mpv https://common.publicradio.org/streams/current.mp3.m3u" # The Current
alias classical="mpv https://common.publicradio.org/streams/cms.mp3.m3u" # Classical MPR
alias localcurrent="mpv https://common.publicradio.org/streams/localcurrent.mp3.m3u" # Local Current
alias heartland="mpv https://common.publicradio.org/streams/radioheartland.mp3.m3u" # MPR Radio Heartland
alias choral="mpv https://choral.stream.publicradio.org/choral.mp3.m3u" # Clasical MPR Choral
alias wefunk="mpv https://www.wefunkradio.com/play/shoutcast.pls" # WEFUNK Radio MP3 64K
alias sleepbot="mpv http://sleepbot.com/ambience/cgi/listen.cgi/listen.pls" # Sleepbot Environmental Broadcast 56K MP3
alias groovesalad="mpv https://somafm.com/groovesalad130.pls" # SomaFM Groove Salad iTunes AAC 128K
alias dronezone="mpv https://somafm.com/dronezone130.pls" # SomaFM Drone Zone iTunes AAC 128K
alias lush="mpv https://somafm.com/lush130.pls" # SomaFM Lush iTunes AAC 128K
alias sonicuniverse="mpv https://somafm.com/sonicuniverse.pls" # SomaFM Sonic Universe iTunes AAC 128K
alias digitalis="mpv https://somafm.com/digitalis.pls" # SomaFM Digitalis iTunes 128K
alias indiepop="mpv https://somafm.com/indiepop130.pls" # SomaFM Indie Pop Rocks 128K AAC
alias poptron="mpv https://somafm.com/poptron.pls" # SomaFM PopTron iTunes 128K
alias covers="mpv https://somafm.com/covers.pls" # SomaFM Covers iTunes 128K
alias underground80s="mpv https://somafm.com/u80s130.pls" # SomaFM Underground 80s iTunes 128K AAC
alias secretagent="mpv https://somafm.com/secretagent130.pls" # SomaFM Secret Agent iTunes 128K AAC
alias kfai="mpv https://kfai.org/sites/default/stream/kfai-live.pls" # KFAI 90.3 http://kfai.org/
alias reggaeton="mpv http://stream.abacast.net/playlist/sbsystems-wodafmaac-ib-64.m3u" # WODA-FM San Juan, PR http://reggaeton947.com
alias wksq="mpv http://stream.abacast.net/playlist/sbsystems-wskqfmaac-ib-64.m3u" # WKSQ-FM http://lamega.com

function stations
	echo "news";
	echo "current";
	echo "classical";
	echo "localcurrent";
	echo "heartland";
	echo "choral";
	echo "wefunk";
	echo "sleepbot";
	echo "groovesalad";
	echo "dronezone";
	echo "lush";
	echo "sonicuniverse";;
	echo "digitalis";
	echo "indiepop";
	echo "poptron";
	echo "covers";
	echo "underground80s";
	echo "secretagent";
	echo "kfai";
	echo "reggaeton";
	echo "wksq";
end
