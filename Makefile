xmonad:
	sudo apt update && sudo apt install ghc libx11-dev xmonad dmenu cabal-install
	sudo cabal install xmonad-extras
	sudo sed -i s/dmenu/"dmenu -b"/2 /usr/bin/dmenu_run
	cp layout_switch.sh /home/$(USER)/.config
	cp get_volume.sh /home/$(USER)/.config

install:
	cd apt && ./install.sh

check:
	deborphan > /tmp/rm_list.txt
	deborphan --guess-dev >> /tmp/rm_list.txt
	cat /tmp/rm_list.txt

rm:
	cat /tmp/rm_list.txt | sudo xargs apt-get -y remove purge
	rm /tmp/rm_list.txt
