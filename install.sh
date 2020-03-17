# Script for installing flutter.
if [ -d "$HOME/src" ]
then
	mkdir "$HOME/src"
fi
 git clone https://github.com/flutter/flutter.git -b stable $HOME/src/flutter


