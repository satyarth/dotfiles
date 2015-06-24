DOTS=`pwd`

all: media \
	xorg	

remove-all: xorg-remove \
	media-remove

xorg:
	-ln -s ${DOTS}/.xinitrc ~/.xinitrc
	-ln -s ${DOTS}/.Xresources ~/.Xresources
	-ln -s ${DOTS}/herbstluftwm ~/.config/herbstluftwm

xorg-remove:
	-@rm -f ~/.xinitrc
	-@rm -f ~/.Xresources
	-@rm -rf ~/.config/herbstluftwm

media:
	-ln -s ${DOTS}/.ncmpcpp ~/.ncmpcpp


media-remove:
	-@rm -rf ~/.ncmpcpp
