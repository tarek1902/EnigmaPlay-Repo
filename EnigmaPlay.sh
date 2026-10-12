#!/bin/sh
set -e

BASE="https://raw.githubusercontent.com/tarek1902/EnigmaPlay-Repo/main"
IPK="enigma2-plugin-extensions-enigmaplay_v1.0_all.ipk"
DEB="enigma2-plugin-extensions-enigmaplay_v1.0_all.deb"

if command -v opkg >/dev/null 2>&1; then
    wget -qO "/tmp/$IPK" "$BASE/$IPK"
    opkg install --force-reinstall "/tmp/$IPK"

elif command -v dpkg >/dev/null 2>&1; then
    wget -qO "/tmp/$DEB" "$BASE/$DEB"
    dpkg -i "/tmp/$DEB"

else
    echo "Unsupported system: opkg/dpkg not found"
    exit 1
fi

echo "         UPLOADED BY TARK_HANFY    "

killall -9 enigma2

sleep 2;
--------------------------------------------------------------------------------------------------
