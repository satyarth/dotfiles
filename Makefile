DOTS=`pwd`

all: xorg \
	shell \
	media

remove-all: xorg-rm \
	shell-rm \
	media-rm

headless: shell

headless-rm: shell-rm

xorg:
	-ln -s ${DOTS}/.xinitrc ~/.xinitrc
	-ln -s ${DOTS}/.Xresources ~/.Xresources
	-ln -s ${DOTS}/herbstluftwm ~/.config/herbstluftwm
	-ln -s ${DOTS}/sxhkd ~/.config/sxhkd
	-ln -s ${DOTS}/.vimperatorrc ~/.vimperatorrc

xorg-rm:
	-@rm -f ~/.xinitrc
	-@rm -f ~/.Xresources
	-@rm -rf ~/.config/herbstluftwm
	-@rm -rf ~/.config/sxhkd
	-@rm -f ~/.vimperatorrc

shell:
	-ln -s ${DOTS}/.zshrc ~/.zshrc
	-ln -s ${DOTS}/.bashrc ~/.bashrc
	-ln -s ${DOTS}/.aliases	~/.aliases

shell-rm:
	-@rm -f ~/.zshrc
	-@rm -f ~/.bashrc
	-@rm -f ~/.aliases

media:
	-ln -s ${DOTS}/.ncmpcpp ~/.ncmpcpp
	-ln -s ${DOTS}/mpd.conf	~/.config/mpd/
	-ln -s ${DOTS}/atom	~/.atom

media-rm:
	-@rm -rf ~/.ncmpcpp
	-@rm -rf ~/.atom
	-@rm -f ~/.config/mpd/mpd.conf
