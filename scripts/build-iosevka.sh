#!/bin/sh

mkdir -p ./$basename$fontdir
cp ./source/$basename-Bold.ttf ./$basename$fontdir-Bold.ttf
cp ./source/$basename-BoldItalic.ttf ./$basename$fontdir-BoldItalic.ttf
cp ./source/$basename-Italic.ttf ./$basename$fontdir-Italic.ttf
cp ./source/$basename-Regular.ttf ./$basename$fontdir-Regular.ttf

mkdir -p ./$basename/DEBIAN
touch ./$basename/DEBIAN/control

cat <<EOT >> ./$basename/DEBIAN/control
Package: $pkgname
Maintainer: Foil-hat-guy <dev@foilhatguy.casa> 
Priority: optional 
Essentional: no 
Architecture: all 
Section: fonts 
Homepage: https://www.nerdfonts.com/ 
Version: $(echo $pkgversion | cut -d v -f 2) 
Installed-Size: $(du -sk ./$basename | cut -f 1) 
Description: Iosevka nerd font.
 This package contains regular, bold, italic and bold italic fonts.
EOT

if [ ! -z $1 ]
then
  echo ' '$1 >> ./$basename/DEBIAN/control
fi
