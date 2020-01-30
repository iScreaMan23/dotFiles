[Penguin Producer][http://www.penguinproducer.com/Blog/2011/09/system-preparations/]
[JAMin][http://jamin.sourceforge.net/en/loudness.html]
[ARDOUR][http://ardour.org/]
[njconnect][https://sourceforge.net/projects/njconnect/]
[Alsa opensrc org][https://alsa.opensrc.org/Jack_and_Loopback_device_as_Alsa-to-Jack_bridge]

# JACK
	- jackd -d alsa --help
	- Run the Jack daemon with realtime priority using the first ALSA hardware card defined in /etc/mudles.conf: jackstart --realtime --driver=alsa
	-
# The pipeline
	- jack audio startup when computer starts (qjackctl maybe?)
	- need to write script to route individual applications using apulse
	- use apulse <application name> to spawn a mini pulse session
	- cleanup?

# TODO
	- BSPWM stuff (dashboard?)
	- sxhkd stuff
	- write script

# Audio sources
	- Firefox
	- Steam
	- RetroArch
	- OBS
	- Primary microphone
	- Music application
	- Video application
	- Discord
	- Other?

# Audio playback
	- Wired/wireless headset(s) (set up bluetooth?)
	- OBS
	- Discord
	- Firefox
	- Audio/Video recording software
	- Samsung speakers

Shoutcast/Icecast?
