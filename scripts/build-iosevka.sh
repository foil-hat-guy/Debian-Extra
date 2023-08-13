#!/bin/sh

mkdir -p ./$basename$fontdir
cp ./source/$basename-Bold.ttf ./$basename$fontdir/$basename-Bold.ttf
cp ./source/$basename-BoldItalic.ttf ./$basename$fontdir/$basename-BoldItalic.ttf
cp ./source/$basename-Italic.ttf ./$basename$fontdir/$basename-Italic.ttf
cp ./source/$basename-Regular.ttf ./$basename$fontdir/$basename-Regular.ttf

mkdir -p ./$basename/DEBIAN
touch ./$basename/DEBIAN/control

cat <<EOT >> ./$basename/DEBIAN/control
Package: $pkgname
Maintainer: Foil-hat-guy <dev@foilhatguy.casa> 
Priority: optional 
Essentional: no 
Architecture: all
Depends: iosevka-doc (= $pkgversion)
Section: fonts 
Homepage: https://www.nerdfonts.com/ 
Version: $pkgversion 
Installed-Size: $(du -sk ./$basename | cut -f 1) 
EOT
