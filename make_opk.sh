#!/bin/sh

OPK_NAME=xrick.opk

echo ${OPK_NAME}

# create default.retrofw.desktop
cat > default.retrofw.desktop <<EOF
[Desktop Entry]
Name=xRick
Comment=Rick Dangerous port. An action platformer.
Exec=xrick
Terminal=false
Type=Application
StartupNotify=true
Icon=xrick
Categories=games;
EOF

# create opk
FLIST="xrick"
FLIST="${FLIST} default.retrofw.desktop"
FLIST="${FLIST} data.zip"
FLIST="${FLIST} xrick.png"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.retrofw.desktop
rm -f default.retrofw.desktop
