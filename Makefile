vundle:
	sudo apt update && sudo apt install git
	git clone https://github.com/VundleVim/Vundle.vim.git \
	 	home/$(USER)/.vim/bundle/Vundle.vim

xmonad:
	sudo apt update && sudo apt install ghc libx11-dev \
		xmonad dmenu cabal-install
	sudo cabal install xmonad-extras
	sudo sed -i s/dmenu/"dmenu -b"/2 /usr/bin/dmenu_run
	cp layout_switch.sh /home/$(USER)/.config
	cp get_volume.sh /home/$(USER)/.config

ruby:
	sudo apt update && sudo apt install -y \
		software-properties-common gnupg2 ruby-full \
		sqlite3 libsqlite3-dev
	gpg2 --recv-keys \
		409B6B1796C275462A1703113804BB82D39DC0E3 \
		7D2BAF1CF37B13E2069D6956105BD0E739499BDB
	curl -sSL https://get.rvm.io | sudo bash -s stable
	sudo usermod -a -G rvm $(USER)
	source /etc/profile.d/rvm.sh
	echo "source /etc/profile.d/rvm.sh" >> /home/$(USER)/.bashrc
	sudo gem install rails
	sudo gem install bundler

install:
	cd apt && ./install.sh

check:
	deborphan > /tmp/rm_list.txt
	deborphan --guess-dev >> /tmp/rm_list.txt
	cat /tmp/rm_list.txt

rm:
	cat /tmp/rm_list.txt | sudo xargs apt-get -y remove purge
	rm /tmp/rm_list.txt
